# 加密和压缩

## 目标

找到一个可用于生产的,简单的安全的,可针对大文件的,加密压缩工具或方案

## 整盘
### [VeraCrypt](https://github.com/veracrypt/VeraCrypt)

可以整盘加密

### https://cryptomator.org/

[Cryptomator - 专为网盘文件加密而生！开源免费的云同步网盘加密工具](https://www.iplaysoft.com/cryptomator.html)

https://github.com/cryptomator/cryptomator

This project is dual-licensed under the GPLv3 for FOSS projects as well as a commercial license for independent software vendors and resellers. If you want to modify this application under different conditions, feel free to contact our support team.
优点： 不先初始化硬盘，平台多
缺点： 不能改，商业协议,只能加密文件夹

## 文件
7z + aes256

## 密码

https://alternativeto.net/software/1password/
https://keepass.info/
https://bitwarden.com/

私人网盘：https://owncloud.com/

https://github.com/owncloud

[如何搭建一个私人网盘](https://geekplux.com/2016/10/25/how-to-setup-a-personal-cloud)


## git

https://github.com/awslabs/git-secrets

使用 git-secret 对仓库中的文件进行加密
https://tautcony.xyz/2020/03/07/git-secret/

[git 加密_4个用于Git加密的秘密管理工具](https://blog.csdn.net/cumo3681/article/details/107390566)

https://github.com/AGWA/git-crypt
https://github.com/StackExchange/blackbox
https://github.com/mozilla/sops
https://github.com/elasticdog/transcrypt

## 参考

阿里OSS服务器端加密
https://help.aliyun.com/document_detail/31871.html

https://www.reneelab.com.cn/compression-software-encrypted-data.html

👋 [Looking for maintainers] SnowFS - a fast, scalable version control file storage for graphic files 🎨
MIT,是不是可以改成一个加密的?
https://github.com/Snowtrack/SnowFS

加密软件
https://www.veracrypt.fr/en/Home.html
https://www.veracrypt.fr/en/Downloads.html
VeraCrypt - 最佳免费开源跨平台的文件加密工具 (支持U盘加密/硬盘分区加密)
https://www.iplaysoft.com/veracrypt.html

1. Google公开了Libgcrypt加密库中的严重漏洞，影响了许多项目
GNU Privacy Guard（GnuPG）的Libgcrypt加密软件中的一个“严重”漏洞，可能使攻击者可以将任意数据写入目标计算机，从而可能导致远程执行代码。
[Google Discloses Severe Bug in Libgcrypt Encryption Library—Impacting Many Projects](https://thehackernews.com/2021/01/google-discloses-severe-bug-in.html)

渗透测试之地基流量加密篇：OpenSSL、Metasploit、Cobalt strike三种方式进... 会员
https://www.freebuf.com/articles/web/259222.html

Encrypting Large Files
https://jemurai.com/2019/04/23/encrypting-large-files/

S3 Secure Sharing (S3S2)
https://s3s2.jemurai.com/
S3 is a simple tool for sharing information. 
Time and time again, we see organizations using S3 in insecure ways. 
This tool is built to try to make it very easy to share files securely.

前市面上最流行的源码加密软件机制是一种对开发人员的操作环境进行加密的软件
google: 源代码 管控 加密
http://www.eff-soft.com/jjfa/wlkj/2019-04-15/255.html ?

http://www.hustcad.com/2952/ | 这个比较符合
　　我们以常见的Eclipse集成开发环境为例（Visual Studio同理），一个Java项目被创建后，通过天喻数据安全源代码加密解决方案，在后台对创建的代码文件进行加密处理（如*.java文件、*.class文件等），加密后的Java项目文件，仅能在授权的范围内或企业内部使用，一旦非法流出企业内部或授权的范围，就无法被正常打开或执行编译。

[Python 源码混淆与加密](https://mp.weixin.qq.com/s/LmxdXRjMCOIisQzCISBoGw)
git加密：
使用 git-secret 对仓库中的文件进行加密
https://tautcony.xyz/2020/03/07/git-secret/
缺点： 基于 bash 和 GPG 的工具，所以 Windows 显然就无缘了
Git加密存储文件 _|按这个文章，windows也是可以用的
https://www.mikesay.com/2020/12/16/git-encrypt-file-in-repository/

[git 加密_4个用于Git加密的秘密管理工具](https://blog.csdn.net/cumo3681/article/details/107390566)
  https://opensource.com/article/19/2/secrets-management-tools-git
  https://github.com/AGWA/git-crypt
    [在 git-ops 中使用 git-crypt 保护敏感数据](http://generalthink.github.io/2020/03/01/use-git-crypt/)
  https://github.com/StackExchange/blackbox
  https://github.com/mozilla/sops
  https://github.com/elasticdog/transcrypt
加密git远端版本库
http://blog.linjunhalida.com/blog/encrypted-git-repo/

设置加密的git仓库
https://qastack.cn/superuser/1162907/setting-up-an-encrypted-git-repository
git在推/拉时加密/解密远程存储库文件
https://www.thinbug.com/q/2456954
Modern encryption for Ruby and Rails
数据加密！
https://github.com/ankane/lockbox
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