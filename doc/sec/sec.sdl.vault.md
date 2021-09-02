# vault

[主页](https://www.vaultproject.io/)
| [docker](https://hub.docker.com/_/vault)
| [github](https://github.com/hashicorp/vault)
| [gitee.com](https://gitee.com/mirrors/vault)

<!-- sec\udesk.sec.kms.md -->

## 教程

[加密服务集成](https://learn.hashicorp.com/tutorials/vault/eaas-spring-demo?in=vault/app-integration)

[视频教程 | Introduction to HashiCorp Vault with Armon Dadgar](https://www.youtube.com/watch?v=VYfl-DpZ5wM)

[K8s集成 | 云原生安全-更安全的密文管理 Vault on ACK](https://zhuanlan.zhihu.com/p/101420781)

## vault 安装和使用
### 术语

**mlock:** 不允许把内存数据swap到硬盘

**启封：** 可以理解为重启服务需要用密钥，每次重启都需要
### vault 安全

[深入剖析HashiCorp Vault中的身份验证漏洞（上篇）](https://anquan.baidu.com/article/1191)

### vault 服务 开发模式

**当前安全版本：** 1.7.3

下载页面：https://www.vaultproject.io/downloads

<https://learn.hashicorp.com/tutorials/vault/getting-started-dev-server?in=vault/getting-started>

`vault server -dev`

会返回

```bash
# 直接写到客户端
export VAULT_ADDR='http://0.0.0.0:8200'
# Unseal Key 1saM6YkT1dcq4mEGUKlVLJoppaAqri7lcQMs1Ch6R8A=
# 用于启封，但好像这里用不到，也用不了
vault unseal 1saM6YkT1dcq4mEGUKlVLJoppaAqri7lcQMs1Ch6R8A=
# Root Token: s.XmpNPoi9sRhYtdKHaQhkHP6x
# 这个可以在启动时间加 VAULT_DEV_ROOT_TOKEN_ID=myroot 来指定，用这个来做token访问服务
export VAULT_TOKEN="myroot"
# 查看状态
vault status
# 一般 dev 状态是
Sealed false
```

术语：启封 在使用vault之前首先要对vault进行启封，才能对vault进行后续操作。使用上面生成的uneal-key，其实dev模式下默认是已经启封状态

启封操作见生产模式

### vault 生产模式

#### 1 生产模式需要先锁定共享内存片段

```bash
sudo setcap cap_ipc_lock=+ep $(readlink -f /home/ubuntu/vault/bin/vault)
# /home/ubuntu/vault/bin/vault 为vault应用的位置
```

[setcap详解](https://www.cnblogs.com/nf01/articles/10418141.html)
CAP_IPC_LOCK:允许锁定共享内存片段

<https://github.com/hashicorp/docker-vault/issues/53>

#### 2 以生产模式启动

https://learn.hashicorp.com/tutorials/vault/getting-started-deploy?in=vault/getting-started

```bash
mkdir -p vault-data
bin/vault server -config=config.hcl
cat config.hcl

storage "raft" {
  path    = "vault-data"
  node_id = "node1"
}

listener "tcp" {
  tls_disable = "true"
  address = "0.0.0.0:8200"
}

api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
```

#### 3 客户端

`vault` 程序即是服务端,也是客户端

```bash
export VAULT_ADDR='http://0.0.0.0:8200'
# 查看状态，看到是 Sealed true 密封状态
bin/vault status
Key                Value
---                -----
Seal Type          shamir
Initialized        false
Sealed             true

# 初始化
vault operator init
# 得到5个Unseal Key和一个RootToken
Unseal Key 1: CqMmd40ZvAelxgO+PX/umr+sVLJSzAO+jcQ/RZaPH1/H
Unseal Key 2: znxyKoscvtjlDcbZbvfi4SUz9BJtjAjDbtCLabQK4NYb
Unseal Key 3: 3N4Op4vE3KA+MzmXKQW8U0WnFPCVhNL7i7Ke1h6i1Ygp
Unseal Key 4: Kc21ISabTBAFNaIm4x+qAXyoJUtBR9Rr9nNpFXjoIkkm
Unseal Key 5: LQ1oZYdgWCYb2cncO7O4ShFSkI9sxZFwlBppve3/nZ3B

Initial Root Token: s.66aKZChC0vMNX1cOsWPyv1lE

# 启封
vault operator unseal
Unseal Key (will be hidden): 
# 将上面5个中的3个UnsealKey输入,完成启封操作，可以看到 Sealed false
Unseal Key (will be hidden): 
Key                     Value
---                     -----
Seal Type               shamir
Initialized             true
Sealed                  false

# 客户端连接
bin/vault status
Key                     Value
---                     -----
Seal Type               shamir
Initialized             true
Sealed                  false
...

```

#### 4 客户端操作 kv

执行

```bash
bin/vault kv put secret/hello foo=world
# * preflight capability check returned 403, please ensure client's policies grant access to path "secret/hello/"
```

这是因为没有密钥引擎`Secrets Engines`,dev模式会默认激活一个 /secret 的 kv-v2 密钥引擎

**Secrets engines** are components which store, generate, or encrypt data. Secrets engines are incredibly flexible, so it is easiest to think about them in terms of their function. Secrets engines are provided some set of data, they take some action on that data, and they return a result.

**密钥引擎** 是用于存储、生成或加密数据的组件。密钥引擎非常易于扩展，从他们名字上也很容易知道他们的功能。

```bash
# 查看已
bin/vault secrets list
Path          Type         Accessor              Description
----          ----         --------              -----------
cubbyhole/    cubbyhole    cubbyhole_95af5399    per-token private secret storage
identity/     identity     identity_29e4f5cb     identity store
sys/          system       system_e7f9df67       system endpoints used for control, policy and debugging
# 把目录 /kv 设置为 kv 密钥引擎
bin/vault secrets enable -path=kv kv-v2
bin/vault kv put kv/main_mysql host=localhost username=my-app-user password=my-app-pwd
bin/vault kv get kv/main_mysql
bin/vault kv get --format=json kv/main_mysql
# 返回 OK
```

### vault 存储于 Mysql

```sql
create database vault default character set utf8mb4 collate utf8mb4_unicode_ci;
```
https://www.vaultproject.io/docs/configuration/storage/mysql

```hcl
storage "mysql" {
  address = ""
  username = "root"
  password = "udesk321456"
  database = "vault"
}
```

### vault UI模式

参考：<https://learn.hashicorp.com/tutorials/vault/getting-started-intro-ui?in=vault/getting-started-ui>

启用UI组件

`config.hcl`
```bash
ui = true
```

重启服务

http://192.168.56.140:8200/ui

启封：如果vault服务重启，那么需要进行启封才能放下

TIPS： 如果出现 `ERROR`:

`Authentication failed: local node not active but active cluster node not found`

这是初始化没有完成造成的，等一下就好了

TIPS：用root登录，是不保存的，关闭和刷新都需要重新输入

### vault 客户端使用

https://learn.hashicorp.com/tutorials/vault/getting-started-first-secret?in=vault/getting-started

```bash
# 写值 
bin/vault kv put secret/hello foo=world
bin/vault kv put secret/hello foo=world excited=yes
bin/vault kv put secret/main_mysql host=localhost username=my-app-user password=my-app-pwd

# 取值 
vault kv get secret/hello
vault kv get -field=excited secret/hello
vault kv get -format=json secret/hello
vault kv get -format=json secret/hello | jq -r .data.data.excited
# 删除 ？什么删除后，metadata "destroyed": false, 不是应该是true吗？
vault kv delete secret/hello
```

[jq](https://github.com/stedolan/jq)

### vault api 访问

可以使用curl访问

[密钥管理服务Vault部署与应用介绍](https://www.secrss.com/articles/11755)

```bash
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_ADDR='http://192.168.56.140:8200'
export VAULT_TOKEN='s.sY7ICdNGJrF0TokvIjquAv1B'

curl -H "X-Vault-Token: $VAULT_TOKEN" -X GET http://192.168.56.140:8200/v1/kv/data/main_mysql
curl -H "X-Vault-Token: $VAULT_TOKEN" -X GET http://192.168.56.140:8200/v1/kv/data/main_mysql?version=1
```

### 生产部署

如果报　mlock 问题：

https://www.vaultproject.io/docs/configuration#disable_mlock

```bash
sudo setcap cap_ipc_lock=+ep $(readlink -f /home/ubuntu/vault/bin/vault)
./vault server -config=config.hcl
```

Error initializing core: Failed to lock memory: cannot allocate memory #53
https://github.com/hashicorp/docker-vault/issues/53

https://learn.hashicorp.com/tutorials/vault/getting-started-deploy

```bash
export VAULT_ADDR='http://127.0.0.1:8200'
$ vault operator init
$ vault operator unseal

Unseal Key 1: Ak0I4OOacKcIQXXJzEgtVkypkJ2hWKfZYuBbblExESR/
Unseal Key 2: A03rOoeMRXW0e8CF8OUIo0u3xEVv0E+YMRlWBeRgBzdL
Unseal Key 3: R8cKLBDCdEjxidmwEt494j/Cc6t1LBVPnv+nw9aWQ2Kh
Unseal Key 4: AGZj5hxbfq/uTIpnwv6IRxjBbcfj5njphTCFwMLNtI3N
Unseal Key 5: TQ27lsP8rtNnMuGzIBJLQEUstOTGSIGHMecQv2+HfpHG

Initial Root Token: s.atat1HUoJfZFHe7tVdcv1IMz

./vault auth enable -output-curl-string approle

```bash
curl \
    --header "X-Vault-Token: s.atat1HUoJfZFHe7tVdcv1IMz" \
    --request POST \
    --data '{ "type":"kv-v2" }' \
    http://127.0.0.1:8200/v1/sys/mounts/secret


curl http://127.0.0.1:8200/v1/sys/init


curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data '{ "type":"kv-v2" }' \
    http://127.0.0.1:8200/v1/sys/mounts/secret

curl \
    -H "X-Vault-Token: $VAULT_TOKEN" \
    -X GET \
    http://192.168.56.140:8200/v1/kv/data/main_mysql
    http://192.168.56.140:8200/v1/kv/metadata/?list=true

    Request URL: http://192.168.56.140:8200/v1/kv/metadata/main_mysql
    Request URL: http://192.168.56.140:8200/v1/kv/data/main_mysql?version=1
```

## java client

以下MYsql信息为列

```yml
host: 192.168.56.140
username: myapp-user
password: myapp-password
```


```xml
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>
```

```java
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect

  @Autowired
  private UserRepository repo;
  
  @GetMapping("/users")
  public String listAll() {
    List<User> listUsers = repo.findAll();
    JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		for (User user : listUsers) {
			JSONObject formDetailsJson = new JSONObject();
			formDetailsJson.put("id", user.getId());
			formDetailsJson.put("fullname", user.getFullname());
			formDetailsJson.put("email", user.getEmail());
			jsonArray.put(formDetailsJson);
		}
		responseDetailsJson.put("code", 200);
		responseDetailsJson.put("users", jsonArray);
		return responseDetailsJson.toString();
  }
```

```sql
CREATE TABLE `users` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`fullname` VARCHAR(225) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`email` VARCHAR(225) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`password` VARCHAR(225) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`username` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_bin'
ENGINE=InnoDB;

ALTER TABLE `users`
	CHANGE COLUMN `id` `id` INT(10) NOT NULL AUTO_INCREMENT FIRST;
```

```java
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
//    private String username;
    private String email;
    private String password;
}

```

### mysql+mybatis+spring

#### spring + mysql

https://www.codejava.net/frameworks/spring-boot/connect-to-mysql-database-examples


[mybatis-plus思维导图，让mybatis-plus不再难懂](https://bbs.huaweicloud.com/blogs/218425)
> mybatis-plus 内置SQL注入剥离器

[开源项目spring-shiro-training思维导图，让项目不再难懂](https://cloud.tencent.com/developer/article/1062586)

[MyBatis思维导图](https://www.processon.com/view/60346a4b6376896cd6ec03ac#map)

[mybatis思维导图整理](https://developer.aliyun.com/article/659669)

#### spring vault

[spring-vault](https://docs.spring.io/spring-vault/docs/2.3.1/reference/html/)

https://cloud.spring.io/spring-cloud-vault/reference/html/

https://cloud.spring.io/spring-cloud-config/reference/html/

https://spring.io/guides/gs/vault-config/

```bash
$ export export VAULT_TOKEN="00000000-0000-0000-0000-000000000000"
$ export VAULT_ADDR="http://127.0.0.1:8200"
$ vault kv put secret/gs-vault-config example.username=demouser example.password=demopassword
$ vault kv put secret/gs-vault-config/cloud example.username=clouduser example.password=cloudpassword
```

https://spring.io/projects/spring-vault#samples

https://github.com/mp911de/spring-cloud-vault-config-samples

### spring cloud vault

在项目中加入：
```xml
    <dependency>
			<groupId>org.springframework.cloud</groupId>
			<artifactId>spring-cloud-starter-vault-config</artifactId>
			<version>3.0.3</version>
		</dependency>
		<dependency>
			<groupId>org.springframework.cloud</groupId>
			<artifactId>spring-cloud-starter-bootstrap</artifactId>
			<version>3.0.3</version>
		</dependency>
```

配置bootstrap.properties

```bash
spring.cloud.vault.uri=http://127.0.0.1:8200
spring.cloud.vault.token=s.1N0Kc9ETKql2tRuf0xlcxKTM
spring.cloud.vault.generic.enabled=true
spring.cloud.vault.application-name=VaultDemo
# 注意，很多教程写成 vault.generic.application-name,起码在3.0.3里是错的
# 必须用 spring.vault.application-name 或 spring.application.name=VaultDemo
```
应该参考这篇文章： https://www.baeldung.com/spring-cloud-vault

In general, migrating to Vault is a very simple process: just add the required libraries and add a few extra configuration properties to our project and we should be good to go. No code changes are required!

通常，迁移到vault过程很简单：只要引入库并添加几个多余的配置到项目中即可，**不需要改代码**

This is possible because it acts as a high priority PropertySource registered in the current Environment.

之所以能这样，因为它运行在高优先级PropertySource，并注册到当前环境。

As such, Spring will use it whenever a property is required. Examples include DataSource properties, ConfigurationProperties, and so on.

这样，Spring 可以在任何时间使用他的属性，示例包括DataSource属性、ConfigurationProperties等

https://www.techgeeknext.com/spring-boot/spring-cloud-vault

https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-starter-vault-config

```xml
    <dependency>
			<groupId>org.springframework.cloud</groupId>
			<artifactId>spring-cloud-starter-vault-config</artifactId>
		</dependency>
```

```bash
vault secrets enable -path=secret/ kv
vault kv put secret/DemoMysqlVaultApplication dbusername=root
vault kv put secret/DemoMysqlVaultApplication dbpassword=xxx
```

TIP：如果在UI上手动创建，然后再删除，再用API创建一个名字一样的，好像UI上看到的就会出错，需要刷新

ERROR：
找不到` org.springframework.cloud.vault.config.VaultConfiguration.createSslConfiguration
`
因为 spring-cloud-starter-vault-config 需要 spring-vault-core 2.3.2 以上

还是空的,要装 `spring-cloud-starter-bootstrap`
```xml
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-bootstrap</artifactId>
</dependency>
```

https://cloud.spring.io/spring-cloud-static/spring-cloud-vault/2.1.0.RELEASE/multi/multi_vault.config.backends.database-backends.html

[Spring Boot 核心配置文件 bootstrap & application 详解](https://segmentfault.com/a/1190000015741797)
> - boostrap 由父 ApplicationContext 加载，比 applicaton 优先加载
> - boostrap 里面的属性不能被覆盖

一样的问题：
https://stackoverflow.com/questions/64994034/bootstrap-yml-configuration-not-processed-anymore-with-spring-cloud-2020-0/65009480#65009480

spring-cloud-starter-bootstrap

With Spring Boot 2.4, the bootstrap context initialization(bootstrap.yml, bootstrap.properties) of property sources is deprecated. Please refer below:
https://stackoverflow.com/a/65009480

他的例子： https://github.com/pavankjadda/HashiCorpVault-SpringCloud


`ERROR!`
2021-07-26 14:32:37.144  WARN 19532 --- [           main] LeaseEventPublisher$LoggingErrorListener : [RequestedSecret [path='secret/application', mode=ROTATE]] Lease [leaseId='null', leaseDuration=PT0S, renewable=false] I/O error on GET request for "https://localhost:8200/v1/secret/application": Unsupported or unrecognized SSL message; nested exception is javax.net.ssl.SSLException: Unsupported or unrecognized SSL message

`fixed:`
spring.cloud.vault.url=http://127.0.0.1:8200
应该是
spring.cloud.vault.uri=http://127.0.0.1:8200

## window

```powershell
.\vault.exe server -config=D:\dev\docker\docker-compose\vault\config.hcl
# 客户端
$Env:<variable-name> = "<new-value>"
$Env:PATH += ":/usr/local/temp"

$Env:VAULT_ADDR='http://127.0.0.1:8200'
$Env:VAULT_TOKEN='s.1N0Kc9ETKql2tRuf0xlcxKTM'

# TODO：好像这两个
# window 工具，和 linux的用法如：
vault write transit/encrypt/my-key plaintext=$(base64 <<< "my secret data")
base64 <<< "my secret data"
# 不太一样 bXkgc2VjcmV0IGRhdGEK
# https://www.base64encode.org/ 结果是
bXkgc2VjcmV0IGRhdGE=

echo "my secret data" | coreutils.exe base64
bXkgc2VjcmV0IGRhdGENCg==

# 这个是有回车的
echo 'bXkgc2VjcmV0IGRhdGENCg=='| base64 --decode
# 这个没有回车
echo 'bXkgc2VjcmV0IGRhdGE='| base64 --decode
# 这个也是有回车的，可能是\n 和 \r\n的差别
echo 'bXkgc2VjcmV0IGRhdGEK'| base64 --decode
```

### 其它应用的支持

jumpserver/apps/assets/backends/vault.py

### vault 数据库账号管理 mysql

+ 配置管理账号
+ 轮换管理账号
+ 创建数据库角色
+ 获取数据库角色用户


https://www.vaultproject.io/docs/secrets/databases
```bash
vault secrets enable database
vault write database/config/my-database \
    plugin_name="..." \
    connection_url="..." \
    allowed_roles="..." \
    username="..." \
    password="..."
```
It is highly recommended a user within the database is created specifically for Vault to use. 
This user will be used to manipulate dynamic and static users within the database. 
This user is called the "root" user within the documentation.

After configuring the root user, it is highly recommended you rotate that user's password such that the vault user is not accessible by any users other than Vault itself:
配置完成后，就建议轮换密码，不让vault外的别人再能用这个账号访问数据库
vault write -force database/rotate-root/my-database

When this is done, the password for the user specified in the previous step is no longer accessible. 
Because of this, it is highly recommended that a user is created specifically for Vault to use to manage database users.


https://www.vaultproject.io/docs/secrets/databases/mysql-maria

```bash
vault write database/config/my-mysql-database \
    plugin_name=mysql-database-plugin \
    connection_url="{{username}}:{{password}}@tcp(127.0.0.1:3306)/" \
    allowed_roles="my-role" \
    username="vaultuser" \
    password="vaultpass"
```

### vault 阿里密钥

+ 创建管理密码
+ 创建策略，对应阿里的自定义策略,权限策略管理里可以看到
+ 创建密钥，对应会生产一个用户并在用户下建一个AK
+ TODO：怎么删除账号

对应代码：https://github.com/hashicorp/vault-plugin-secrets-alicloud

https://www.vaultproject.io/docs/concepts/lease

All dynamic secrets in Vault are required to have a lease. Even if the data is meant to be valid for eternity, a lease is required to force the consumer to check in routinely.
所有vault中的动态密钥都有一个租期。即使data是明确一直存在，租期是强制要求消费者来定制登记用的。
vault的租期是用来通知客户端来重新获取的，并不是说租期到了，vault就会把key销毁，并创建新的

这里又好像在说会自动的清除 revoked
Revocation can happen manually via the API, via the vault lease revoke cli command, or automatically by Vault. 
When a lease is expired, Vault will automatically revoke that lease. 
When a token is revoked, Vault will revoke all leases that were created using that token.

注意这里说的是 vault 的 “后端”，其实是vault的接口规范，后端如ali的vault接口可以不处理 租约时长，但事实上，阿里是会处理，租约过期，如删除AK，但不会删除账号
The requested increment is completely advisory. 
The backend in charge of the secret can choose to completely ignore it. For most secrets, the backend does its best to respect the increment, but often limits it to ensure renewals every so often.

lease_id           alicloud/creds/oss-wei-vault-test2/r29LR1oOs0YZKtuVnfdZLAVr

vault lease renew $lease_id
vault lease revoke $lease_id

可以按前缀删除
vault lease revoke -prefix aws/

当被入侵发生时，可以快速把所有的ak删除掉

### 加密服务

https://www.vaultproject.io/api/secret/transit#ecdsa-p384

https://www.vaultproject.io/docs/secrets/transit#aes256-gcm96

```powershell
./vault write -f transit/keys/my-key

# https://www.base64encode.org/ "my secret data" => bXkgc2VjcmV0IGRhdGE=
./vault write transit/encrypt/my-key plaintext=bXkgc2VjcmV0IGRhdGE=

ciphertext     vault:v1:D0ebigzQw/vqS+bJmOedsW/GgMIUyOFYCVu7ajZsSjVoUX5cE+fPR3tg

# 解码出来的是 
./vault write transit/decrypt/my-key ciphertext=vault:v1:D0ebigzQw/vqS+bJmOedsW/GgMIUyOFYCVu7ajZsSjVoUX5cE+fPR3tg
plaintext    bXkgc2VjcmV0IGRhdGE=
```
## 其它

加密相关,TODO: 可以用于TOKEN的加密

https://www.springcloud.cc/spring-cloud-config.html

https://stackoverflow.com/questions/37404703/spring-boot-how-to-hide-passwords-in-properties-file

```bash
# 开发环境
docker run --cap-add=IPC_LOCK -e 'VAULT_DEV_ROOT_TOKEN_ID=myroot' -e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:1234' vault:1.7.3

# production
$ docker run --cap-add=IPC_LOCK -e 'VAULT_LOCAL_CONFIG={"backend": {"file": {"path": "/vault/file"}}, "default_lease_ttl": "168h", "max_lease_ttl": "720h"}' vault server

docker run --cap-add=IPC_LOCK -d --name=dev-vault -p 8200:8200 vault:1.7.3

docker logs dev-vault

You may need to set the following environment variable:

export VAULT_ADDR='http://0.0.0.0:1234'
vault unseal 1saM6YkT1dcq4mEGUKlVLJoppaAqri7lcQMs1Ch6R8A=
export VAULT_TOKEN="myroot"
vault status

vault kv put secret/hello foo=world
vault kv put secret/hello foo=world excited=yes
vault kv get secret/hello
vault kv get -format=json secret/hello | jq -r .data.data.excited
vault kv delete secret/hello
```
https://learn.hashicorp.com/tutorials/vault/getting-started-secrets-engines?in=vault/getting-started

https://www.vaultproject.io/docs/secrets/alicloud

```bash
vault write alicloud/config \
    access_key=0wNEpMMlzy7szvai \
    secret_key=PupkTg8jdmau1cXxYacgE736PJj4cA

```
这个没有oss的详细例子

https://www.vaultproject.io/docs/configuration/storage/alicloudoss
这个好像是把数据存在上面，而不是取得一个oss的签名

看来只有min.io来完成

```bash
vault write alicloud/role/policy-based \
    inline_policies=-<<EOF
[
    {
      "Statement": [
        {
          "Action": "rds:Describe*",
          "Effect": "Allow",
          "Resource": "*"
        }
      ],
      "Version": "1"
    }
]
EOF
```

默认：

```bash
vault server -config=/vault/config -dev-root-token-id= -dev-listen-address=0.0.0.0:8200 -dev
```

https://www.vaultproject.io/docs/secrets/alicloud

k8s有一个 Native Kubernetes Secrets，但安全性很差，base64加密
https://kubernetes.io/docs/tasks/inject-data-application/distribute-credentials-secure/

正常情况下要考虑： vault+k8s

Kubernetes External Secrets allows you to use external secret management systems, like AWS Secrets Manager or HashiCorp Vault, to securely add secrets in Kubernetes.
https://github.com/external-secrets/kubernetes-external-secrets

[Kubernetes Secret vs. Vault](https://medium.com/@harsh.manvar111/kubernetes-secret-vs-vault-fb57d75ce553)

[Injecting Vault Secrets Into Kubernetes Pods via a Sidecar](https://www.hashicorp.com/blog/injecting-vault-secrets-into-kubernetes-pods-via-a-sidecar)

[Effective Secrets with Vault and Kubernetes](https://itnext.io/effective-secrets-with-vault-and-kubernetes-9af5f5c04d06)

[stackshare对比，好像都不是同一类型的产品](https://stackshare.io/vault)

[vault-服务器密码/证书管理工具](https://segmentfault.com/a/1190000012959727)

## 其它加解密 jasypt

https://github.com/jasypt/jasypt

https://github.com/ulisesbocchio/jasypt-spring-boot

http://www.jasypt.org/download.html

https://www.jianshu.com/p/323ec96c46d2

https://blog.lqdev.cn/2019/05/08/springboot/chapter-thirty-seven/

https://www.geeksforgeeks.org/how-to-encrypt-passwords-in-a-spring-boot-project-using-jasypt/

在线加密工具： https://www.devglan.com/online-tools/jasypt-online-encryption-decryption

http://www.jasypt.org/download.html

还支持什么加密算法：

pbewithhmacsha512andaes_256 site:jasypt.org

http://www.jasypt.org/encrypting-texts.html

[如何在 Kubernetes 集群中把 Vault 用起来](https://developer.aliyun.com/article/738911)

## 编译 

```bash
git clone https://github.com/hashicorp/vault.git

make bootstrap
apt install gox
flag provided but not defined: -gcflags
# 这个不行，用apt
go get github.com/mitchellh/gox
# 需要保证 .bashrc有
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

make dev
```

参考： https://gitee.com/glt_2020/vault-ui

## 创建policy 和 对应的 ToKEN 

注意如果是kv_v2的,必须指定　/data 还是 /meta
```hcl
path "secret/data/foo" {
  capabilities = ["read"]
}
```

```PowerShell
./vault.exe token create -policy=my-new-policy
Key                  Value
---                  -----
token                s.79IPknQPYbbc6GWsv5WJDkpa
token_accessor       39ShJXlht5iWmodZpTnWpTRV
token_duration       768h
token_renewable      true
token_policies       ["default" "my-new-policy"]
identity_policies    []
policies             ["default" "my-new-policy"]
注意:有 token_duration       768h 为32d
cd D:\dev\docker\docker-compose\vault
$env:VAULT_ADDR="http://127.0.0.1:8200"
$env:VAULT_TOKEN="s.79IPknQPYbbc6GWsv5WJDkpa"
./vault.exe kv get secret/foo

```

## ERROR

### Failed to execute goal org.apache.maven.plugins:maven-resources-plugin:3.2.0

应该是 maven-resources-plugin 最新的版本 3.2.0有bugs，要降为3.1.0就好了


```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-resources-plugin</artifactId>
    <version>3.1.0</version>
</plugin>          
```
springboot打包错误：Failed to execute goal org.apache.maven.plugins:maven-resources-plugin:3.2.0...

https://blog.csdn.net/weixin_43567035/article/details/109706572

Maven clean install: Failed to execute goal org.apache.maven.plugins:maven-resources-plugin:3.2.0:resources

https://stackoverflow.com/questions/65910112/maven-clean-install-failed-to-execute-goal-org-apache-maven-pluginsmaven-resou


## 部署最佳实践

https://learn.hashicorp.com/tutorials/vault/deployment-guide

建立用户
systemd

加固 
https://learn.hashicorp.com/tutorials/vault/production-hardening?in=vault/day-one-consul

## 日志审计
vault audit list
vault read sys/audit-hash/file

https://www.vaultproject.io/api-docs/system/audit-hash

/var/log$ vault list sys/
No value found at sys/
/var/log$ vault read /sys/audit-hash
No value found at sys/audit-hash
/var/log$ vault list /sys/audit-hash
No value found at sys/audit-hash/

下面这三个用来干什么？

monitor        Stream log messages from a Vault server
ssh            Initiate an SSH session
namespace      Interact with namespaces
https://www.vaultproject.io/docs/commands/namespace

### token.roles

vault write auth/token/roles/zabbix  allowed_policies="policy1, policy2, policy3"  orphan=true  period=8h

vault timed task
scheduled task


### vault 最大数据，这里以 mysql 

https://www.vaultproject.io/docs/internals/limits

主要是受到后端存储的影响
如果是mysql ，需要改两个：
1 max_allowed_packet 这是每次sql语句请求包的大小
2 MEDIUMBLOB 改为 LONGBLOB

然后重启服务

```sql
ALTER TABLE `vault` CHANGE COLUMN `vault_value` `vault_value` LONGBLOB NULL AFTER `vault_key`;
use information_schema;
// 32 MB
SET GLOBAL max_allowed_packet = 32 * 1048576;
SELECT @@GLOBAL.max_allowed_packet;

use information_schema;
SELECT TABLE_NAME,DATA_LENGTH+INDEX_LENGTH,TABLE_ROWS FROM TABLES WHERE TABLE_SCHEMA='vault';
```

原表create table
```sql
CREATE TABLE `vault` (
	`vault_key` VARBINARY(512) NOT NULL,
	`vault_value` MEDIUMBLOB NULL DEFAULT NULL,
	PRIMARY KEY (`vault_key`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
```
https://zhuanlan.zhihu.com/p/25084711

MediumBlob            最大 16M 
LongBlob              最大 4G 

为什么只有 48k? 49152 ,数据存在什么地方去了？
落库了，但不一定是实时的

```bash
  * 1 error occurred:
        * Error 1105: Parameter of prepared statement which is set through mysql_send_long_data() is longer than 'max_allowed_packet' bytes
```

https://blog.csdn.net/qq_36742720/article/details/81567422
max_allowed_packet=10485760

```sql
// 32 MB
SET GLOBAL max_allowed_packet = 32 * 1048576;
SELECT @@GLOBAL.max_allowed_packet;

ALTER TABLE `vault` CHANGE COLUMN `vault_value` `vault_value` LONGBLOB NULL AFTER `vault_key`;
```

https://github.com/rancher/rancher/issues/9357
Defaults on max_allowed_packet, based on Dockerhub images and RDS
mysql	5.7	4194304


