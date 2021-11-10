# 数据安全

防止云端数据与查询行为泄露—可搜索加密
http://blog.nsfocus.net/cloud-901/



### 阿里 SSL 及 TDE

很多数据库都支持加密传输，如 mysql  



阿里默认并不开启，可以参考下面文档开户：RDS实例/数据安全性/SSL

https://help.aliyun.com/document_detail/96120.html


[你的MySQL服务器开启SSL了吗？](https://www.cnblogs.com/mysql-dba/p/7061300.html)


检查服务器是否启用：

```sql
show global variables like '%ssl%';
# | have_ssl      | YES             |    #已经开启了SSL
```

检查连接是否使用：

```sql
\s
...
SSL: Cipher in use is DHE-RSA-AES256-SHA 
#表示该dba用户是采用SSL连接到mysql服务器上的，如果不是ssl，那么会显示“Not in use“
...
```



[设置透明数据加密TDE](https://help.aliyun.com/document_detail/96121.html)

透明数据加密TDE（Transparent Data Encryption）可对数据文件执行实时I/O加密和解密，数据在写入磁盘之前进行加密，从磁盘读入内存时进行解密。TDE**不会增加数据文件的大小**，开发人员无需更改任何应用程序，即可使用TDE功能。

- 开启TDE后，常用数据库工具（Navicat等）还能正常使用吗？

  可以正常使用。

- 开启TDE后，还能正常迁移数据到其他RDS实例吗？

  可以正常迁移。

- 加密后查看数据为什么还是明文的？

  查询数据时会解密并读取到内存，所以是明文显示。开启TDE可以防止备份泄露导致数据泄露，备份文件是加密的，无法用于恢复到本地，如果要恢复数据到本地，需要先解密数据。更多信息，请参见本文的解密操作章节。



### 阿里 数据库审计 敏感数据发现

恭喜您获得DSC 7天免费试用机会

数据安全中心（Data Security Center）在满足等保v2.0二级“安全审计”及“个人信息保护”、GDPR等合规要求的基础上，为客户提供敏感数据发现、全域数据审计、数据脱敏、智能异常检测等数据安全能力，形成一体化的数据安全解决方案。



### 数据脱敏

Mysql 数据脱敏方案
http://www.sbboke.com/1018.html

数据脱敏的处理方法及查询
https://zhuanlan.zhihu.com/p/53163513

MySQL 对身份证号、手机号等敏感数据脱敏
https://blog.csdn.net/Li_Ya_Fei/article/details/79294186

阿里 数据库审计 数据敏感

## ACRA

我要找的数据库开源审计工具
Database security suite. 
Database proxy with field-level encryption, search through encrypted data, SQL injections prevention, intrusion detection, honeypots. 
Supports client-side and proxy-side ("transparent") encryption. SQL, NoSQL.

https://github.com/cossacklabs/acra
https://www.cossacklabs.com/acra/
https://gitee.com/azhao-1981/acra

Example projects: 

see Acra in action
See Acra and its features in a live infrastructure with just one command:
Try Docker-based example projects:
Typical web apps (Django and Ruby on Rails) protected by Acra.
Acra with AcraCensor SQL firewall configured to prevent injections in OWASP Mutillidae 2 app.
High-availability infrastructure for Acra: Python app, HAProxy, PostgreSQL.



https://docs.cossacklabs.com/acra/getting-started/installing/launching-acra-from-docker-images/

##### 组件包括：

- [`acra-server`](https://hub.docker.com/r/cossacklabs/acra-server) – with AcraServer
- [`acra-translator`](https://hub.docker.com/r/cossacklabs/acra-translator) – with AcraTranslator
- [`acra-tools`](https://hub.docker.com/r/cossacklabs/acra-tools) – with Acra tools including AcraKeymaker
- [`acra-keymaker`](https://hub.docker.com/r/cossacklabs/acra-keymaker) – with AcraKeymaker (deprecated in favoe `acra-tools`)
- [`acra-connector`](https://hub.docker.com/r/cossacklabs/acra-connector) – with AcraConnector
- [`acra-authmanager`](https://hub.docker.com/r/cossacklabs/acra-authmanager) – with AcraAuthmanager tool
- [`acra-webconfig`](https://hub.docker.com/r/cossacklabs/acra-webconfig) – with AcraWebconfig component





### 其它数据审计工具

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





https://github.com/square/keywhiz
https://stackshare.io/stackups/keywhiz-vs-vault
