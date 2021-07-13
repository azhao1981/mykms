# vault

[主页](https://www.vaultproject.io/)

[docker](https://hub.docker.com/_/vault)

[github](https://github.com/hashicorp/vault)

[gitee.com](https://gitee.com/mirrors/vault)

sec\udesk.sec.kms.md

https://learn.hashicorp.com/tutorials/vault/eaas-spring-demo?in=vault/app-integration

[Introduction to HashiCorp Vault with Armon Dadgar](https://www.youtube.com/watch?v=VYfl-DpZ5wM)

[云原生安全-更安全的密文管理 Vault on ACK](https://zhuanlan.zhihu.com/p/101420781)

## vault
### vault 安全

mlock: 不允许把内存数据swap到硬盘
启封：可以理解为重启服务需要用密钥，每次重启都需要

深入剖析HashiCorp Vault中的身份验证漏洞（上篇）
https://anquan.baidu.com/article/1191

### vault 服务 开发模式

当前安全版本： 1.7.3

下载页面：https://www.vaultproject.io/downloads

https://learn.hashicorp.com/tutorials/vault/getting-started-dev-server?in=vault/getting-started

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
Sealed          false
```

术语：启封 在使用vault之前首先要对vault进行启封，才能对vault进行后续操作。使用上面生成的uneal-key，其实dev模式下默认是已经启封状态

启封操作见生产模式

### vault 生产模式

1 生产模式需要先锁定共享内存片段

```bash
sudo setcap cap_ipc_lock=+ep $(readlink -f /home/ubuntu/vault/bin/vault)
# /home/ubuntu/vault/bin/vault 为vault应用的位置
```

[setcap详解](https://www.cnblogs.com/nf01/articles/10418141.html)
CAP_IPC_LOCK:允许锁定共享内存片段

<https://github.com/hashicorp/docker-vault/issues/53>

2 以生产模式启动

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

3 客户端
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

4 客户端操作 kv

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

### vault UI模式

参考：<https://learn.hashicorp.com/tutorials/vault/getting-started-intro-ui?in=vault/getting-started-ui>

启用UI组件
config.hcl
```bash
ui = true
```

重启服务

http://192.168.56.140:8200/ui

启封：如果vault服务重启，那么需要进行启封才能放下

TIPS： 如果出现 ERROR:

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

sudo setcap cap_ipc_lock=+ep $(readlink -f /home/ubuntu/vault/bin/vault)
./vault server -config=config.hcl

Error initializing core: Failed to lock memory: cannot allocate memory #53
https://github.com/hashicorp/docker-vault/issues/53

https://learn.hashicorp.com/tutorials/vault/getting-started-deploy
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

https://dzone.com/articles/spring-cloud-hashicorp-vault-hello-world-example

https://spring.io/projects/spring-vault#samples

https://github.com/mp911de/spring-cloud-vault-config-samples

Cannot download 'https://start.spring.io': connect timed out
有时会报这个，需要设置一下proxy

Error while fetching metadata from server 'https://start-scs.cfapps.io'

## 其它

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
这个没有oss的详细例子
https://www.vaultproject.io/docs/configuration/storage/alicloudoss
这个好像是把数据存在上面，而不是取得一个oss的签名

看来只有min.io来完成

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

默认：

vault server -config=/vault/config -dev-root-token-id= -dev-listen-address=0.0.0.0:8200 -dev

https://www.vaultproject.io/docs/secrets/alicloud

k8s有一个 Native Kubernetes Secrets，但安全性很差，base64加密
https://kubernetes.io/docs/tasks/inject-data-application/distribute-credentials-secure/

正常情况下要考虑： vault+k8s
Kubernetes External Secrets allows you to use external secret management systems, like AWS Secrets Manager or HashiCorp Vault, to securely add secrets in Kubernetes.
https://github.com/external-secrets/kubernetes-external-secrets

Kubernetes Secret vs. Vault
https://medium.com/@harsh.manvar111/kubernetes-secret-vs-vault-fb57d75ce553
Injecting Vault Secrets Into Kubernetes Pods via a Sidecar
https://www.hashicorp.com/blog/injecting-vault-secrets-into-kubernetes-pods-via-a-sidecar
Effective Secrets with Vault and Kubernetes
https://itnext.io/effective-secrets-with-vault-and-kubernetes-9af5f5c04d06


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

如何在 Kubernetes 集群中把 Vault 用起来
https://developer.aliyun.com/article/738911


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