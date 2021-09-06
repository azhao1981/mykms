# 202009

## 20210905

从Windows 10 SSH-Agent中提取SSH私钥
https://www.freebuf.com/articles/system/172624.html

podman apt安装需要ubuntu20.10，但wsl不能直接装，需要升级来装
https://0xzx.com/202010240500903592.html
如何在Windows 10的WSL中​​升级到Ubuntu 20.10
https://podman.io/getting-started/
如何在 Windows 安全中心设置白名单
https://consumer.huawei.com/cn/support/content/zh-cn00694627/


Podman 初次体验

https://zdyxry.github.io/2019/10/12/Podman-%E5%88%9D%E6%AC%A1%E4%BD%93%E9%AA%8C/

. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:testing.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update -qq
sudo apt-get -qq -y install podman

## 20210904
https://github.com/h3v0x/CVE-2021-26084_Confluence

## 20210903

It is forbiddened to send the plaintext of old password or new password to the user. If the application system sends a link email or short message to the user for password reset, it is recommended to send to the user email or mobile from user registration information and the link should be expired after 30 min

It is forbiddened to hash password with 1-round encryption without salt which can be easily exposed by rainbow attacks. It is recommended to hash passwords with:
1. At least 2-round encrption
2. At least 128-bit salt
submitOrderParam.payPassword: u34u33u37u38u38u35

Bcrypt
[Bcrypt加密之新认识](https://www.jianshu.com/p/2b131bfc2f10)
myHash: 经过明文密码password和盐salt进行hash，个人的理解是默认10次下 ，循环加盐hash10次，得到myHash
所以 bcrypt 是符合上面的要求的

[算法高级（22）-BCrypt加密算法，号称目前最安全的算法之一](https://blog.csdn.net/m0_37609579/article/details/100785947)

[什么是彩虹表？](https://www.zhihu.com/question/19790488)
彩虹表是一个用于加密散列函数逆运算的预先计算好的表，常用于破解加密过的密码散列。 
彩虹表常常用于破解长度固定且包含的字符范围固定的密码。这是以空间换时间的典型实践，
比暴力破解使用的时间更少，空间更多；但与储存密码空间中的每一个密码及其对应的哈希值实现的查找表相比，其花费的时间更多，空间更少。

## 20210901

浅谈如何规范开展等级保护定级和备案工作
https://www.freebuf.com/articles/neopoints/285684.html

如何开展信息安全风险评估工作——以红色警戒2游戏为例
https://www.freebuf.com/articles/compliance/284316.html

数据恢复大杀器 winhex 拌炒分区大杂烩 分区的16进制研究
https://www.anquanke.com/post/id/248773

阿里云： 公共读写 攻击

如果黑盒测试阿里云是不是错误配置为 公共读写

### 数据加密

[vault+MySQL静态数据加密和企业版TDE](https://blog.51cto.com/u_15080016/2642369)

[各路 MySQL proxy 功能对比及性能评测](https://zhjwpku.com/2018/01/16/mysql-proxy-alternatives.html)

都有最新的更新

https://github.com/mariadb-corporation/MaxScale
https://github.com/sysown/proxysql
a proxy for sharding databases and tables 主要是sharding
https://github.com/alibaba/cobar

我要找的数据库开源审计工具
Database security suite. 
Database proxy with field-level encryption, search through encrypted data, SQL injections prevention, intrusion detection, honeypots. 
Supports client-side and proxy-side ("transparent") encryption. SQL, NoSQL.
https://github.com/cossacklabs/acra
https://www.cossacklabs.com/acra/
https://gitee.com/azhao-1981/acra

Example projects: see Acra in action
See Acra and its features in a live infrastructure with just one command:
Try Docker-based example projects:
Typical web apps (Django and Ruby on Rails) protected by Acra.
Acra with AcraCensor SQL firewall configured to prevent injections in OWASP Mutillidae 2 app.
High-availability infrastructure for Acra: Python app, HAProxy, PostgreSQL.


https://github.com/square/keywhiz
https://stackshare.io/stackups/keywhiz-vs-vault

https://github.com/Qihoo360/Atlas 19年后不再更新
https://github.com/mysql/mysql-proxy
https://proxysql.com/

https://github.com/masahide/mysql-audit-proxy
Proxy for mysql audit recording
不用看，太老了
译文：GreenSQL是一个开源数据库防火墙，用于保护数据库免受SQL注入攻击。GreenSQL作为一个代理工作，并内置了对MySQL和PostgreSQL的支持。
https://greensql.net/
GreenSQL is an Open Source database firewall used to protect databases from SQL injection attacks.
https://github.com/larskanis/greensql-fw 17年不再更新





这个还搞不清
https://github.com/aprismatic/prismadb
Prisma/DB (https://prismadb.com/) is a cryptographic security layer for relational database systems, that currently supports Microsoft SQL Server, MySQL, MariaDB, PostgreSQL and CockroachDB. Started as a research project in Nanyang Technological University (Singapore), it is now a fast-growing product developed by Aprismatic.

Cloud SQL proxy client and Go library
https://github.com/GoogleCloudPlatform/cloudsql-proxy
