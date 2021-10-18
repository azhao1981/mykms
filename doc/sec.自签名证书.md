## 自签证书及运用



[TOC]



## 自签证书

### 生成CA证书

```bash
openssl genrsa -out ca.key 4096

openssl rand -writerand ~/.rnd
openssl req -x509 -new -nodes -sha512 -days 3650 \
-subj "/C=CN/ST=Beijing/L=Beijing/O=MyOrg/OU=Dev/CN=MyOrg.com" \
-key MyOrg.ca.key \
-out MyOrg.ca.crt

# ERROR:
# Can't load /home/ubuntu/.rnd into RNG
# 139843256209856:error:2406F079:random number generator:RAND_load_file:Cannot open file:../crypto/rand/randfile.c:88:Filename=/home/ubuntu/.rnd
# https://stackoverflow.com/questions/63893662/cant-load-root-rnd-into-rng
```

### 生成服务器端证书

```bash
# 生成服务端证书私钥
openssl genrsa -out domain1.com.key 4096
# 生成 csr 证书签名请求
openssl req -sha512 -new \
-subj "/C=CN/ST=Beijing/L=Beijing/O=MyOrg/OU=Dev/CN=*.domain1.com,*.domain2.com" \
-key domain1.com.key \
-out domain1.com.csr
```

术语：
- **CSR** Certificate Signing Request 证书签名请求文件 
    - 证书申请者在申请数字证书时由CSP(加密服务提供者)在生成私钥的同时也生成证书请求文件
    - 

### 使用 v3.ext 生成域名证书

domain.v3.ext

```conf
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage=digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
extendedKeyUsage=serverAuth
subjectAltName=@alt_names

[alt_names]
DNS.1=*.domain1.com
DNS.2=*.domain2.com
```


```bash
openssl x509 -req -sha512 -days 3650 \
-extfile domain.v3.ext \
-CA ca.crt -CAkey ca.key -CAcreateserial \
-in domain1.com.csr \
-out domain1.com.crt
```

## 系统信任自签证书

注意：这里必须有CA证书，只有

```bash
sudo cp ca.crt /usr/local/share/ca-certificates/MyOrg.ca.crt
sudo cp domain1.com.crt /usr/local/share/ca-certificates/
sudo update-ca-certificates
```

## 应用程序跳过证书

### ruby 猴子补丁

把这个代码加入程序初始化脚本中，如 Rails initializers

```ruby
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
```

## 引用

[使用 OpenSSL 生成自签名证书](https://juejin.cn/post/6927888397654556685)

[openssl生成自签名证书](https://juejin.cn/post/7004737723961442341)