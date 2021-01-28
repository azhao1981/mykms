# 加密和压缩

## 目标

找到一个可用于生产的,简单的安全的,可针对大文件的,加密压缩工具或方案

Encrypting Large Files
https://jemurai.com/2019/04/23/encrypting-large-files/

S3 Secure Sharing (S3S2)
https://s3s2.jemurai.com/
S3 is a simple tool for sharing information. 
Time and time again, we see organizations using S3 in insecure ways. 
This tool is built to try to make it very easy to share files securely.

linux大文件分割
https://cloud.tencent.com/developer/article/1607823?from=information.detail.linux%E5%90%88%E5%B9%B6%E5%A4%A7%E6%96%87%E4%BB%B6

unix下利用openssl对大文件进行aes加解密
https://www.qedev.com/linux/15227.html
Linux文件加密
https://allenouyangke.github.io/2018/02/28/encryption/
7个在Linux中加密/解密和密码保护文件的工具
https://www.howtoing.com/linux-password-protect-files-with-encryption
[什么是AEAD加密](https://zhuanlan.zhihu.com/p/28566058)
Authenticated Encryption with Associated Data (AEAD) 是一种同时具备保密性，完整性和可认证性的加密形式。 AEAD 产生的原因很简单，单纯的对称加密算法，其解密步骤是无法确认密钥是否正确的

openssl 没有支持 gcm?
https://security.stackexchange.com/questions/30344/why-does-openssl-not-include-aes-256-gcm

### openssl + tar 方案

问题: openssl 的命令行不支持 aes-256-gcm

openssl enc -aes-256-gcm -nosalt -p -in 1.txt -out file.out
enc: AEAD ciphers not supported

https://stackoverflow.com/questions/18117328/openssl-authenticated-encryption
OpenSSL supports aes-256-gcm as an algorithm, but it does not support aes-256-gcm as a command tool. The difference is that you can enter openssl aes-256-cbc in the command line to encrypt something. On the other hand, there are no such openssl aes-256-gcm command line tool.

$ tar -czf - * | openssl enc -e -aes256 -out entest.tar.gz
$ tar -czf - * | openssl enc -e -aes-256-gcm -out entest.tar.gz
enter aes-256-cbc encryption password:
Verifying - enter aes-256-cbc encryption password:
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.

openssl enc -d -aes256 -in entest.tar.gz |tar xz 
enter aes-256-cbc decryption password:
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.