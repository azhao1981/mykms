# java 漏洞

[tomcat](sec.vuls.java.tomcat.md)

[shiro](sec.vuls.java.shiro.md)

[fastjson](sec.vuls.java.fastjson.md)

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

## Struts2

[Struts2漏洞复现合集](https://www.freebuf.com/articles/web/280245.html)

[Struts2-001 远程代码执行漏洞浅析](https://www.anquanke.com/post/id/246100)

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

### xstream

Java安全之 Xstream 漏洞分析
https://www.anquanke.com/post/id/248029
https://x-stream.github.io/security.html
https://x-stream.github.io/tutorial.html

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
