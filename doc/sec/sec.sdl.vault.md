# vault

[主页](https://www.vaultproject.io/)

[docker](https://hub.docker.com/_/vault)

[github](https://github.com/hashicorp/vault)

sec\udesk.sec.kms.md

https://learn.hashicorp.com/tutorials/vault/eaas-spring-demo?in=vault/app-integration

[Introduction to HashiCorp Vault with Armon Dadgar](https://www.youtube.com/watch?v=VYfl-DpZ5wM)

[云原生安全-更安全的密文管理 Vault on ACK](https://zhuanlan.zhihu.com/p/101420781)

## vault

### vault 服务 开发模式

https://learn.hashicorp.com/tutorials/vault/getting-started-dev-server?in=vault/getting-started

`vault server -dev`

会返回

```bash
# 直接写到客户端
export VAULT_ADDR='http://0.0.0.0:1234'
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

好像1.7.3没有unseal命令了

`vault unseal xxx`

### vault 客户端使用

https://learn.hashicorp.com/tutorials/vault/getting-started-first-secret?in=vault/getting-started

```bash
# 写值 
$ vault kv put secret/hello foo=world
$ vault kv put secret/hello foo=world excited=yes
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

### 生产部署
如果报　mlock 问题：
https://www.vaultproject.io/docs/configuration#disable_mlock
sudo setcap cap_ipc_lock=+ep $(readlink -f $(which vault))
sudo setcap cap_ipc_lock=+ep $(readlink -f /home/ubuntu/vault/vault)
ubuntu@ubuntu:~/vault$ ./vault server -config=config.hcl

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

curl \
    --header "X-Vault-Token: s.atat1HUoJfZFHe7tVdcv1IMz" \
    --request POST \
    --data '{ "type":"kv-v2" }' \
    http://127.0.0.1:8200/v1/sys/mounts/secret


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