# 202108
## 20210831

https://www.blackhillsinfosec.com/webcast-your-free-and-open-source-edr-options/

There has been a huge explosion of different free and open-source options for EDR in the security space. Which is nice because the commercial offerings are stupid expensive. In this Black Hills Information Security (BHIS) webcast, we look at OpenEDR, Elastic, and Velociraptor. With all these great options, there is no reason your organization should not have one of these offerings. Further, they are essential for any IR gig you may do.
https://www.elastic.co/cn/endpoint-security/
https://www.velocidex.com/about/
https://wazuh.com/


https://openedr.com/
https://github.com/ComodoSecurity/openedr/
https://www.reddit.com/r/sysadmin/comments/jszjqp/comodo_opensources_its_edr_solution/

TheHive: a Scalable, Open Source and Free Security Incident Response Platform
https://github.com/TheHive-Project/TheHive
https://thehive-project.org/
Hive 项目是一个“面向大众的安全事件响应(平台)”，利用开源、可扩展和免费的解决方案。
该产品旨在帮助 cert、 SOCs 和 csirt 根据各种提示(如观察或定制创建的警报)起草更快和详细的安全事故报告。

https://github.com/ION28/BLUESPAWN
An Active Defense and EDR software to empower Blue Teams


Open-source EDR tools
https://heimdalsecurity.com/blog/open-source-edr-tools/
OSSEC is open-source and free software that offers HIDS, HIPS, log analysis, real-time Windows registry monitoring, and other EDR features. 
The software can be downloaded from the official website or the developer’s GitHub page. OSSEC is mostly addressed to large enterprises, SMBs, and governmental agencies in search of server intrusion detection systems and/or solutions.
ossec 是有EDR功能的

[Ettercap Project](https://www.ettercap-project.org/) 是一个跨平台、开源的 EDR 工具，用于模拟局域网上的 ARP 中毒和中间人攻击。
这个工具拥有各种各样的安全选项，例如网络流量拦截、最常见的协议主动窃听、网络安全审计和协议剖析。Ettercap Project 兼容 Linux、 Solaris、 BSD、 MacOS x 和 Microsoft Windows。

https://www.guardicore.com/infectionmonkey/
Infection Monkey 是一个免费的开源网络安全态势评估工具，可以模拟系统破坏和 APTs (高级持久性攻击)。Guardicore 的软件是为那些希望探测公司安全基础设施以寻找漏洞和调查人员的系统管理员开发的。
Infection Monkey 与 Microsoft Windows、 Linux 和 macOS x 兼容。

https://cuckoosandbox.org/
Cuckoo Sandbox is an open-source sandboxing environment that allows the user to quarantine, analyze, and dissect files exhibiting malicious behavior.
 The tool is compatible with Microsoft Windows, Linux, Mac OS X, and Android.

 https://github.com/google/grr
GRR Rapid Response is an Apache-licensed, open-source incident response framework used in remote live forensics. The tool can be used to perform minute forensic analyses on a large number of endpoints. GRR, Rapid response is compatible with Microsoft Windows, macOS X, and most Linux builds.
Mozilla’s MIG is a free-to-use forensics platform for remote endpoints. The tool is compatible with Windows, Linux, and Mac OSX. A beginner’s tool, but very helpful in providing accurate IOCs.
http://mozilla.github.io/mig/

https://github.com/0xrawsec/whids
Open Source EDR for Windows

VeraCrypt 
VeraCrypt is a security tool for disk encryption. It runs on Windows, Mac OSX and Linux and creates a virtual encrypted disk within a file before mounting it as a real disk. 
This tool encrypts an entire partition (file storage drive) or storage device such as a USB flash drive or hard drive before dumping it the cloud or elsewhere. Users can also pre-boot authentication by encrypting a partition or drive where the Windows OS is installed. 
VeraCrypt encrypts in real-time and supports hidden drives and hidden operating system on a machine. 
https://www.veracrypt.fr/en/Home.html

Security Onion  集成工具，这个不错
Security Onion is a Debian-based Linux distribution for detecting threats, enterprise security monitoring and log management. It incorporates security tools such as Elasticsearch, Logstash, Kibana, Snort, Suricata, Zeek, OSSEC, Wazuh, Sguil, Squert, NetworkMiner and others to protect an organization against cyber threats. 
It is an all-in-one open source security solution that provides users with various tools to detect threats and monitor their systems. 
https://blog.securityonion.net/

https://cirt.net/nikto2
是一款免费的开源 web 服务器扫描器，可以扫描 web 服务器的多个漏洞。该测试覆盖了超过6700个潜在的有害文件/程序，并检查了超过1250台服务器的过时版本。Web 服务器扫描器在270多台服务器上发现特定于版本的问题。用户还可以执行服务器配置问题的检查，例如多个索引文件、 HTTP 服务器选项的存在。这个开源安全工具还可以识别已安装的 web 服务器和软件。
https://www.openvas.org/

https://keepass.info/
KeePass is a free and open source password manager that securely stores passwords. This security tools enables users to have a single place for their unique passwords for websites, email accounts, webservers or network login credentials. 

KeePass works by storing passwords in a secure database, which unlock by entering a single master key. Database encryption is using the most secure encryption algorithms available: AES-256, ChaCha20 and Twofish. It encrypts the complete database, which means user names, notes, etc. are being encrypted along with the password fields. 
https://books.google.com/books?id=Ld5x_YDRpWYC&pg=PA314&lpg=PA314&dq=windows+%22usb%22+edr+open+source&source=bl&ots=DDSJYx6NTP&sig=ACfU3U2TmrXcMZ3IZTIKLbW3l8FrdK6spA&hl=zh-CN&sa=X&ved=2ahUKEwjKt-Og3NvyAhUSnWoFHbgvDH4Q6AF6BAgREAM#v=onepage&q=windows%20%22usb%22%20edr%20open%20source&f=false

https://github.com/USBGuard/usbguard
The USBGuard software framework helps to protect your computer against rogue USB devices (a.k.a. BadUSB) by implementing basic whitelisting and blacklisting capabilities based on device attributes.
https://usbguard.github.io/

商用usb管理工具
https://www.softwaretestinghelp.com/top-device-control-software-tools/#10_Trend_Micro

BitLocker是内置于Windows Vista及其之后系统的全磁盘加密功能，透过为整个卷提供加密来保护数据。它默认在密码块链接或XTS模式下使用128位或256位密钥的AES加密算法。其中CBC用于每个单独的磁盘扇区，不在整个磁盘上使用。 维基百科
https://zhuanlan.zhihu.com/p/347867965
U盘安全管理方案

CDN+FAAS打造攻击前置
http://blog.nsfocus.net/cdn-faas/

终端安全防线，EDR绝非最终解
http://blog.nsfocus.net/edr-sec/

梨子带你刷burpsuite靶场系列之高级漏洞篇 - 服务器端模板注入(SSTI)专题
https://www.anquanke.com/post/id/246293

## 20210830

协程与任务
https://docs.python.org/zh-cn/3/library/asyncio-task.html




基于编码注入的对抗性NLP攻击
https://www.anquanke.com/post/id/251222

如何使用Whoami在Kali上保持匿名性
https://www.freebuf.com/articles/system/285908.html

ATT&CK 实战分享（一）
https://www.freebuf.com/articles/web/283647.html
渗透测试员完整职业指南
https://www.freebuf.com/articles/network/282989.html
web安全战技101之JWT
https://www.freebuf.com/articles/web/283640.html

应用层隧道技术：SSH隧道反向代理（非主流用法）
https://www.freebuf.com/articles/network/284921.html
正向代理（-L）：相当于iptable的port forwarding
反向代理（-R）：相当于frp或者ngrok
socks5代理（-D）：相当于ss/ssr指定本地“动态”应用程序级端口转发。

Scour：一款针对AWS的漏洞利用框架|怎么对阿里?
https://www.freebuf.com/articles/security-management/285674.html

FTP在ssrf中的应用
https://www.anquanke.com/post/id/251517
Java反序列化和集合之间的渊源
https://www.anquanke.com/post/id/251220

【安全通报】OpenSSL 缓冲区溢出漏洞（CVE-2021-3711&CVE-2021-3712）
https://nosec.org/home/detail/4833.html
SM2国密算法应用的高危漏洞——CVE-2021-3711
https://www.anquanke.com/post/id/251504



隐藏十五年的漏洞：CVE-2021-22555 漏洞分析与复现
https://www.anquanke.com/post/id/251515

## 20210828
TypeScript Deep Dive 中文版
https://github.com/jkchao/typescript-book-chinese
This repository contains all the DSA (Data-Structures, Algorithms, 450 DSA by Love Babbar Bhaiya, FAANG Questions), Technical Subjects (OS + DBMS + SQL + CN + OOPs) Theory+Questions, FAANG Interview questions, and Miscellaneous Stuff (Programming MCQs, Puzzles, Aptitude, Reasoning). The Programming languages used for demonstration are C++, Pytho…
https://github.com/AkashSingh3031/The-Complete-FAANG-Preparation

绝妙的个人生产力（Awesome Productivity 中文版）
https://github.com/eastlakeside/awesome-productivity-cn

https://github.com/tiangolo/sqlmodel

mysql+sqlmodel
https://stackoverflow.com/questions/454854/no-module-named-mysqldb

sudo apt-get install -y python3-mysqldb libmysqlclient-dev
pip3 install pymysql

https://github.com/filebrowser/filebrowser
https://github.com/bregman-arie/devops-exercises
The Linux Kernel Module Programming Guide (updated for 5.x kernels)
https://github.com/sysprog21/lkmpg

https://sqlmodel.tiangolo.com/tutorial/fastapi/
https://pydantic-docs.helpmanual.io/
https://fastapi.tiangolo.com/

## 20210826

埃文降维抄同行作业？博士抄高中生作业？高中生，你的智商呢？
https://mp.weixin.qq.com/s?__biz=MzA3NDc3NjcyNQ==&mid=2456910535&idx=1&sn=b63ee04a883f72c0df04ce210eb8f1a8&chksm=88ff733dbf88fa2be477648c84c9a09308a28a253f316c7f52b4be6432c6a3060308eb179f54&mpshare=1&scene=1&srcid=0714k9kc04Ra68Ql1XLwxSfA&sharer_sharetime=1629967056229&sharer_shareid=b43d2c2b80926567e00fc4faa4da958a&version=3.1.11.3009&platform=win#rd
## 20210825

浅谈云上攻防——对象存储服务访问策略评估机制研究
https://paper.seebug.org/1682/
据统计，由于缺乏经验或人为错误导致的存储桶错误配置所造成的安全问题占所有云安全漏洞的16%。

通过上文的分析可知，公有读权限可以通过匿名身份直接读取用户存储桶中的数据，存在着严重的安全隐患。

但是有些用户为了避免使用繁杂且细粒度的权限配置，会错误的将其存储桶设置为公有读写，这将导致了其存储桶中的内容被攻击者窃取与篡改。
正如本文前言中所描述的2017美国国防部承包商数据泄露案例。即便是美国国防部承包商，在使用存储桶进行对象存储时，也会犯下这样的常见错误。
因此，为了保障存储桶安全，建议用户为存储桶配置私有读写权限。

COSCMD 工具
https://cloud.tencent.com/document/product/436/10976
这篇是腾讯云的

## 20210824
【精心解读】关于Jupyter Notebook的28个技巧
https://zhuanlan.zhihu.com/p/32600329

https://api.aliyun.com/#/
https://next.api.aliyun.com/home

红队实战攻防技术（一）
https://www.freebuf.com/articles/web/284080.html
说说JAVA反序列化
https://www.anquanke.com/post/id/251223
gomarkdown/markdown 项目的 XSS 漏洞产生与分析
https://www.anquanke.com/post/id/250541
如何使用Red-Shadow扫描AWS IAM中的安全漏洞
https://www.freebuf.com/articles/security-management/285667.html

浅谈云上攻防—— Kubelet 访问控制机制与提权方法研究
https://paper.seebug.org/1683/
浅谈云上攻防——元数据
https://paper.seebug.org/1681/

Weblogic CVE-2021-2394 分析
https://paper.seebug.org/1684/
浅谈云上攻防——Web 应用托管服务中的元数据安全隐患
https://paper.seebug.org/1680/

陈梦，1994年1月15日出生于山东青岛，中国乒乓球运动员，效力于中国女子乒乓球队 [122]  。
1999年，陈梦开始练习乒乓球 [134]  ；2004年，陈梦进入山东省体工队；2007年，陈梦被调选送至国家队 [135]  。
13岁的陈梦在国家队集训中成绩优异，在争夺进入国家队唯一一个名额的队内大循环中，年龄最小的陈梦从16名选手中脱颖而出，以第一名的身份拿到了进入国家队，年龄仅次于12岁就进入国家队的郭跃
孙颖莎，2000年11月4日出生于河北石家庄，中国女子乒乓球运动员，效力于中国女子乒乓球一队。
2015年9月，孙颖莎进入中国乒乓球国家二队。2017年1月进入国家一队。 [1] 

XSTREAM 多个高危漏洞通告
http://blog.nsfocus.net/xstream-se/
【安全通报】XStream 多个远程代码执行漏洞（CVE-2021-39139等）
https://nosec.org/home/detail/4829.html
腾讯蓝军安全通告：XStream修复14个安全漏洞
https://mp.weixin.qq.com/s/eidFQQXs70-kSM4OMSakhA

Vulfocus 漏洞靶场 v0.3.2.6 版本 Docker-Compose 上线
https://nosec.org/home/detail/4811.html


CASB 云访问安全代理 是一类安全产品 
云访问安全代理（Cloud Access Security Broker，CASB）
https://cloud.tencent.com/document/product/1303/47853
https://www.freebuf.com/articles/network/230403.html
http://jiagoushi.pro/what-casb-cloud-access-security-broker

Best CASB Security Vendors for 2021
https://www.esecurityplanet.com/products/casb-security-vendors/

https://blog.runpanther.io/open-source-cloud-security-tools/



go-audit is an alternative to the auditd daemon that ships with many distros
https://github.com/slackhq/go-audit
https://github.com/slackhq/go-audit/blob/master/go-audit.yaml.example
https://ancat.github.io/auditd/2018/11/01/auditd.html
https://anee.me/monitoring-commands-using-go-audit-59226a2cf442

Grapl is a graph-based SIEM platform built by-and-for incident response engineers.
https://github.com/grapl-security/grapl

Suricata是一个基于开源的入侵检测系统和入侵防御系统。它是由开放信息安全基金会开发的。
Suricata is an essential open-source security project that acts as an intrusion detection system, intrusion prevention system, and network security monitoring tool.

Suricata是一个重要的开源安全项目，作为入侵检测系统、入侵防御系统和网络安全监控工具。
https://github.com/OISF/suricata
Suricata IDS 入门 — 规则详解
https://www.secpulse.com/archives/71603.html


与Suricata一样，Zeek或Bro (Bro在BroCon 2018年更名为Zeek)也是一种入侵检测系统和网络监控工具，可以识别异常行为，如可疑或威胁活动。Zeek与传统IDS的不同之处在于，与检测异常的基于规则的引擎不同，Zeek还捕获关于网络上活动的元数据，以更好地理解网络行为的上下文。例如，您可以查看协议、HTTP调用或证书中的头和域名。
Zeek is a powerful network analysis framework that is much different from the typical IDS you may know.
https://github.com/zeek/zeek

Panther是一个强大的安全分析平台，旨在缓解传统SIEMs的问题。
它是由StreamAlert的核心架构师创建的，StreamAlert是一个由Airbnb开源的自动日志分析解决方案。
Panther提供了一个单一窗格，用于在所有可扩展的业务环境中集中检测和响应。
检测是透明和确定的规则，以减少假阳性和警报疲劳。
https://github.com/panther-labs/panther
打包了，4月不再更新，是打包了？闭源了？
Panther Community Edition存储库已弃用。我们决定专注于通过Panther SaaS产品为客户提供卓越的体验。如果你想了解更多关于免费试用的信息，请申请一个演示!
https://runpanther.io/

## 20210823

https://www.baeldung.com/spring-request-param

人脸识别技术在民航机场应用现状分析
https://www.freebuf.com/articles/compliance/284758.html

Struts2-002 XSS漏洞浅析
https://www.anquanke.com/post/id/247828

Fastjson远程命令执行漏洞总结
https://www.freebuf.com/articles/web/283585.html


内网渗透基石篇——权限维持分析（上）
https://www.freebuf.com/articles/web/283870.html

内网渗透基石篇--权限维持分析（下）
https://www.freebuf.com/articles/web/284497.html

浅谈利用session绕过getshell
https://www.freebuf.com/articles/web/283729.html

## 20210820

小而全而美的第三方登录开源组件。目前已支持Github、Gitee、微博、钉钉、百度、Coding、腾讯云开发者平台、OSChina、支付宝、QQ、微信、淘宝、Google、Facebook、抖音、领英、小米、微软、今日头条、Teambition、StackOverflow、Pinterest、人人、华为、企业微信、酷家乐、Gitlab、美团、饿了么、推特、飞书、京东、阿里云、喜马拉雅、Amazon、Slack和 Line 等第三方平台的授权登录。 Login, so easy!
https://gitee.com/yadong.zhang/JustAuth
这可能是我想要的超级登录器 MIT

## 20210819
🔥🔥🔥 前端面试，独有前端面试题详解，前端面试刷题必备，1000+前端面试真题，Html、Css、JavaScript、Vue、React、Node、TypeScript、Webpack、算法、网络与安全、浏览器
https://github.com/lgwebdream/FE-Interview

😱 从源码层面，剖析挖掘互联网行业主流技术的底层实现原理，为广大开发者 “提升技术深度” 提供便利。目前开放 Spring 全家桶，Mybatis、Netty、Dubbo 框架，及 Redis、Tomcat 中间件等
https://github.com/doocs/source-code-hunter
Spring源码阅读
https://github.com/seaswalker/spring-analysis

GoKart is a static analysis tool for Go that finds vulnerabilities using the SSA (single static assignment) form of Go source code. 
It is capable of tracing the source of variables and function arguments to determine whether input sources are safe, which reduces the number of false positives compared to other Go security scanners. For instance, a SQL query that is concatenated with a variable might traditionally be flagged as SQL injection; however, GoKart can figure out if the variable is actually a constant or constant equivalent, in which case there is no vulnerability.

https://github.com/praetorian-inc/gokart

https://github.com/tal-tech/go-zero
go-zero is a web and rpc framework written in Go. It's born to ensure the stability of the busy sites with resilient design. Builtin goctl greatly improves the development productivity.
http://www.jikejiaocheng.com/c/gozero-intro.html
https://www.bookstack.cn/read/go-zero-1.1.8-zh/README.md
https://go-zero.dev/cn/
go-zero解读与最佳实践（上）
https://segmentfault.com/a/1190000039160242
先粗后细，不要过细，切忌一个接口一个服务
横向拆分，而非纵向，我们尽量不要超过三层调用
单向调用，严禁循环调用
禁止接口类型透传，在不同的层之间不要共享同一个数据定义，避免一处修改，影响其它
没有依赖关系的串行调用改为并行，可以通过 core/mr 包降低响应延迟而不增加系统负载

CodeQL从入门到放弃
https://www.freebuf.com/articles/web/283795.html
安卓学习思路方法总结（三）
https://www.freebuf.com/articles/mobile/282950.html

【安全通报】美洽在线客服系统存在XSS漏洞（CNVD-2021-51877）
https://nosec.org/home/detail/4826.html

最全的Tomcat漏洞复现
https://paper.seebug.org/1677/
Golang 的字符编码与 regexp
https://paper.seebug.org/1679/
Java 内存攻击技术漫谈
https://paper.seebug.org/1678/

There is a possible open redirect vulnerability in the Host Authorization
middleware in Action Pack. This vulnerability has been assigned the CVE
identifier CVE-2021-22942.

[CVE-2021-22942] Possible Open Redirect in Host Authorization Middleware
https://groups.google.com/g/rubyonrails-security/c/wB5tRn7h36c
Versions Affected:  >= 6.0.0.
Not affected:       < 6.0.0
Fixed Versions:     6.1.4.1, 6.0.4.1
## 20210818

https://github.com/Qv2ray/Qv2ray

Java内存攻击技术漫谈
https://xz.aliyun.com/t/10075

https://huacnlee.com/autocorrect/
https://rustwasm.github.io/book/

https://github.com/babysor/Realtime-Voice-Clone-Chinese
MySQL8新特性注入技巧
https://www.anquanke.com/post/id/249650

## 20210817
https://www.bookstack.cn/read/recommend/0006-kooder.md
Kooder 是 Gitee 团队开发的一款代码搜索系统，可为 Gitee/GitLab/Gitea 提供代码搜索服务。
https://www.bookstack.cn/read/recommend/01.GoogleChrome-LightHouse.md

https://github.com/widelands/widelands
https://www.widelands.org/
GPL 


https://www.nothingventured.com/the-rise-of-the-one-person-unicorn/
Hyper-specific, profitable, company-building
答案是狭隘的、垂直的业务，旨在解决单一的、具体的问题。
像 [Headlime](https://headlime.com/) (帮助作者生成更好的标题)、
ConvertKit(为创作者提供的电子邮件营销软件)、
Fathom(正在打造谷歌Analytics之外的一个关注隐私的替代产品)和Transistor(播客托管和发布平台)等公司。
写文案既费时又困难。Headlime的人工智能可以将你的想法转化成文字，为你节省大量时间，让你可以专注于重要的事情:你的业务!

Alda is a text-based programming language for music composition. 
It allows you to write and play back music using only a text editor and the command line.
https://alda.io/tutorial/

https://usefathom.com/ref/TZFFJS
Website analytics without compromise

Deploying a Rails application to Kubernetes
https://kubernetes-rails.com/

The bullet gem is a great tool that can help us detect problems that will degrade performance in applications.
https://blog.appsignal.com/2021/08/11/ruby-hidden-gems-bullet-and-how-it-integrates-with-appsignal.html

Building a Programming Language in Ruby: The Interpreter, Part 2
https://www.honeybadger.io/blog/stoffle-interpreter-2/

https://github.com/elastic/elasticsearch-rails

## 20210816

EDR
https://alternativeto.net/software/symantec-endpoint-protection/
https://www.cynet.com/endpoint-protection-and-edr/top-6-edr-tools-compared/

git push解决办法： ! [remote rejected] master -> master (pre-receive hook declined)
https://www.cnblogs.com/cppeterpan/p/7289266.html

笔记本CPU天梯图 2021
https://zhuanlan.zhihu.com/p/143283849

笔记本电脑推荐2021（轻薄本）
https://zhuanlan.zhihu.com/p/373437918

从mimikatz学习Windows安全之访问控制模型（一）
https://paper.seebug.org/1669/



The Ultimate Go Study Guide
https://github.com/hoanhan101/ultimate-go

https://github.com/EbookFoundation/free-programming-books
Arwes 是一个基于未来科幻小说和赛博朋克风格、动画和音效为 Web 应用程序构建用户界面的 Web 框架，项目基于 React、JSS、Anime 和 Howler。
GitHub 地址→https://github.com/arwes/arwes
New CS-Notes 是字节跳动一名非科班程序员的自学笔记，目前收录了 C++、算法、操作系统笔记，后续将更新分布式系统知识，在该 repo 里作者也分享了他面试心得体会、转行相关随感，一些他用的到编程效率工具。
GitHub 地址→https://github.com/huangrt01/CS-Notes

Bevy 是一个用 Rust 编写的一款简单数据驱动游戏引擎。设计目标为：
提供完整 2D/3D 功能集
新手易上手，高级用户可灵活使用
以数据为中心，使用实体组件系统范式的面向数据架构
模块化，可随意替换你不喜欢的模块
快速运行，并行运行
生产可用，快速编译变更，毕竟等待不是件有趣的事
除了官方的特性、目标之外，使用者觉得它还有以下特性：
Bevy ECS：具有无与伦比的可用性和超快性能的自定义实体组件系统
渲染图：使用“渲染图”节点轻松构建自己的多线程渲染管道
Bevy UI：专为 Bevy 构建的自定义 ECS 驱动的 UI 框架
高效的编译时间：使用“快速编译”配置，预期更改将在约 0.8-3.0 秒内完成编译
GitHub 地址→https://github.com/bevyengine/bevy

New autocxx 是一个以高度自动化、安全地从 Rust 调用 C++ 的工具。这样做的目的是，在使用 bindgen 变体从现有的 C++ 头文件自动生成接口的同时，它具有来自 CXX 的流畅、安全性。可以把 autocxx 看作是将 bindgen 插入 cxx 的胶水。
GitHub 地址→https://github.com/google/autocxx

## 20210812

SOC2:
我真的需要第三方安全审计吗？
https://www.freebuf.com/articles/es/164330.html

https://www.huaweicloud.com/securecenter/compliance.html
![](images/2021-08-13-15-49-41.png)
很漂亮的视频教学软件
https://github.com/netless-io/flat

https://github.com/TCM-Course-Resources/Practical-Ethical-Hacking-Resources

💯高质量、最全面、完全免费的系统架构设计师（软考高级）备考资源库。QQ群：系统架构设计师（④群：910582038），系统分析师（②群：699260558），信息系统项目管理师（217144315），纯备考群，非培训群。
https://github.com/xxlllq/system_architect

[数据交换共享安全管理方案 —— NIST SP 800-47干货](https://www.freebuf.com/articles/others-articles/283779.html)

[浅析如何加强个人信息安全防护](https://www.freebuf.com/articles/neopoints/280019.html)

## 20210811

[红队实战攻防技术（一）](https://paper.seebug.org/1666/)

[Shreder：一款功能强大的多线程SSH协议密码爆破工具](https://www.freebuf.com/sectool/281133.html)

[渗透测试之地基服务篇：服务攻防之数据库Mssql（上）](https://www.freebuf.com/articles/network/280164.html)

[渗透测试战技101之nmap与icmp隧道](https://www.freebuf.com/articles/system/282623.html)

LinuxKernel任意代码执行漏洞通告（CVE-2021-3490）

近日，绿盟科技CERT监测到有研究人员公开披露了eBPF中的一个任意代码执行漏洞（CVE-2021-3490）的细节信息和PoC，
并演示利用此漏洞在Ubuntu20.10和21.04上实现本地权限提升，该漏洞是由于Linux内核中按位操作（AND、OR和XOR）的eBPFALU32边界跟踪没有正确更新32位边界，
造成Linux内核中的越界读取和写入，从而导致任意代码执行。官方已于5月11号发布修复版本，请相关用户及时采取措施防护。
ExtendedBerkeleyPacketFilter（eBPF）是一种内核技术（从Linux4.x开始），允许程序运行而无需改变内核源代码或添加额外的模块。
它是Linux内核中的一种轻量级的沙盒虚拟机（VM），可以在其中运行利用特定内核资源的BPF字节码。

mysql 5.0 日志 配置_MySQL数据库5.0的my.cnf配置选项
https://blog.csdn.net/weixin_33321522/article/details/113443549
详细分析MySQL的日志(一)
https://www.cnblogs.com/f-ck-need-u/p/9001061.html

## 20210810

百度云文档服务、免费 https://cloud.baidu.com/product/doc.html
易度云查看、付费  http://viewer.everydo.com/home/@zopen.cms:view
I doc view、付费http://www.idocv.com/
office web 365 付费https://www.officeweb365.com/
自己搭建服务器，用openoffice，swftools，jodconvert，flexpaper
http://developer.qiniu.com/code/v6/api/dora-api/third-party/yifangyun_preview.html#yifangyun_preview-price 七牛文档转换文档

阿里 文档预览（OSS）
https://help.aliyun.com/document_detail/99373.html

阿里云-文件预览（智能媒体管理）
https://www.cnblogs.com/zhoujin-Jojo/p/13610464.html
https://help.aliyun.com/document_detail/63761.html

管理文档
https://support.huaweicloud.com/usermanual-projectman/docman_hlp_00131.html#docman_hlp_00131__section573793292811

https://www.onlyoffice.com/blog/2017/01/11-things-you-can-do-with-onlyoffice-but-cant-with-google-docs-or-ms-word-online/?from=comparison
https://github.com/ONLYOFFICE/DocumentServer
https://helpcenter.onlyoffice.com/installation/docs-community-install-docker.aspx
https://hub.docker.com/r/onlyoffice/documentserver/
/var/www/onlyoffice/Data

docker pull onlyoffice/documentserver:6.3.1

中文文档：https://support.websoft9.com/docs/onlyoffice/zh/

docker run -i -t -d -p 80:80 onlyoffice/documentserver:6.3.1
docker ps
docker exec ca1c7b42d88b sudo supervisorctl start ds:example
上传文件
点击预览
TODO：
- API上传
- 仅预览

OnlyOffice Docker版搬砖心得
https://blog.csdn.net/weixin_41499259/article/details/89156960
https://api.onlyoffice.com/editors/demopreview
https://api.onlyoffice.com/editors/config/
https://github.com/ONLYOFFICE/Docker-CommunityServer

https://open.yozocloud.cn/product/preview
https://open.yozocloud.cn/price

数据库等保2.0审计是必须的吗
http://www.dengbaoceping.net/news/280.html
而安全审计又分为主机审计、网络审计、数据库审计、运维审计、日志审计、业务审计、配置审计。换句话说，等保2.0时代，数据库审计是必须的。
约:30,600.00/年 2,550.00/月
C100: 采用日志服务（SLS）产品进行实时日志分析及存储，可动态扩容存储空间，支持3个到80个数据库实例的审计。如需审计经典网络业务，可参考跨网络审计方案。
A100: 采用高效云盘进行审计日志存储、分析及归档，支持3个到25个数据库实例的审计。支持部署在容器docker环境。
D100: 注意：数据库审计实例需要与自建数据库或使用数据库的应用服务器（ECS）网络互通，建议在与业务系统相同的地域采购。

对云上数据（如RDS、PolarDB、OSS等）进行安全防护，识别敏感数据、自动对敏感数据分类分级、并提供针对性的数据泄漏风险检测和告警。

Yearning Mysql SQL审核平台
https://gitee.com/cookieYe/Yearning

baidu DBAUdit，现在公测免费
https://cloud.baidu.com/doc/DBAUDIT/s/kjx1phha6
https://console.bce.baidu.com/dbaudit/?_=1628564255295#/dbcluster/list

The DevOps Open-Source Database Audit Manual - Everything You Should Know
https://severalnines.com/database-blog/devops-open-source-database-audit-manual-everything-you-should-know

## 20210809
别想偷我源码：通用的针对源码泄露利用程序的反制（常见工具集体沦陷）
https://paper.seebug.org/1662/

## 20210806

登录框密码框input框禁止复制、粘贴、剪切和右键功能

<input name="pwd" type="password" id="pwd" onpaste="return false" oncontextmenu="return false" oncopy="return false" oncut="return false"/>

https://www.majorgeeks.com/files/details/mouse_lock.html
https://www.thewindowsclub.com/mouse-lock-windows-pc
https://sourceforge.net/projects/mouselock/files/

A FREE comprehensive reverse engineering course covering x86, x64, 32-bit ARM & 64-bit ARM architectures.
https://github.com/mytechnotalent/Reverse-Engineering

https://simonwillison.net/2021/Aug/3/samesite/
Exploring the SameSite cookie attribute for preventing CSRF
In reading Yan Zhu’s excellent write-up of the JSON CSRF vulnerability she found in OkCupid one thing puzzled me: I was under the impression that browsers these days default to …

Active Directory certificate abuse.
https://github.com/GhostPack/Certify

Generic Signature Format for SIEM Systems
https://github.com/SigmaHQ/sigma

https://github.com/eugenp/tutorials

https://github.com/doocs/jvm
🤗 JVM 底层原理最全知识总结

🌍 针对小白的算法训练 | 包括四部分：①.算法基础 ②.力扣图解 ③.大厂面经 ④.CS_汇总 | 附：1、千本开源电子书 2、百张技术思维导图（项目花了上百小时，希望可以点 star 支持，🌹感谢~）
https://github.com/geekxh/hello-algorithm

[XMLDecoder反序列化漏洞底层扩展与WebShell](https://www.anquanke.com/post/id/248771)

## 20210805

定位：协助红队人员快速的信息收集，测绘目标资产，寻找薄弱点
水泽-信息收集自动化工具
https://github.com/0x727/ShuiZe_0x727
https://gitee.com/azhao-1981/ShuiZe_0x727
https://github.com/0x727/SqlKnife_0x727

vue3,vue3.0,vue,vue3.x,vue.js,vue后台管理
https://github.com/chuzhixin/vue-admin-beautiful-pro

## 20210804



克隆某个人说话声音的 AI 项目。仅需几秒音频，就能模仿出原音频的人声
https://github.com/CorentinJ/Real-Time-Voice-Cloning

讲述“如何构建大型且可靠的分布式系统”的开源书籍。推荐给想成为架构师的你，在线阅读
https://github.com/fenixsoft/awesome-fenix

一款开源的中文输入法。市面上的输入法有很多，但你找到让自己称心如意的那款了吗？或许通过今天的开源项目你就能找到它。RIME 这款开源的输入法，它不追踪输入的内容源码完全开放，可自由切换繁/简中文，选择/设计输入方案和主题，对繁体字输入尤为优秀。作为输入法给予用户无限的自由和个性化，作为输入法框架让开发者有更多的发挥空间。比如支持不同操作系统的版本：Linux（中州韵）、Windows（小狼毫）、macOS（鼠须管）、Android（同文）由于自由度较高上手需要一些时间，这大概就是获得自由的代价吧
https://github.com/rime/librime

腾讯开源的代码安全指南。该项目包含：C/C++、Python、JavaScript、Java、Go 等语言的安全编码指南，内容简单易懂能够帮助开发者，在代码源头规避安全风险减少漏洞
https://github.com/Tencent/secguide
这个java的我们很需要
https://github.com/Tencent/secguide/blob/main/Java安全指南.md

一个跨平台的 Rust 和 C/C++ 的 GUI 框架。使用 WebRender 渲染引擎和 CSS/HTML-like DOM 构建，可用于开发漂亮的原生桌面应用程序
https://github.com/fschutt/azul

OWASP（开放式 Web 应用程序安全项目）速查表。项目由 OWASP 社区的安全专家编写，列举了多种安全问题和解决方案，从而更好地保护你的 Web 应用。在线阅读
https://github.com/OWASP/CheatSheetSeries
https://cheatsheetseries.owasp.org/

开源的智能表格制作工具。我最初以为 nocodb 只是数据库桌面管理工具，后来我发现自己狭隘了。
它不仅可以把数据库和图片等数据转化成表格的方式展现，还提供了团队协作、工作流接入以及更加开放 API 服务。
让团队在数据上工作，数据就在手边“即视即用”。知名电子表格-数据库混合体 Airtable 产品的开源替代品
https://github.com/nocodb/nocodb

```bash
docker pull nocodb/nocodb
docker run -d --name nocodb -p 8280:8080 nocodb/nocodb
http://localhost:8280/dashboard
```

Elasticsearch 数据导入/导出工具，可以用于 ES 的数据备份和迁移
https://github.com/elasticsearch-dump/elasticsearch-dump

大数据分析实战项目的集合。该项目包含了淘宝、租房、招聘等数据的分析实例，不仅有 Python、SQL、HQL 的实例代码，还附上了数据集下载地址。
想学习大数据的同学们，万事俱备就差你来学了
https://github.com/TurboWay/bigdata_analyse

免费学习编程的开源社区。它创立于 2014 年，期间帮助了无数编程爱好者学习编程，中文站点于 2021 年上线。freeCodeCamp 采用在线编程闯关的学习形式，遇到问题还可以通过活跃的社区答疑解惑。平台鼓励新手多动手写代码、运行代码，提倡 RSA 即：遇到问题先阅读文档资料，然后求助于搜索引擎，最后实在没招了再提问，这样有助于培养良好的提问习惯终身受益。同时作为非盈利组织，freeCodeCamp 不仅提供了免费学习的课程还开源了网站代码
https://github.com/freeCodeCamp/freeCodeCamp

wsl 里git status慢的问题
https://stackoverflow.com/questions/1183769/git-status-takes-a-long-time-to-complete
改成好像会快点
git status -uno
千万不要用 `git clean -dfx`

开源的 Python 量化交易框架。使用少量代码即可实现量化交易程序，还支持历史数据、实时数据、策略回测、实盘交易、图形化界面展示等功能。但免费版本仅提供全部的期货、商品/金融期权和上证50、沪深300 和中证500 的实时行情，付费版支持更多种类以及更加稳定的服务
https://github.com/shinnytech/tqsdk-python

简化 JavaScript 抽象语法树（AST）处理的工具。借鉴了类似 jQuery 的预发和字符串构建 AST 的思想，大大简化了学习成本、降低了开发复杂度，官方团队在此基础上还开发出了 Vue2 转 Vue3 的插件
https://github.com/thx/gogocode
简介：阿里妈妈出的新工具，给批量修改项目代码减轻了痛苦

50 个采用 HTML+CSS+JS 的前端小项目集合。项目包含网页源码和效果展示，标准入门级的前端开源项目。通过查看效果让新手感受前端的美妙，简单的源码降低了上手写代码门槛。或许其中某个网页的效果也会让工作多年的你大呼哇塞
https://github.com/bradtraversy/50projects50days

基于 Electron 开发的开源插件化工具箱。起初项目作者是 uTools 的用户但 uTools 没有开源，他又想接入公司内部的工具，然后 Rubick（拉比克）就诞生了。它实现了 uTools 的大部分功能，可以适配 uTools 丰富的开源插件，享受用完即走的便利
https://github.com/clouDr-f2e/rubick

支持实时协作的富文本 WYSIWYG 编辑器
https://github.com/ether/etherpad-lite

开源的数据可视化和分析工具。采用 SpringBoot+Vue.js 技术栈实现，通过丰富的可视化图表让数据更加直观
https://github.com/dataease/dataease

用来消除浏览器默认样式的 CSS 库。不同浏览器对于同一个元素会有不一样的默认样式，比如：超链接线的颜色。相较于 reset（重制样式）解决办法，normalize.css 采用更加和平且高效地方式，解决了浏览器默认样式的问题，尽可能让同一个 CSS 文件在不同的浏览器上显示效果一样和正常
https://github.com/necolas/normalize.css

在没有游戏源代码的前提下，通过逆向工程和代码注入实现植物大战僵尸局域网对战模式。成功加载后解密模式的最后一关，会变为网络对战关卡。玩法为其中一个玩家放置植物进行防御，另一玩家放置僵尸进攻。项目结合逆向工程、C++和汇编相关技术，在无源代码的前提下为游戏增加功能。对逆向工程感兴趣的小伙可以看看源码
https://github.com/czs108/Plants-vs.-Zombies-Online-Battle

## 20210803
不错的COOKIE提示
https://www.nccgroup.com/Libraries/Document_Downloads/more__Advanced_SQL_Injection.sflb.ashx

这可能是史上功能最全的Java权限认证框架！目前已集成——登录认证、权限认证、分布式Session会话、微服务网关鉴权、单点登录、OAuth2.0、踢人下线、Redis集成、前后台分离、记住我模式、模拟他人账号、临时身份切换、账号封禁、多账号认证体系、注解式鉴权、路由拦截式鉴权、花式token生成、自动续签、同端互斥登录、会话治理、密码加密、jwt集成、Spring集成、WebFlux集成...
https://github.com/dromara/Sa-Token

LINUX KERNEL任意代码执行漏洞（CVE-2021-3490）通告
http://blog.nsfocus.net/linux-kernelcve/

SpringMVC配合Fastjson的内存马利用与分析



https://www.freebuf.com/articles/database/282002.html

## 20210802
8.3 自定义 Git - Git 钩子
https://git-scm.com/book/zh/v2/%E8%87%AA%E5%AE%9A%E4%B9%89-Git-Git-%E9%92%A9%E5%AD%90
pre-receive
处理来自客户端的推送操作时，最先被调用的脚本是 pre-receive。 它从标准输入获取一系列被推送的引用。如果它以非零值退出，所有的推送内容都不会被接受。 你可以用这个钩子阻止对引用进行非快进（non-fast-forward）的更新，或者对该推送所修改的所有引用和文件进行访问控制。

一文带你彻底学会 Git Hooks 配置
https://segmentfault.com/a/1190000022970270

https://docs.gitlab.com/12.10/ee/administration/server_hooks.html
https://yueban.github.io/2020/05/10/gitlab-server-side-hooks配置实践/

https://www.bookstack.cn/read/gitlab-doc-zh/docs-529.md

gitLab 全局hooks和custom_hooks，以及服务器端自动更新和备份（一）
https://www.cnblogs.com/hpcpp/p/7380939.html
8.13.6 

SpringMVC配合Fastjson的内存马利用与分析
https://www.anquanke.com/post/id/248155

记一次从鸡肋SSRF到RCE的代码审计过程
https://www.anquanke.com/post/id/248821

DDoS介绍与防御
https://www.anquanke.com/post/id/247595

xsstrike 源码分析
https://www.anquanke.com/post/id/247456

Apk加固原理学习与复现
https://www.anquanke.com/post/id/247644

从Github一开源项目ADSEC学习域渗透攻防基础
https://www.anquanke.com/post/id/248030

渗透测试之地基服务篇：服务攻防之数据库Mysql（上） 会员
https://www.freebuf.com/articles/web/280116.html

安卓学习思路方法总结（二）
https://www.freebuf.com/articles/mobile/281426.html

基于WSL2部署Kali Win-Kex生成ShellCode
https://www.freebuf.com/sectool/281464.html

批量漏洞挖掘思路小结
https://www.freebuf.com/vuls/280997.html