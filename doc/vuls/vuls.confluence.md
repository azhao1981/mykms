
# confluence

##　CVE-2019-3396

docker
https://hub.docker.com/r/atlassian/confluence-server
https://hub.docker.com/r/cptactionhank/atlassian-confluence

破解
https://gitee.com/pengzhile/atlassian-agent

[我用 docker 部署 JIRA 和 Confluence（破解版）](https://blog.51cto.com/wzlinux/2494063)

Atlassian Confluence 6.6.1 

https://www.cvedetails.com/cve/CVE-2019-3396/
The Widget Connector macro in Atlassian Confluence Server before version 6.6.12 (the fixed version for 6.6.x), from version 6.7.0 before 6.12.3 (the fixed version for 6.12.x), from version 6.13.0 before 6.13.3 (the fixed version for 6.13.x), and from version 6.14.0 before 6.14.2 (the fixed version for 6.14.x), allows remote attackers to achieve path traversal and remote code execution on a Confluence Server or Data Center instance via server-side template injection.
需要升级到6.6.12以上，小版本升级不涉及功能或数据库表 6.6.17
docker pull atlassian/confluence-server:6.6.17
docker pull atlassian/confluence-server:6.6.1

或 6.13.20 6.x最高版本
docker pull atlassian/confluence-server:6.15.10

或 7.4.8 长维护最新版本 
docker pull atlassian/confluence-server:7.4.8

最新版本
docker pull cptactionhank/atlassian-confluence:7.9.3
docker pull cptactionhank/atlassian-confluence:6.15.9
有问题的版本
docker pull cptactionhank/atlassian-confluence:6.12.2

docker save atlassian/confluence-server:6.15.10 > confluence.6.15.10.tar
docker save atlassian/confluence-server:7.4.8 > confluence.7.4.8.tar
docker save cptactionhank/atlassian-confluence:6.12.2 > confluence.6.12.2.tar

docker save cptactionhank/atlassian-confluence:7.9.3 > confluence.7.9.3.tar
docker save cptactionhank/atlassian-confluence:6.15.9 > confluence.6.15.9.tar


https://my.oschina.net/u/4270238/blog/4074414
Docker安装JIRA和Confluence（破解版）


https://hub.docker.com/r/atlassian/jira-software
https://hub.docker.com/r/cptactionhank/atlassian-jira-software
Atlassian JIRA Project Management Software (v7.6.1#76002-sha1:21e6670)  About JIRA  Report a problem
docker pull cptactionhank/atlassian-jira-software:7.6.1
docker pull cptactionhank/atlassian-jira-software:7.6.3
docker pull cptactionhank/atlassian-jira-software:7.13.1
docker pull atlassian/jira-software:8.13.4

docker save cptactionhank/atlassian-jira-software:7.6.1 > jira.7.6.1.tar
docker save cptactionhank/atlassian-jira-software:7.6.3 > jira.7.6.3.tar
docker save cptactionhank/atlassian-jira-software:7.13.1 > jira.7.13.1.tar
docker save atlassian/jira-software:8.13.4 > jira.8.13.4.tar
没有这个镜像
Atlassian JIRA Project Management Software (v6.3.10#6340-sha1:7ea293a)  About JIRA  Report a problem

GitLab Community Edition 8.13.6 69cda01 Check
docker pull gitlab/gitlab-ce:8.13.6-ce.0
docker pull gitlab/gitlab-ce:8.13.12-ce.0
docker pull gitlab/gitlab-ce:8.17.8-ce.0
docker pull gitlab/gitlab-ce:13.10.0-ce.0

docker save gitlab/gitlab-ce:8.13.6-ce.0 >　gitlab.8.13.6.tar
docker save gitlab/gitlab-ce:8.13.12-ce.0 >　gitlab.8.13.12.tar
docker save gitlab/gitlab-ce:8.17.8-ce.0 >　gitlab.8.17.8.tar
docker save gitlab/gitlab-ce:13.10.0-ce.0 >　gitlab.13.10.0.tar
Docker - 实现本地镜像的导出、导入（export、import、save、load）

https://www.hangge.com/blog/cache/detail_2411.html

## 编译 atlassian-agent

https://gitee.com/pengzhile/atlassian-agent

[Ubuntu 20.04换国内源 清华源 阿里源 中科大源 163源](https://blog.csdn.net/xiangxianghehe/article/details/105688062)

```basb
docker run -it -v /home/kali/Documents/opensources/atl-agent:/agent atlassian/confluence-server:6.6.1 bash
echo "deb https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse" > /etc/apt/sources.list

apt update
apt install maven
docker commit 87354329121e  atlassian/confluence-server:6.6.1.1
mvn package

docker run -it -v /home/kali/Documents/opensources/atl-agent:/agent atlassian/confluence-server:6.6.1.1 bash
```

### mysql

```yaml
version: '3.4'

services:
  mysql57:
    restart: always
    image: mysql:5.7
    command: --default-authentication-plugin=mysql_native_password
    expose:
      - 3306
    ports:
      - 127.0.0.1:3306:3306
    volumes:
      - mysql-data:/var/lib/mysql
      - ./tool:/tool
    environment:
      - MYSQL_ROOT_PASSWORD=xxx
      - TZ=Asia/Shanghai
  mysql:
    image: mysql:8.0.23
    restart: always
    network_mode: host
    volumes:
      - ./mysql/db:/var/lib/mysql
      - ./tool:/tool
    command: mysqld --default-authentication-plugin=mysql_native_password --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
    expose:
      - "3306"
    environment:
      - MYSQL_ROOT_PASSWORD=xxx
      - TZ=Asia/Shanghai
```
https://hub.docker.com/r/bitnami/redis/

https://github.com/lagoon-io/mysql8-docker-container/blob/master/docker-compose.yml

mysql_1  | 2021-03-23T06:47:16.071436Z 0 [ERROR] [MY-013129] [Server] A message intended for a client cannot be sent there as no client-session is attached. Therefore, we're sending the information to the error-log instead: MY-001146 - Table 'mysql.component' doesn't exist
mysql_1  | 2021-03-23T06:47:16.074996Z 0 [ERROR] [MY-010326] [Server] Fatal error: Can't open and lock privilege tables: Table 'mysql.user' doesn't exist
mysql_1  | 2021-03-23T06:47:16.075424Z 0 [ERROR] [MY-010952] [Server] The privilege system failed to initialize correctly. For complete instructions on how to upgrade MySQL to a new version please see the 'Upgrading MySQL' section from the MySQL manual.

https://askubuntu.com/questions/1253026/docker-mysql-error-no-mysql-table

有时数据文件生成有问题，需要删除
rm -rf mysql/db/*
或：
docker volume ls
docker volume rm volume_name

[MySQL创建用户与授权](https://www.jianshu.com/p/d7b9c468f20d)

```sql
-- 创建confluence数据库及用户
-- https://ma.ttias.be/mysql-8-removes-shorthand-creating-user-permissions/ mysql8不能create+grant，所以这里需要改成
CREATE DATABASE confluence CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER 'confluence'@'%' IDENTIFIED BY 'f9i3ogq4z4szbf94AZWM';
grant all on confluence.* to 'confluence'@'%';

-- confluence要求设置事务级别为 READ-COMMITTED,mysql8也改成 transaction_isolation
set global transaction_isolation='READ-COMMITTED';
```

[MySQL 四种事务隔离级的说明](https://www.cnblogs.com/zhoujinyi/p/3437475.html)
  ·未提交读(Read Uncommitted)：允许脏读，也就是可能读取到其他会话中未提交事务修改的数据
  ·提交读(Read Committed)：只能读取到已经提交的数据。Oracle等多数数据库默认都是该级别 (不重复读)
  ·可重复读(Repeated Read)：可重复读。在同一个事务内的查询都是事务开始时刻一致的，InnoDB默认级别。在SQL标准中，该隔离级别消除了不可重复读，但是还存在幻象读
  ·串行读(Serializable)：完全串行化的读，每次读都需要获得表级共享锁，读写相互都会阻塞

[十、MySql8设置事务隔离级别](https://blog.csdn.net/u010285974/article/details/82253040)
mysql8改成了 transaction_isolation

MySQL [mysql]> show variables like 'transaction_isolation';
+-----------------------+-----------------+
| Variable_name         | Value           |
+-----------------------+-----------------+
| transaction_isolation | REPEATABLE-READ |
+-----------------------+-----------------+

```bash
docker build -t confluence:6.6.1 .

docker run -d --name confluence -p 18010:8090 -e TZ="Asia/Shanghai" -v /home/kali/lab/confluence/data:/var/atlassian/confluence confluence:6.6.1.1
docker run -it --name confluence -p 18010:8090 -e TZ="Asia/Shanghai" -v /home/kali/lab/confluence/data:/var/atlassian/confluence confluence:6.6.1 bash
/entrypoint.py
docker run -d --name confluence \
  -p 18010:8090 \
  -e TZ="Asia/Shanghai" \
  -v /home/kali/lab/confluence/data:/var/atlassian/confluence \
  confluence:6.6.1

COPY "atlassian-agent-jar-with-dependencies.jar" /opt/atlassian/confluence/atlassian-agent.jar
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh
```

ERROR: Failed to find Premain-Class manifest attribute in /opt/atlassian/confluence/atlassian-agent.jar

应该用： atlassian-agent-jar-with-dependencies.jar

```basb
mv atlassian-agent-jar-with-dependencies.jar data/
mv /var/atlassian/confluence/atlassian-agent-jar-with-dependencies.jar /opt/atlassian/confluence/atlassian-agent.jar
/entrypoint.py
```

B48W-BW96-A2X2-CVT3

```bash
# 设置产品类型：-p conf， 详情可执行：java -jar atlassian-agent.jar 
java -jar atlassian-agent.jar -d -m test@test.com -n BAT -p conf -o http://192.168.0.89 -s B1BF-8EDE-GFRD-HFDH
java -jar atlassian-agent.jar -d -m xxx@test.com -n BAT  -p conf -o http://192.168.56.111 -s B1BF-8EDE-GFRD-HFDH
```

Confluence needs a driver to connect to MySQL. You'll need to:

Download the MySQL driver
Drop the .jar file in /opt/atlassian/confluence/confluence/WEB-INF/lib
Restart Confluence and continue the setup process.

https://dev.mysql.com/downloads/connector/j/8.0.html

172.17.0.1
jdbc:mysql://172.17.0.1/confluence?useUnicode=true&characterEncodeing=utf8
jdbc:mysql://172.17.0.1/confluence?useUnicode=true&characterEncoding=utf8mb4

jdbc:mysql://172.17.0.1:3307/confluence?useUnicode=true&characterEncoding=utf8

http://192.168.56.111:18010


```sql
# 创建confluence数据库及用户
drop DATABASE confluence;
CREATE DATABASE confluence CHARACTER SET utf8 COLLATE utf8_bin;
grant all on confluence.* to 'confluence'@'%' identified by 'M4Zyq4eQbmgWfoyfNVnp';

# confluence要求设置事务级别为READ-COMMITTED
set global tx_isolation='READ-COMMITTED';
```

RHOSTS      127.0.0.1                  yes       The target host(s), range CIDR identifier,
                                                    or hosts file with syntax 'file:<path>'
   RPORT       18010                      yes       The target port (TCP)
   SRVHOST     10.0.2.15                  yes       Callback address for template loading
   SRVPORT     4444                       yes       The local port to listen on.
LHOST  192.168.56.111   yes       The listen address (an interface may be specified)
   LPORT  4444             yes       The listen port
set RHOSTS 127.0.0.1
set RPORT 18010
set SRVHOST 10.0.2.15
set SRVPORT 4444

SRVHOST 和 LHOST 的区别是什么？
好像 SRVHOST 也是bind绑定的ip
也是payload 里写的ip
如果 LPORT 和 SRVPORT不一样，报bind错误

还有问题： 如果反向shell机器是SLB或是内网，外网漂移ip，SRVHOST 设备就没有办法

SRVHOST 通常是你在 web 服务器上发布攻击信息时设置的选项，如果你使用的攻击信息不会在 web 服务器上发布，那么 LHOST 就是你应该设置的选项。
SRVHOST is generally the option that you set when you are serving a exploit on a web server and LHOST is the option you would set if you were using a exploit that is not going to be served on a web server.
In Metasploit, LHOST, RHOST and SRVHOST are some of the most commonly used variable names. LHOST refers to the IP of your machine, which is usually used to create a reverse connection to your machine after the attack succeeds. RHOST refers to the IP address of the target host. And SRVHOST is where the module will connect to download additional payload elements.


Atlassian Confluence Widget Connector Macro - Velocity Template Injection (Metasploit)
https://www.exploit-db.com/exploits/46731

Atlassian Confluence Widget Connector Macro - SSTI
https://www.exploit-db.com/exploits/49465
2021-01-22

https://github.com/rapid7/metasploit-framework/blob/master/documentation/modules/exploit/multi/http/confluence_widget_connector.md
https://github.com/rapid7/metasploit-framework/blob/master/modules/exploits/multi/http/confluence_widget_connector.rb
