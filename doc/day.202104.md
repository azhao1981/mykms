# 202104

## 20210430

数据库：从注入到提权的全家桶套餐
https://www.freebuf.com/articles/database/270106.html

MoveKit：一款功能强大的Cobalt Strike横向渗透套件
https://www.freebuf.com/sectool/270163.html
如何使用Gotestwaf测试你的WAF检测能力
https://www.freebuf.com/articles/network/269585.html

[ApplicationScanner：一款App等保的预检测工具](https://www.freebuf.com/sectool/270360.html)

```bash
git clone https://github.com/paradiseduo/ApplicationScanner.git
pip install -r -r requirements.txt
python AppScanner.py -i xxx.apk 
```

四字节的力量：在Linux内核中利用CVE-2021-26708
https://www.anquanke.com/post/id/238141

Hvv样本合集分析（二）- Golang恶意样本分析
https://www.anquanke.com/post/id/239246#h3-5

[数据安全如何定级](https://www.freebuf.com/articles/database/270513.html)

http://projects.webappsec.org/w/page/13246920/Cross%20Site%20Scripting

## 20210429

看我如何通过 ZoomEye 发现后门设备
https://paper.seebug.org/1576/

Linux 内核安全机制总结
https://www.anquanke.com/post/id/238363

## 20210428

[红队攻防基础建设—神隐之路](https://www.anquanke.com/post/id/239640)
> 域前置

How to identify and exploit HTTP Host header vulnerabilities 如何识别和利用HTTP主机报头漏洞
https://portswigger.net/web-security/host-header/exploiting#top

[Accessing and dumping Jenkins credentials](https://www.codurance.com/publications/2019/05/30/accessing-and-dumping-jenkins-credentials)

[渗透测试之地基内网篇：域森林中权限提升（上） 会员](https://www.freebuf.com/articles/web/268865.html)

最新安全版本： 5.7.34 8.0.24
Oracle MySQL Server拒绝服务漏洞（CVE-2021-2194）
http://www.nsfocus.net/vulndb/54072
Oracle MySQL Server拒绝服务漏洞（CVE-2021-2166）
http://www.nsfocus.net/vulndb/54074
Oracle MySQL Server拒绝服务漏洞（CVE-2021-2196）
http://www.nsfocus.net/vulndb/54076
## 20210427

个人敏感信息明文传输风险案例解析
https://opendocs.alipay.com/rules/01n2xe

安全漏洞风险案例解析|邮箱漏洞
https://opendocs.alipay.com/rules/01ocj1

对url加密的方法及装置、url验证的方法及装置
https://patents.google.com/patent/CN102594557A/zh

VS Code插件开发介绍（一）
https://segmentfault.com/a/1190000016641617

vscode插件开发
https://hellogithub2014.github.io/2019/06/09/vscode-plugin-development/

PoisonApple：一款针对macOS的持久化工具
https://www.freebuf.com/articles/system/269129.html

NAT 原理以及 UDP 穿透
https://www.anquanke.com/post/id/238765

OSSEC Linux RootKit检测部分源码分析
https://www.anquanke.com/post/id/238774

Fuzzingbook学习指南 Lv1
https://www.anquanke.com/post/id/238224


## 20210426

OWASP安全测试指南解读
https://www.freebuf.com/articles/network/228005.html

浅谈Web渗透测试
https://www.freebuf.com/articles/network/230601.html

## 20210425
CVE-2021-24086：Windows IPv6分片漏洞分析
https://www.anquanke.com/post/id/237694

从这几天情况看蜜罐新技术和发展走向
https://www.freebuf.com/articles/system/269252.html

蓝队的自我修养之如何从流量中检测 WebShell
https://www.freebuf.com/articles/network/269770.html

SonarSource SonarQube是瑞士SonarSource公司的一套开源的代码质量管理系统。 SonarQube 8.4.2.36762版本存在安全漏洞，攻击者可利用该漏洞通过api设置值URI发现明文SMTP、SVN和GitLab凭证。
漏洞详情：https://csl.com.co/sonarqube-auditando-al-auditor-parte-i/
目前厂商已发布升级补丁以修复漏洞，补丁获取链接： https://csl.com.co/sonarqube-auditando-al-auditor-parte-i/


近日，阿里云应急响应中心捕获到 XXL-JOB API 接口未授权访问致反序列化漏洞。
漏洞详情：https://help.aliyun.com/noticelist/articleid/1060736995.html
XXL-JOB是一个轻量级分布式任务调度平台。默认情况下XXL-JOB的Restful API接口或RPC接口没有配置认证措施，未授权的攻击者可构造恶意请求，造成远程执行命令，直接控制服务器。阿里云应急响应中心提醒 XXL-JOB 用户尽快采取安全措施阻止漏洞攻击。
影响版本
XXL-JOB <= 2.2.0

2021年1月15日，阿里云应急响应中心监控到开源堡垒机JumpServer发布更新，修复了一处远程命令执行漏洞。
漏洞详情：https://help.aliyun.com/noticelist/articleid/1060784724.html
JumpServer 是全球首款完全开源的堡垒机, 使用GNU GPL v2.0 开源协议, 是符合4A 的专业运维审计系统。 JumpServer 使用Python / Django 进行开发。2021年1月15日，阿里云应急响应中心监控到开源堡垒机JumpServer发布更新，修复了一处远程命令执行漏洞。由于 JumpServer 某些接口未做授权限制，攻击者可构造恶意请求获取到日志文件获取敏感信息，或者执行相关API操作控制其中所有机器。阿里云应急响应中心提醒 JumpServer 用户尽快采取安全措施阻止漏洞攻击。


影响版本
JumpServer < v2.6.2
JumpServer < v2.5.4
JumpServer < v2.4.5

修复建议
安全版本
JumpServer < v2.6.2
JumpServer < v2.5.4
JumpServer < v2.4.5
JumpServer = v1.5.9

安全建议
1、升级 JumpServer 至最新版本。
2、设置当前产品的控制台登录IP地址白名单限制。

2021年1月23日，蚂蚁安全非攻实验室 @fatansyC4t 向Apache官方报告了Apache Skywalking SQL注入与远程代码执行漏洞。2021年2月7日，阿里云应急响应中心监测到 Apache Skywalking 官方发布安全更新修复该漏洞。
漏洞详情：https://help.aliyun.com/noticelist/articleid/1060803348.html
详情
Apache SkyWalking是一款开源的应用性能监控系统，包括指标监控，分布式追踪，分布式系统性能诊断。Apache SkyWalking的某GraphQL功能存在SQL注入漏洞，攻击者可以构造恶意请求查询数据库敏感信息，或利用H2数据路特性进一步造成远程代码执行漏洞。阿里云应急响应中心提醒  Apache Skywalking 用户尽快采取安全措施阻止漏洞攻击。
​
修复建议
安全版本
Apache Skywalking < v8.4.0

安全建议
1、升级Apache Skywalking 到最新的 v8.4.0 版本。
2、将默认h2数据库替换为其它支持的数据库。

## 20210423

120公里/小时
120*1000/3600 = 33米/s
一百米需要3s
已知车从 27.7m/s 降到 0m/s 需要 40m 
100*1000/3600 = 27.7m/s
40
https://www.autohome.com.cn/4078/0/3/Section.html
https://www.thepaper.cn/newsDetail_forward_2144681


Elkeid Server 开源 && Elkeid Agent 更新
https://paper.seebug.org/1566/
https://github.com/bytedance/Elkeid/tree/main/server
https://gitee.com/azhao-1981/Elkeid

azazel linux下基于预加载的注入——文件隐藏篇
https://www.anquanke.com/post/id/237030
一文带你手撕metasploit中meterprter木马源码
https://www.anquanke.com/post/id/238270
二进制分析从工具说起
https://www.anquanke.com/post/id/238291
openssh 源码分析权限维持
https://www.anquanke.com/post/id/237497

https://hexapdf.gettalong.org/index.html
pdf
📫 Rails Engine to preview emails in the browser|浏览器预览mail
https://github.com/markets/maily
https://blog.cmol.me/creating-a-udp-server-with-ruby-ractors-be4ff65a8400
https://github.com/piotrmurach/awesome-ruby-cli-apps
https://evilmartians.com/chronicles/hotwire-reactive-rails-with-no-javascript
https://github.com/auth0/omniauth-auth0
A gem to spy queries running with Active Record and report missing indexes|how
https://github.com/WeTransfer/wt_activerecord_index_spy

Listing the contents of a remote ZIP archive, without downloading the entire file|多线程下载的原理
https://rhardih.io/2021/04/listing-the-contents-of-a-remote-zip-archive-without-downloading-the-entire-file/

chmod 600 中 600详解
https://blog.rebased.pl/2021/04/06/eli5-bitfields.html

rails加安全 auth-base
https://blog.arkency.com/common-authentication-for-mounted-rack-apps-in-rails/

puma 服务挂起调教
https://itnext.io/why-puma-workers-constantly-hung-and-how-we-fixed-by-discovering-the-bug-of-ruby-v2-5-8-and-v2-6-6-7fa0fd0a1958



Chrome 任意代码执行漏洞分析
https://paper.seebug.org/1563/

Linux 内核蓝牙协议栈漏洞（BleedingTooth）利用分析与复现
https://paper.seebug.org/1564/

如何使用Maigret根据用户名进行OSINT信息收集
https://www.freebuf.com/articles/database/268703.html

某单位攻防演练期间的一次应急响应
https://www.freebuf.com/articles/web/270265.html
内网渗透基石篇：内网基础知识及域环境搭建
https://www.freebuf.com/articles/web/267824.html


https://github.com/ory/keto
Open Source (Go) implementation of "Zanzibar: Google's Consistent, Global Authorization System". Ships gRPC, REST APIs, newSQL, and an easy and granular permission language. Supports ACL, RBAC, and other access models.
https://github.com/ory/kratos
Next-gen identity server (think Auth0, Okta, Firebase) with Ory-hardened authentication, MFA, FIDO2, profile management, identity schemas, social sign in, registration, account recovery, service-to-service and IoT auth. Can work as an OAuth2 / OpenID Connect Provider. Golang, headless, API-only - without templating or theming headaches.

https://github.com/keycloak/keycloak
https://casbin.org/en/
https://www.openpolicyagent.org/


## 20210422

【公益译文】安全控制评估自动化支持：软件漏洞管理（三）
http://blog.nsfocus.net/nistir-8011-4-3/

## 20210421

[【公益译文】安全控制评估自动化支持：软件漏洞管理（二）](http://blog.nsfocus.net/nistir-8011-4-2/)

[CVE-2021-25646 Apache Druid 远程代码执行漏洞分析](https://www.anquanke.com/post/id/235831)

[BlackHat：HTTP 请求走私的新变体、新防御](https://www.anquanke.com/post/id/237140)

[Empire的基本使用和域渗透](https://www.anquanke.com/post/id/236174)

## 20210420



https://github.com/immunant/c2rust

NAT 原理以及 UDP 穿透
https://paper.seebug.org/1561/

多平台的敏感信息监测工具-GShark
https://paper.seebug.org/1560/

【安全通报】WebLogic 0day反序列化漏洞
https://nosec.org/home/detail/4740.html

多路非对称攻击：HTTP/2服务器上的下一代DDoS
https://www.anquanke.com/post/id/232060
NodeJS从零开始到原型链污染
https://www.anquanke.com/post/id/236182

## 20210419

https://github.com/tanprathan/OWASP-Testing-Checklist
https://www.zaproxy.org/docs/developer/quick-start-build/

https://github.com/QPromise/EasyTrans
https://github.com/topics/pdf-to-word
https://github.com/dothinking/pdf2docx
git clone git@github.com:fengdongdongwsn/PdfTool.git
GitHub开源神器：教你如何实现 PDF 转 Word
https://blog.csdn.net/github_shequ/article/details/107118489
https://nikku1234.github.io/2020-09-27-PDF-Conversions-using-Python-Packages/
编程电子书，电子书，编程书籍，包括C，C#，Docker，Elasticsearch，Git，Hadoop，HeadFirst，Java，Javascript，jvm，Kafka，Linux，Maven，MongoDB，MyBatis，MySQL，Netty，Nginx，Python，RabbitMQ，Redis，Scala，Solr，Spark，Spring，SpringBoot，SpringCloud，TCPIP，Tomcat，Zookeeper，人工智能，大数据类，并发编程，数据库类，数据挖掘，新面试题，架构设计，算法系列，计算机类，设计模式，软件测试，重构优化，等更多分类
https://github.com/itdevbooks/pdf
https://github.com/mynane/PDF
https://github.com/ECNUdase/pdf

Best 8 Open Source PDF to Word Converter
https://www.acethinker.com/convert-pdf-free/open-source-pdf-to-word-converter.html

Top 5 Open Source PDF to Word Converter Software
https://pdf.iskysoft.com/pdf-converter/pdf-to-word-open-source-converter.html

The best free PDF to Word converter 2021: convert PDFs for easier editing
https://www.techradar.com/best/free-pdf-to-word

Grank：如何评估一个 Github 项目的活跃度
https://zhuanlan.zhihu.com/p/47359735
https://gitee.com/azhao-1981/rubytoolbox

十个惊艳到你的高质量GitHub开源项目，你看过吗
https://cloud.tencent.com/developer/news/627497

红蓝对抗提权篇之一文看懂提权
https://www.freebuf.com/articles/network/268221.html
红蓝对抗钓鱼篇之从入门到放弃
https://www.freebuf.com/articles/network/267251.html

## 20210417
https://github.com/0xtz/Enum_For_All


## 20210416
https://positive.security/blog/url-open-rce
https://doar-e.github.io/blog/2021/04/15/reverse-engineering-tcpipsys-mechanics-of-a-packet-of-the-death-cve-2021-24086/

58集团白盒代码审计系统建设实践2：深入理解SAST
https://www.anquanke.com/post/id/237801
基于机器学习的自动漏洞修复分析方法
https://www.anquanke.com/post/id/231450
Chromium V8 JavaScript引擎远程代码执行漏洞分析讨论
https://www.anquanke.com/post/id/238343
从git原理角度浅谈.git泄露利用原理
https://www.anquanke.com/post/id/236487



https://github.com/jaredonline/google-authenticator
https://www.zhihu.com/question/20462696
谷歌验证 (Google Authenticator) 的实现原理是什么？
基于时间的一次性密码算法（TOTP）是一种根据预共享的密钥与当前时间计算一次性密码的算法。它已被互联网工程任务组接纳为RFC 6238标准[1]，成为主动开放认证（OATH）的基石，并被用于众多多重要素验证系统当中。

## 20210415


https://dev.to/humblecoder00/comprehensive-big-o-notation-guide-in-plain-english-using-javascript-3n6m
https://dev.to/fossheim/i-drew-a-synthesizer-with-html-css-53f
https://dev.to/afif/another-100-underline-overlay-animations-the-extended-css-collection-574c
https://dev.to/jemimaabu/how-i-built-my-perfect-score-portfolio-website-4ek0

【贈初學者】 一些滲透測試學習資料集合
https://www.evilrm.com/t/5

红日攻防实验室
https://github.com/redBu1l/pentest_book/blob/master/Pentest_Books.md
白帽子安全开发实战配套代码仓库
https://github.com/netxfly/sec-dev-in-action-src

蓝队的自我修养之事后溯源（归因）
https://www.freebuf.com/articles/network/269240.html
如何打造自己的PoC框架-Pocsuite3-框架篇
https://paper.seebug.org/913/
固定资产下的快速刷洞：简易POC框架的打造
https://www.freebuf.com/sectool/267793.html

List Of 37 courses for all IT Greek.

Watch Now.

Full Stack Web Developer Bootcamp
https://www.youtube.com/watch?v=KVrpyhZpv2g

Linux Mastery Master the Linux Command Line
https://www.youtube.com/watch?v=f0Xsg4vKWXg

Introduction to Computer Networks for Non Techies
https://www.youtube.com/watch?v=aFzxweQ_iMk

The Complete Java Developer Course
https://www.youtube.com/watch?v=Oyiy57z6ZkU

Cyber Security Hands-on: Complete Network Security A-Z™
https://www.youtube.com/watch?v=HLrJlsxomks

Red Hat Linux Certified System Admin SA1 RHEL7
https://www.youtube.com/watch?v=0yK5H6boJRE

Learn operating system
https://youtu.be/R-g2b9N_jrs

Start using wireshark to hack like a pro
https://youtu.be/MNSlJa344qE

Ethical hacking the most advanced level nmap course
https://youtu.be/tsaeF9oraCM

Ethical password hacking and protecting
https://youtu.be/tWW_6sQNXqo

Html, JavaScript and bootstrap certification course
https://youtu.be/yzNY5O0uNtY

Penetration testing with kali and more all you need to know
https://youtu.be/sOtdzjibKGg

Website traffic coursedrive unlimited traffic no need seo
https://youtu.be/eYPFZKhZN-U

Start Kali Linux, ethical hacking and penetrating testing
https://youtu.be/_As-rx86f-4

Complete Ethical Hacking Certification Course Zero to Hero
https://youtu.be/BsgxuFEGlFk

Master in hacking with Metasploit
https://youtu.be/vRvT7ldjLIA

Java Programming Step by Step from A to Z
https://youtu.be/pF6QNV5jsGY

Master in wifi ethical hacking
https://youtu.be/7ySz4IZile8

The beginners guide to cyber security 2019
https://youtu.be/gUbeqABFaGM

The complete ethical hacking Masterclass beginning to expert
https://youtu.be/bbIDOFDIXjA

Front End web development for beginners A practice guide.
https://youtu.be/CTcxaJT2cok

Machine Learning and AI Support Vector Machines in Python
https://youtu.be/ICYO7VVXDFU

Anatomy of a Cyber Attack   Beginner Hacking with Metasploit
https://youtu.be/6uun2IQjTaM

Learn Linux in 5 Days and Level Up Your Career
https://www.youtube.com/watch?v=bvpN9N8H3NE

Easy Adsense Method Using Whatsapp Free Traffic 2019
https://www.youtube.com/watch?v=DttRY_H6juc&t=1s

Build A Successful Blog In 2019 Make Money
https://www.youtube.com/watch?v=ihG7MEuABAQ

Web Hacking: Become a Professional Web Pentester
https://www.youtube.com/watch?v=OTcfjWGCxII

Complete Cyber Security Course Go from zero to hero!
https://www.youtube.com/watch?v=oILl8E3XlkA

Most Advanced Level Ethical Hacking Using Kali Linux
https://www.youtube.com/watch?v=kmfKuvEbHEc

kali linux penetration testing recipes
https://www.youtube.com/watch?v=YkKOUuU74mU

Building Ethical Hacking Python Tools From Scratch
https://www.youtube.com/watch?v=wMYf2NEvauo

Cyber Security and Information Security Fundamentals 2019
https://www.youtube.com/watch?v=ZqSdEMkMl7k

A Hacker's Guide to Internet Safety and Cybersecurity
https://www.youtube.com/watch?v=hDSbACac-CU

Learn Network Hacking From Scratch (WiFi & Wired)
https://www.youtube.com/watch?v=3u2rRM4LnsY

How Hackers Create Undetectable Malware and Viruses
https://www.youtube.com/watch?v=2jhbJyWn8W8

Ethical Hacking using Linux & Termux From Scratch
https://www.youtube.com/watch?v=NH9tEw8KiQc

REAL World Website Hacking and Penetration (101% Practical) 2019
https://www.youtube.com/watch?v=bYMC-3lLJX8&t=1s


## 20210414


https://github.com/r3curs1v3-pr0xy/vajra
如何使用Vajar进行自动化Web应用渗透测试
https://www.freebuf.com/articles/web/267826.html

https://github.com/heilla/SecurityTesting
wordlists awesome
https://github.com/heilla/SecurityTesting/blob/master/wordlists/Collection%20of%20wordlists.md
A virtual host scanner that performs reverse lookups, can be used with pivot tools, detect catch-all scenarios, work around wildcards, aliases and dynamic default pages.
https://github.com/codingo/VHostScan

Chrome0Day预警
[【安全通报】Chrome 远程代码执行漏洞（0day）](https://nosec.org/home/detail/4731.html)
描述： 攻击者利用此漏洞，可以构造一个恶意的web页面，当用户访问该页面时，会造成远程代码执行。
[【POC公开】Chrome 远程代码执行0Day漏洞通告](https://mp.weixin.qq.com/s/dZl_Urk8cOJ1Qbe16HBFGQ)
  临时修补建议:强烈建议广大用户在SandBox模式下运行Chrome
  [Chrome谷歌浏览器沙盒模式更强悍](https://www.mydll.com.cn/post/1663.html)
  特别说明：Chrome浏览器沙盒功能默认开启，无需自行设定，实际上也没有设置选项
POC:
https://github.com/r4j0x00/exploits/tree/master/chrome-0day
  https://github.com/r4j0x00/exploits.git
    + 运行后看到是crash了，但是运行了什么代码？一些demo显示能打开计算器什么的

[【安全通报】Apache Solr多个漏洞通告（CVE-2021-27905等）](https://nosec.org/home/detail/4730.html)

https://gregoryszorc.com/blog/2021/04/13/rust-is-for-professionals/

https://www.honeybadger.io/blog/http-caching-ruby-rails/
http://www.talkingquickly.co.uk/kubernetes-sso-a-detailed-guide
https://longliveruby.com/articles/building-dsl-with-ruby

https://evilmartians.com/chronicles/set-up-tailwind-css-jit-in-a-rails-project-to-compile-styles-20x-faster
https://gorails.com/episodes/stripe-checkout-rails
https://hschne.at/2021/04/04/build-real-time-clis-with-actioncable.html

## 20210413

代码分析工具joern的基本用法
https://www.anquanke.com/post/id/236184
深度分析CobaltStrike（一）—— Beacon生成流程及Shellcode分析
https://www.anquanke.com/post/id/237127
使用Sysmon和Winlogbeat打造Windows平台的HIDS
https://www.anquanke.com/post/id/236222

## 20210412

JWT jku/x5u Authentication bypass 学习与实践
https://www.anquanke.com/post/id/236830
CVE-2021-24074 TCP/IP协议栈漏洞分析
https://www.anquanke.com/post/id/235165
etcd未授权访问的风险及修复方案详解
https://www.anquanke.com/post/id/236831
浅谈安全运营的二三事
https://www.freebuf.com/articles/266036.html
账号安全那些事儿
https://www.freebuf.com/articles/network/266851.html

https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_8.2-9.2.1_%E6%B3%A8%E5%85%A5GetShell%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_8.2_-_9.2.1%E5%89%8D%E5%8F%B0Getshell%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_11.6_%E4%BB%BB%E6%84%8F%E6%96%87%E4%BB%B6%E8%AE%80%E5%8F%96%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_11.6_%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E5%A5%87%E5%AE%89%E4%BF%A1NS-NGFW_%E7%B6%B2%E5%BA%B7%E9%98%B2%E7%81%AB%E7%89%86%E5%89%8D%E8%87%BARCE%E6%BC%8F%E6%B4%9E

Erlang Cookie 遠程代碼執行漏洞
https://www.pwnwiki.org/index.php?title=Erlang_Cookie_%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E
https://insinuator.net/2017/10/erlang-distribution-rce-and-a-cookie-bruteforcer/
利用erlang的4369端口，如果知道共享cookie,可以直接执行
如果没有，由于erlang没有检查暴力破解，也可以使用工具暴力破解 密码是：random string [A:Z] with a length of 20 characters

Contextual Content Discovery Tool
https://github.com/assetnote/kiterunner
When you don’t realize you’re bleeding or data leaks without hacking by Ivan Glinkin
https://hakin9.org/data-leaks-without-hacking/

https://castilho101.github.io/midnightsun-2021-ctf/
https://muzec0318.github.io/posts/BufferOverflow.html
Exploiting Windows RPC to bypass CFG mitigation: analysis of CVE-2021-26411 in-the-wild sample
https://iamelli0t.github.io/2021/04/10/RPC-Bypass-CFG.html

## 20210410

https://github.com/assetnote/kiterunner

CVE-2019-10173 Xstream 1.4.10遠程代碼執行漏洞
https://www.pwnwiki.org/index.php?title=CVE-2019-10173_Xstream_1.4.10%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E
## 20210409

17 Cookie 的 HttpOnly 和 Secure 属性作用
https://www.jianshu.com/p/b507f9a19447

Cookie的Secure属性，意味着保持Cookie通信只限于加密传输，指示浏览器仅仅在通过安全/加密连接才能使用该Cookie。如果一个Web服务器从一个非安全连接里设置了一个带有secure属性的Cookie，当Cookie被发送到客户端时，它仍然能通过中间人攻击来拦截。

Cookie的HttpOnly属性，指示浏览器不要在除HTTP（和 HTTPS)请求之外暴露Cookie。一个有HttpOnly属性的Cookie，不能通过非HTTP方式来访问，例如通过调用JavaScript(例如，引用document.cookie），因此，不可能通过跨域脚本（一种非常普通的攻击技术）来偷走这种Cookie。尤其是Facebook 和 Google 正在广泛地使用HttpOnly属性。


Mssql手工注入执行命令小记
https://www.anquanke.com/post/id/237031
Xstream反序列化远程代码执行漏洞深入分析
https://www.anquanke.com/post/id/237207

CloudBees Jenkins数据验证漏洞（CVE-2021-21639）
http://www.nsfocus.net/vulndb/53590
CloudBees Jenkins视图名称验证绕过漏洞（CVE-2021-21640）
http://www.nsfocus.net/vulndb/53591
CloudBees Jenkins Promoted Builds Plugin跨站请求伪造漏洞（CVE-2021-21641）
http://www.nsfocus.net/vulndb/53592


VSCode 下的 frida 插件
https://paper.seebug.org/1553/

一个出人意料的虚拟机漏洞
https://paper.seebug.org/1550/

CVE-2020-12352&CVE-2020-12351 Linux Kernel 5.4 BleedingTooth遠程代碼執行漏洞
https://www.pwnwiki.org/index.php?title=CVE-2020-12352%26CVE-2020-12351_Linux_Kernel_5.4_BleedingTooth%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E

Linux Kernel 5.4 - 'BleedingTooth' Bluetooth Zero-Click Remote Code Execution
https://www.exploit-db.com/exploits/49754?utm_source=dlvr.it&utm_medium=twitter

https://bendtheory.medium.com/journeys-in-quoteless-and-multi-reflection-xss-b1d67bb0c5dd

## 20210408
基于Frida的Windows厚客户端SSL流量解析研究
https://www.freebuf.com/articles/web/265860.html

个人隐私保护
https://www.freebuf.com/column/2293

防守方攻略：四大主流WebShell管理工具分析
https://www.freebuf.com/sectool/268477.html
IDA 辅助工具Karta——二进制文件中搜索开源代码
https://www.anquanke.com/post/id/235632
源海拾贝 | hooker自动化生成frida脚本
https://www.anquanke.com/post/id/236820

https://infosecwriteups.com/powershell-reverse-shell-with-social-engineering-toolkit-90506e891269
https://google.github.io/security-research/pocs/linux/bleedingtooth/writeup.html
BleedingTooth: Linux Bluetooth Zero-Click Remote Code Execution

## 20210407

https://reconshell.com/threatmapper-identify-vulnerabilities-in-running-containers/

今天有很多
https://github.com/advisories
Cross-site scripting in actionpack
https://github.com/advisories/GHSA-35mm-cc6r-8fjp
jetty三个
https://github.com/advisories/GHSA-j6qj-j888-vvgq
https://github.com/advisories/GHSA-26vr-8j45-3r4w
https://github.com/advisories/GHSA-v7ff-8wcx-gmc5

CVE-2021-25329
Potential remote code execution in Apache Tomcat
https://github.com/advisories/GHSA-jgwr-3qm3-26f3

HIDS-Agent开发之检测反弹shell
https://www.anquanke.com/post/id/235717

防守方攻略：四大主流WebShell管理工具分析
https://www.freebuf.com/sectool/268477.html

Xstream 反序列化远程代码执行漏洞深入分析
https://paper.seebug.org/1543/

https://www.secjuice.com/web-application-firewall-waf-evasion/
https://medium.com/secjuice/waf-evasion-techniques-718026d693d8

## 20210406
Linux的Cgroups在HIDS-Agent资源限制上的应用
https://www.freebuf.com/articles/system/265733.html
https://www.freebuf.com/sectool/266896.html
安全研究 | 使用Procrustes从DNS流量中提取数据

## 20210405

Redis堆缓冲区溢出漏洞（CVE-2021-3470）
http://www.nsfocus.net/vulndb/53544

Windows渗透基础大全
https://www.anquanke.com/post/id/236522

WEB密码学攻击方式从0到1
https://www.anquanke.com/post/id/235190

## 20210404

https://github.com/dwisiswant0/awesome-oneliner-bugbounty
https://infosecwriteups.com/sql-injection-for-noobs-3677eac68d38

## 20210402
https://www.exploit-db.com/exploits/49736
phpPgAdmin 7.13.0 - COPY FROM PROGRAM Command Execution (Authenticated)
【安全通报】Gitlab 多处高危漏洞
https://nosec.org/home/detail/4719.html

（CSA 共识评估调查问卷）CSA Consensus Assessments Initiative Questionnaire
https://blog.csdn.net/wumeng2012/article/details/84335517

https://www.nist.gov/publications/guide-security-full-virtualization-technologies
Guide to Security for Full Virtualization Technologies
https://tsapps.nist.gov/publication/get_pdf.cfm?pub_id=907776
NIST 网络安全相关标准 美国 （简单整理）
https://blog.csdn.net/m0_46232048/article/details/107924430
美国国家标准与技术研究院
http://www.ecas.cas.cn/xxkw/kbcd/201115_83700/ml/xxhjsyjcss/201111/t20111117_3397740.html
NIST 網路安全相關標準 美國 （簡單整理）
https://tw511.com/a/01/7818.html
https://github.com/decalage2/awesome-security-hardening
## 20210401

A FREE comprehensive reverse engineering course covering x86, x64, 32-bit ARM & 64-bit ARM architectures.
https://github.com/mytechnotalent/Reverse-Engineering

https://www.bleepingcomputer.com/news/security/fake-jquery-files-infect-wordpress-sites-with-malware/amp/?__twitter_impression=true

learn365的脑图笔记： This repo is about @harshbothra_ 365 days of learning Tweet & Mindmap collection
https://github.com/harsh-bothra/learn365

备忘录app Memo is an Anki mobile app written in Flutter
https://github.com/olmps/memo

nerdctl: 适用于Containerd的、与docker兼容的cli - https://medium.com/nttlabs/nerdctl-359311b32d0e
Docker-compatible CLI for containerd
https://github.com/containerd/nerdctl

Go中集合类型的高阶函数 | Gopher Daily (2021.03.30) ʕ◔ϖ◔ʔ
https://zhuanlan.zhihu.com/p/360967517
Go语言爱好者周刊：第 73 期
https://jishuin.proginn.com/p/763bfbd34492


https://github.com/stashapp/stash
https://github.com/elastic/ansible-elasticsearch
ent是一个简单而又功能强大的Go语言实体框架，ent易于构建和维护应用程序与大数据模型。
图就是代码 - 将任何数据库表建模为Go对象。
轻松地遍历任何图形 - 可以轻松地运行查询、聚合和遍历任何图形结构。
静态类型和显式API - 使用代码生成静态类型和显式API，查询数据更加便捷。
多存储驱动程序 - 支持MySQL, PostgreSQL, SQLite 和 Gremlin。
可扩展 - 简单地扩展和使用Go模板自定义。

看能不能自动添加安全的要求
https://github.com/elastic/ansible-elasticsearch

https://github.com/pyinstaller/pyinstaller
* On Debian/Ubuntu, you would need to install Python development packages
  * apt-get install python3-dev
  * apt-get install python-dev
* If you're building Python by yourself, please rebuild your Python with `--enable-shared` (or, `--enable-framework` on Darwin)
光helloworld，发现安装时没有安装东西，需要rebuild
https://github.com/gto76/python-cheatsheet

了解SSRF,这一篇就足够了
https://xz.aliyun.com/t/2115
A Pentester’s Guide to Server Side Request Forgery (SSRF)
https://cobalt.io/blog/a-pentesters-guide-to-server-side-request-forgery-ssrf
4.4. SSRF
https://websec.readthedocs.io/zh/latest/vuln/ssrf.html
Web安全学习笔记
https://websec.readthedocs.io/zh/latest/index.html
SSRF安全指北
https://security.tencent.com/index.php/blog/msg/179
一个vmware的例子： CVE-2021-21975
https://attackerkb.com/topics/51Vx3lNI7B/cve-2021-21975?referrer=notificationEmail#rapid7-analysis


30 Days of React challenge is a step by step guide to learn React in 30 days. It requires HTML, CSS, and JavaScript knowledge. You should be comfortable with JavaScript before you start to React. If you are not comfortable with JavaScript check out 30DaysOfJavaScript. This is a continuation of 30 Days Of JS. This challenge may take up to 100 day…
https://github.com/Asabeneh/30-Days-Of-React
该系列包括数组，链表，树，图，递归，DP，有序表等相关数据结构与算法的讲解及代码实现。
https://github.com/Dairongpeng/algorithm-note

https://github.com/randallkanna/awesome-job-list

https://threejs.org/

this is downloadings of all educative.io free student subscription courses as pdf from GitHub student pack
https://github.com/merry75/educative.io_courses

这可能是史上功能最全的Java权限认证框架！目前已集成——登录验证、权限验证、Session会话、踢人下线、分布式会话、单点登录、OAuth2.0、记住我模式、模拟他人账号、临时身份切换、集成Redis、多账号认证体系、前后台分离模式、注解式鉴权、路由拦截式鉴权、花式token生成、自动续签、同端互斥登录、会话治理、密码加密、jwt集成、Spring集成...
https://github.com/dromara/sa-token

这是一个 高质量 的 TypeScript 类型定义的仓库。
https://github.com/DefinitelyTyped/DefinitelyTyped
https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/README.cn.md


一个由Spring安全团队领导的社区驱动的项目，专注于向Spring社区交付授权服务器支持
A community-driven project led by the Spring Security team and is focused on delivering Authorization Server support to the Spring community
https://github.com/spring-projects-experimental/spring-authorization-server

不错的工具，可以更简洁的查看日志等
Program to convert lines of text into a tree structure.
https://github.com/birchb1024/frangipanni

Osintgram is a OSINT tool on Instagram. It offers an interactive shell to perform analysis on Instagram account of any users by its nickname
https://github.com/Datalux/Osintgram

SQL注入漏洞详解
https://www.anquanke.com/post/id/235970

Kubestriker：一款针对Kubernetes的快速安全审计工具
https://www.anquanke.com/post/id/235479
攻防演练前的安全隐患排查工作指南
https://www.freebuf.com/articles/268203.html