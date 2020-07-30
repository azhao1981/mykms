# linux 开发技巧

## 生成随机密码

```bash
head -c 32 /dev/random | base64
head -c 32 /dev/urandom | base64
openssl rand -hex 10
openssl passwd -stdin < <(echo)
```
