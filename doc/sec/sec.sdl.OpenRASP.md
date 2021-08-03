# OpenRASP

[开源应用运行时自我保护解决方案 - OpenRASP](https://rasp.baidu.com/)

[OpenRASP学习笔记](https://www.anquanke.com/post/id/216886)

[OpenRASP xss算法的几种绕过方法](https://www.anquanke.com/post/id/247612)

[OpenRASP](https://rasp.baidu.com/) |
[OpenRASP github](https://github.com/baidu/openrasp)

## 安装

### [安装 管理后台](https://rasp.baidu.com/doc/install/panel.html)

```bash
docker pull elasticsearch:6.8.17
docker save elasticsearch:6.8.17 -o elasticsearch-6.8.17.tar
docker load --input elasticsearch-6.8.17.tar
```

启动 `elasticsearch`

https://www.elastic.co/guide/en/elasticsearch/reference/6.8/docker.html

```bash
grep vm.max_map_count /etc/sysctl.conf
vm.max_map_count=262144
sysctl -w vm.max_map_count=262144

# 官方
docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:tag

docker run --name elasticsearch -d -p 9200:9200 -p 9300:9300 elasticsearch:6.8.17
```

docker-compose
```yaml
version: '3.1'
services:
  elasticsearch:
    image: elasticsearch:6.8.17
    restart: always
    environment:
      - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
      # - cluster.name=docker-cluster
      # - bootstrap.memory_lock=true
    expose:
      - 5432
    ports:
      - 9200:9200
      - 9300:9300
    volumes:
      - ./tools/:/srv/tools
      - esdata:/usr/share/elasticsearch/data
volumes:
  esdata:
    driver: local
```

不要设置：`bootstrap.memory_lock=true`

不然会报： `memory locking requested for elasticsearch process but memory is not locked`

安装mongo

```bash
docker pull mongo:4.4.7
docker save mongo:4.4.7 -o mongo-4.4.7.tar 
docker load --input mongo-4.4.7.tar
```

```YAML
version: '3.1'
services:
  mongo:
    image: mongo:4.4.7
    restart: always
    environment:
      MONGO_INITDB_ROOT_USERNAME: root
      MONGO_INITDB_ROOT_PASSWORD: example
    expose:
      - 27017
    ports:
      - 27017:27017
    volumes:
      - mongodb:/data/db
      - ./tools/:/srv/tools
volumes:
  mongodb:
    driver: local
```

```bash
use openrasp
db.createUser( { user: "openraspuser",
                 pwd: "xxx",
                 roles: ["readWrite"] },
               { w: "majority" , wtimeout: 5000 } )
```

启动后端管理平台

```bash
wget https://packages.baidu.com/app/openrasp/release/latest/rasp-cloud.tar.gz
gzip -d rasp-cloud.tar.gz
tar xvf rasp-cloud.tar 
vim conf/app.conf
./rasp-cloud -d
```

http://192.168.56.140:8086

默认账号密码： openrasp admin@123321

启动tomcat

https://tomcat.apache.org/download-90.cgi

http://192.168.56.140:8080/


下载 java agent

```bash
curl https://packages.baidu.com/app/openrasp/release/1.3.6/rasp-java.tar.gz -o rasp-java.tar.gz
tar -xvf rasp-java.tar.gz
cd rasp-*/

java -jar RaspInstall.jar -heartbeat 90 -appid 66ce24d42bf4a488da0aecf32c4708a6edca825b -appsecret jtamD1gULeAt6NjIq4bxqh1BapAaDTj65gGVokhE1D4 -backendurl http://192.168.56.140:8086/ -install /home/ubuntu/openrasp/apache-tomcat-9.0.50

# Duplicating "rasp" directory
# - /home/ubuntu/openrasp/apache-tomcat-9.0.50/rasp
# Make "rasp" directory writable

# Generating "openrasp.yml"
# - /home/ubuntu/openrasp/apache-tomcat-9.0.50/rasp/conf/openrasp.yml
# - Create /home/ubuntu/openrasp/apache-tomcat-9.0.50/rasp/conf/openrasp.yml
# Updating startup script
# - /home/ubuntu/openrasp/apache-tomcat-9.0.50/bin/catalina.sh
# Installation completed without errors.

/home/ubuntu/openrasp/apache-tomcat-9.0.50/bin/shutdown.sh
/home/ubuntu/openrasp/apache-tomcat-9.0.50/bin/startup.sh
```

在后台主机管理中可以看到

![](images/2021-07-22-14-24-26.png)

[安装测试用例](https://rasp.baidu.com/doc/install/testcase.html)

下载: https://packages.baidu.com/app/openrasp/testcases/vulns.war

放在 apache-tomcat-9.0.50/webapps

启动tomcat

http://192.168.56.140:8080/vulns/

使用用例，可以看到有记录，但我取消了日志模式，却并不能形成拦截

http://192.168.56.140:8080/vulns/012-jdbc-mysql.jsp

```sql
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;         
grant all privileges on test.* to 'test'@'%' identified by 'test';
grant all privileges on test.* to 'test'@'localhost' identified by 'test';
CREATE TABLE test.vuln (id INT, name text);
INSERT INTO test.vuln values (0, "openrasp");
INSERT INTO test.vuln values (1, "rocks");
```

创建用户

CREATE USER 'username'@'host' IDENTIFIED BY 'password';


[IAST: 一文洞悉DAST、SAST、IAST ](https://www.aqniu.com/learn/46910.html) 

[RASP实践分析](https://segmentfault.com/a/1190000039683378)

[daxia/websafe 使用docker快速搭建Permeate渗透测试系统实践](https://segmentfault.com/a/1190000017151621)

[IAST 灰盒扫描工具](https://github.com/baidu-security/openrasp-iast)

[大规模部署](https://rasp.baidu.com/doc/install/deploy.html)

[OpenRasp xxe算法的几种绕过方式](https://www.anquanke.com/post/id/241107)

[如何使用Django开发OpenRASP报警接收Web应用](https://www.freebuf.com/articles/web/253832.html)

