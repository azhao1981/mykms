# vault

## **What**: 什么是 `vault`

KMS 开源版本，用于管理密钥

对标商业产品: 

阿里 KMS 

![](images/2021-07-26-18-10-02.png)

华为 KMS
![](images/2021-07-26-18-11-36.png)

## **Why**: 为什么要使用 `vault` 

解决了哪些痛点问题

### 明文密码密钥

- 密码密钥泄露
- 合规要求 如华为严选 等都要求

### 密钥应该存储在哪里

- 代码：硬编码问题
- 配置文件：数据泄露
- 应用数据库：不同应用间密钥同步
  
### 密钥轮换

- 合规
- 离职员工

### 解决

- 集中管理
- 加密密码密钥
- 轮换密码密钥

`Bad` 明文配置架构和威胁建模

![](images/2021-07-27-14-09-07.png)

`GOOD` Vault KMS 密钥管理架构和威胁建模

![](images/2021-07-27-14-12-06.png)

### 为什么不是 Nacos
- 明文存储，支持密文需要自己开发
- 合规不认可，一些合规就要求使用 `KMS`

## **How**：怎么使用 `vault`

使用 Vault的KV Secrets Engine 做密码密钥的密文存储，并集中存储

### 安装下载

[Vault](https://www.vaultproject.io/) 为golang 开发，提供跨平台支持，服务端和客户端为同一个程序。

当前版本为 `1.7.3`

下载地址 <https://www.vaultproject.io/downloads>


```bash
# 启动
./vault.exe server -dev
```
![](images/2021-07-27-15-06-41.png)

### 客户端连接

windows powershell
```bash
$env:VAULT_ADDR="http://127.0.0.1:8200"
$env:VAULT_TOKEN="s.SA76ixfnrudARmjf1BJhLdsG"
./vault.exe status
```

![](images/2021-07-27-15-05-45.png)

### docker 模式

```bash
docker pull vault:1.7.3
docker run --cap-add=IPC_LOCK -d --name=dev-vault -p 8200:8200 vault:1.7.3
docker logs dev-vault
```
![](images/2021-07-27-15-13-53.png)

```bash
docker cp dev-vault:/bin/vault ./
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='s.p9QZL59xvPyy0Xu7S2Fl4SL8'
./vault status
```
![](images/2021-07-27-15-22-29.png)

### 生产模式

环境： LINUX + Mysql

相关概念
- config.hcl 配置文件
- UI 模式
- CAP_IPC_LOCK: 允许锁定共享内存片段
- 启封 `unseal`


mysql 建库表

```sql
create database vault default character set utf8mb4 collate utf8mb4_unicode_ci;
```

config.hcl 配置文件

```bash
# 打开UI界面
ui = true
# 使用mysql进行数据存储
storage "mysql" {
  address = "127.0.0.1"
  username = "root"
  password = "PRma-qmLnWf-Q90dA-V91La"
  database = "vault"
}

listener "tcp" {
  tls_disable = "true"
  address = "0.0.0.0:8200"
}

api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
```

```bash
./vault server -config=./config.hcl
```

`ERROR`:  Error initializing core: Failed to lock memory: cannot allocate memory

![](images/2021-07-27-16-03-58.png)

`fixed`

```bash
sudo setcap cap_ipc_lock=+ep $(readlink -f /mnt/d/dev/docker/docker-compose/vault/vault)
./vault server -config=./config.hcl
```

![](images/2021-07-27-16-06-31.png)

访问： http://localhost:8200/

![](images/2021-07-27-16-13-51.png)

状态为 密封sealed，需要提供共享启封密钥的数据和启封密钥阀值，一般为5/3，即生产5个密钥，输入其中3个就可以启封vault实例

点击 initialize 后生成 root token 和 unseal-key

![](images/2021-07-27-16-17-34.png)

直接点击查看，或是下载为json保存

```json
// vault-cluster-vault-2021-07-27T08_16_41.406Z.json
{
  "keys": [
    "1e621235ff53e2fd748f643a31fe69419791bddc6ed01919cc6982113e2a18581c",
    "b3d70a0a913b8e56d32667f88147c13f0ac9864c421b4c94f550271cf926660449",
    "efe3197078ead1a0739a0e3f9ff99c4a12faf16d0cfe38f8a19985df28fa841b0c",
    "731b6797cd8bfa28eed67ba6dc3bfc0c552977d9149135caf657e0a5754e35809f",
    "ae98a675400da5ad4b2f40eaf079259b1e28da99014a6838cc7df27981c239ee48"
  ],
  "keys_base64": [
    "HmISNf9T4v10j2Q6Mf5pQZeRvdxu0BkZzGmCET4qGFgc",
    "s9cKCpE7jlbTJmf4gUfBPwrJhkxCG0yU9VAnHPkmZgRJ",
    "7+MZcHjq0aBzmg4/n/mcShL68W0M/jj4oZmF3yj6hBsM",
    "cxtnl82L+iju1num3Dv8DFUpd9kUkTXK9lfgpXVONYCf",
    "rpimdUANpa1LL0Dq8Hklmx4o2pkBSmg4zH3yeYHCOe5I"
  ],
  "root_token": "s.DKQhp0qzjeSKUlHrhaq7IMlt"
}
```

输入其中3个key启封
![](images/2021-07-27-16-20-56.png)

启封成功后稍等片刻，即可输入 root_token 进入管理界面：

![](images/2021-07-27-16-22-11.png)

![](images/2021-07-27-16-23-45.png)

如果报错，说明启封没有完成，再稍等一下

查看数据表和内容，可能看到都是加密的数据

![](images/2021-07-27-16-24-25.png)

### KV_v2 密钥引擎

术语
- [Secrets Engine](https://www.vaultproject.io/docs/secrets) 
- kv_v2 密钥引擎： kv key value, v2: 相比v1,增加了版本控制，默认v2

使用UI创建一个kv_v2引擎 secret

`TIPS`: secret/app_name 是java vault sdk的默认取值路径

![](images/2021-07-27-16-46-31.png)

![](images/2021-07-27-16-46-51.png)

创建一个叫 secret 的kv_v2引擎

![](images/2021-07-27-16-47-46.png)

使用客户端创建一个 kv_v2 引擎 kv_v2

```bash
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='s.DKQhp0qzjeSKUlHrhaq7IMlt'
./vault status
./vault secrets enable -path=kv kv-v2
```

![](images/2021-07-27-16-51-02.png)

![](images/2021-07-27-16-51-24.png)

插入数据
```bash
./vault kv put kv/main_mysql host=localhost username=my-app-user password=my-app-pwd
./vault kv get kv/main_mysql
./vault kv get --format=json kv/main_mysql
```
![](images/2021-07-27-16-52-52.png)

### 使用 curl 做为客户端

```bash
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='s.DKQhp0qzjeSKUlHrhaq7IMlt'

curl -H "X-Vault-Token: $VAULT_TOKEN" -X GET http://127.0.0.1:8200/v1/kv/data/main_mysql

# 可以取以前的版本，但vault只能保存一定版本的历史
curl -H "X-Vault-Token: $VAULT_TOKEN" -X GET http://127.0.0.1:8200/v1/kv/data/main_mysql?version=1
```

### 应用对接 java

### 应用对接 ruby

### 应用对接 Golang

### 安全配置

+ 为UI外网提供访问控制
+ 使用 低权限的 mysql 账号密码
+ 为操作员或应用分配合适权限的 token

K8s支持

### Nacos的更多特性

#### 鉴权功能集成
#### 加密服务(微服务)
#### K8s集成

#### 更多的 [Secrets Engine](https://www.vaultproject.io/docs/secrets)

![](images/2021-07-27-14-30-14.png)

- Alicloud
- Database