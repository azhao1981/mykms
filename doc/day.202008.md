# 202008

## 20200831

http://speedle.io/

## 20200828

[看智能蓝牙指纹蓝牙锁是如何智障的](https://www.freebuf.com/articles/terminal/248052.html)

## 20200827

渗透测试方法：

1. 取得带session的请求，退出，再试一下原来的session（cookie)请求，是否能用
2. 取得带session的请求，等过期时间，再试一下原来的session（cookie)请求，是否能用
3. 同上，等过期，看是否有专门的 Exp 之类的 cookie字段，处理有，A 使用 B的新的 Exp ，是否能用
4. 修改密码，看是否能用

CAPA：自动识别恶意软件行为
https://www.freebuf.com/sectool/244831.html



无线电侧信道攻击利用（TempestSdr）复现：监听显示器显示内容
https://www.freebuf.com/articles/wireless/246842.html

挖洞经验 | Chrome浏览器的CSP策略绕过漏洞| 可以试一下，现在的版本基本都是83
https://www.freebuf.com/articles/web/247141.html

利用ZoomEye追踪多种Redteam C&C后渗透攻击框架
https://www.freebuf.com/articles/network/247275.html

内网渗透：不出网渗透技巧
https://www.freebuf.com/articles/web/247287.html

DGA域名检测的数据分析与深度学习分类
https://www.freebuf.com/articles/network/246529.html

JetBrains TeamCity 跨站脚本执行漏洞 (CVE-2020-15831)
http://www.nsfocus.net/vulndb/48169

【安全通报】Jackson 多个反序列化安全漏洞（CVE-2020-24616）
https://nosec.org/home/detail/4542.html

数据安全怎么做：数据分类分级
https://www.freebuf.com/articles/database/247305.html
自动化批量扫描工具fofa2Xray
https://www.freebuf.com/sectool/244893.html

MySQL蜜罐获取攻击者微信ID
https://www.anquanke.com/post/id/215696

七夕—2020HW热门0day分析与复现
https://www.anquanke.com/post/id/215347

## 20200825



[一个黑客写的开源情报方法和工具：在线情报实用指南](https://mp.weixin.qq.com/s/4VCiU1Oi94rKX9uCJ8YkbA)


[微信互联网平民创业（初稿）](https://github.com/xiaolai/everyones-guide-for-starting-up-on-wechat-network)

https://github.com/loveunk/Deep-learning-books

https://github.com/drduh/macOS-Security-and-Privacy-Guide/blob/master/README-cn.md
The ultimate WinRM shell for hacking/pentesting
https://github.com/Hackplayers/evil-winrm
📙 Markdown Templates for Offensive Security OSCP, OSWE, OSCE, OSEE, OSWP exam report
https://github.com/noraj/OSCP-Exam-Report-Template-Markdown
Web CTF CheatSheet 🐈
https://github.com/w181496/Web-CTF-Cheatsheet


Linux/OSX/FreeBSD resource monitor
https://github.com/aristocratos/bpytop

https://github.com/launchbadge/sqlx

rust-ui
https://github.com/hecrj/iced
https://github.com/linebender/druid

Canvas is a modern, open-source LMS developed and maintained by Instructure Inc. It is released under the AGPLv3 license for use by anyone interested in learning more about or using learning management systems.
https://github.com/instructure/canvas-lms
A learning management system (LMS)
学习管理系统是一种软件应用程序，用于管理、记录、跟踪、报告、自动化提供教育课程、培训计划或学习和发展计划。学习管理系统概念直接脱胎于线上学习。虽然最早的LMS出现在高等教育领域，但最广泛采用LMS的是企业市场。学习管理系统是学习系统市场的最大组成部分。LMS在20世纪90年代末首次出现。 维基百科



## 20200824

https://degoogle.jmoore.dev/

## 20200822

https://github.com/github/archive-program/blob/master/TheTechTree.md
为了让后代了解我们如何开发和使用软件，GitHub 官方开出了一个书单，称为"技术树"（the Tech Tree），包括16个大类的200多本经典书籍。这些书籍的数字化版本，将存放在 GitHub 的北极仓库。

[Struts2 S2-059 漏洞分析](https://www.anquanke.com/post/id/214843)

[近期公开0day及漏洞汇总](https://www.freebuf.com/articles/web/247465.html)

[从存储型self-XSS到最终实现账号完全接管](https://www.freebuf.com/articles/web/247355.html)

[哨兵：如何0成本搭建企业蜜网](https://www.freebuf.com/articles/system/247376.html)

[JBass弱口令及任意文件下载漏洞分析](https://www.freebuf.com/articles/web/246361.html)

Empire is a PowerShell and Python 3.x post-exploitation framework.
https://github.com/BC-SECURITY/Empire

两个都可以登录
这个好像和 http://www.cnnvd.org.cn/ 不是一个
https://www.cnvd.org.cn/

[Go二进制文件逆向分析从基础到进阶——综述](https://www.anquanke.com/post/id/214940)


[利用 ZoomEye 追踪多种 Redteam C&C 后渗透攻击框架](https://www.anquanke.com/post/id/214897)


## 20200821

[Rodauth: A Refreshing Authentication Solution for Ruby](https://janko.io/rodauth-a-refreshing-authentication-solution-for-ruby/)

[单一职责原则](https://www.cnblogs.com/gaochundong/p/single_responsibility_principle.html)

在面向对象编程领域中，单一功能原则规定每个类都应该有一个单一的功能，并且该功能应该由这个类完全封装起来。所有它的服务都应该严密的和该功能平行。 这个术语由罗伯特·C·马丁在他的《敏捷软件开发，原则，模式和实践》一书中的一篇名为〈面向对象设计原则〉的文章中给出
Rodauth 是使用 Roda 和 Sequel 实现的
devise-security

https://pdabrowski.com/articles/how-sidekiq-really-works

https://www.honeybadger.io/blog/database-transactions-rails-activerecord/

http://stratus3d.com/blog/2020/08/11/effective-debugging-of-memory-leaks-in-ruby/
https://idiosyncratic-ruby.com/74-super-snakes.html

[基于安卓设备的Hacking](https://www.freebuf.com/articles/others-articles/246679.html)



## 20200820

https://www.thinbug.com/q/13384443
https://wiki.openstack.org/wiki/KeyManager
https://sourceforge.net/projects/strongkey/
https://www.secrss.com/articles/11755
https://square.github.io/keywhiz/

[【安全通报】Jenkins Jetty组件漏洞风险通告（CVE-2019-17638）](https://nosec.org/home/detail/4533.html)

[Elasticsearch 安全漏洞](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202008-939)

[Gartner又搞出来五个新的“幺蛾子”](https://www.freebuf.com/articles/neopoints/247262.html)

教学形成性评价（formative evaluation）是相对于传统的终结性评价(summative evaluation)而言的。
所谓形成性评价，“对学生日常学习过程中的表现、所取得的成绩以及所反映出的情感、态度、策略等方面的发展”做出的评价，
是基于对学生学习全过程的持续观察、记录、反思而做出的发展性评价。

[攻防礼盒：哥斯拉Godzilla Shell管理工具](https://www.freebuf.com/sectool/247104.html)

[汽车安全OTA的全球技术方案解析](https://www.freebuf.com/articles/network/246725.html)

[通过nodeJs中eval关键字打造一款管理nodeJS后门的菜刀](https://www.freebuf.com/sectool/246647.html)

[从0到1认识Redis到多维角度场景下的安全分析与利用](https://www.anquanke.com/post/id/214108#h3-15)


## 20200819



## 20200818

https://github.com/MrMimic/data-scientist-roadmap

jupyter:
https://github.com/ageron/handson-ml
https://github.com/fastai/fastbook

https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI
https://github.com/twilco/kosmonaut

python open source alternative to IDM (Internet Download Manager) with multi-connections, high speed engine, based on python, pycurl, youtube_dl, and pysimplegui
https://github.com/pyIDM/PyIDM

Automatic SQL injection and database takeover tool
https://github.com/sqlmapproject/sqlmap

🇨🇳 GitHub中文排行榜，帮助你发现高分优秀中文项目、更高效地吸收国人的优秀经验成果；榜单每周更新一次，敬请关注！
https://github.com/kon9chunkit/GitHub-Chinese-Top-Charts

## 20200817

[DDD 领域模型设计数据中台落地——苏宁供应链域数据中台构建实践](https://www.infoq.cn/article/wF3ox1BIZ4UGm98Adv4j)
[【安全通报】Apache Dubbo默认反序列化协议Hessian2导致远程代码执行](https://nosec.org/home/detail/4530.html)
[FinDOM-XSS：一款针对DOM型XSS漏洞的快速扫描工具](https://www.freebuf.com/sectool/244570.html)
[基于网络欺骗与浏览器指纹的WEB攻击溯源](https://www.freebuf.com/articles/web/245585.html)
[浅谈Web客户端追踪](https://www.freebuf.com/articles/web/127266.html)
[2.5代指纹追踪技术—跨浏览器指纹识别](https://www.freebuf.com/articles/web/139984.html)
[网络欺骗，教你如何把来犯的黑客玩弄于股掌之间](https://zhuanlan.zhihu.com/p/44376545)

[CVE-2020-8558：Kubernetes中的kube-proxy漏洞分析](https://www.freebuf.com/vuls/245955.html)

```bash
sudo docker exec -it $container_id cat /var/lib/kube-proxy/config.conf
sysctl net.ipv4.conf.eth0.route_localnet
```

https://github.com/kubernetes/kubernetes/issues/90259

[Puma HTTP请求走私漏洞（CVE-2020-11076）](http://www.nsfocus.net/vulndb/47821)
[协议层的攻击——HTTP请求走私](https://paper.seebug.org/1048/)
https://github.com/justinsteven/CVE-2020-10759-poc
https://github.com/dentarg/cougar

webuser   2666  2.5  1.5 779544 127636 ?       Sl   17:56   0:02 puma 3.12.4 (unix:///srv/www/udesk_greatwall/shared/tmp/sockets/puma.sock)

## 20200814

[【安全通报】STRUTS S2-059/S2-060安全漏洞（CVE-2019-0230/CVE-2019-0233）](https://nosec.org/home/detail/4528.html)

[CVE-2019-0230：Apache Strusts2 远程代码执行漏洞通告](https://www.anquanke.com/post/id/214104)


## 20200813

rust
http://www.sheshbabu.com/posts/rust-wasm-yew-single-page-application/
https://www.rust-lang.org/zh-CN/tools/install

[永久免费的哆啦集成式靶场环境正式版来啦！](https://www.zhaosimeng.cn/tools/34.html)

网站渗透测试，看这篇就够了
https://www.zhaosimeng.cn/ctcs/37.html

安全行业“艳照门” ：企业如何反思源码保护？
https://www.freebuf.com/articles/network/246188.html

此次大规模源码泄露事件是由Bank Security的安全研究人员发现的，遭泄露的源码被发布在GitLab上一个公开存储库中，并被标记为 “exconfidential” （绝密），以及 “Confidential & Proprietary”（保密&专有），该存储库中大约包含了超过50家公司的源码。
GitLab
“exconfidential” （绝密）
“Confidential & Proprietary （保密&专有）
错误配置的Devops工具
2019年，大疆前员工泄露公司源代码
2019年Valve发生了重大泄露事件，有人泄露了《CS：GO》和《军团要塞2》的源代码，并提供下载链接
2019 年 4 月，B站整个网站后台工程源码泄露

idea: 代码保护软件/硬件
对一个目录，能下代码，但不能把代码复制
代码应该是每个员工看到的部分都是不能运行的
可以做一个专门的文件格式，各种软件/文档管理器可以打开，但不能拷贝


[XSS Game分析以及知识点总结](https://www.freebuf.com/articles/web/245209.html)
[挖洞经验 | Grafana应用实例未授权读取型SSRF](https://www.freebuf.com/articles/web/245582.html)

## 20200812

[访问安全控制解决方案](https://my.oschina.net/huangyong/blog/173679)  
[冷饭新炒：理解Sonwflake算法的实现原理](https://my.oschina.net/u/4589564/blog/4481885)  

## 20200811

https://github.com/toniblyx/my-arsenal-of-aws-security-tools
https://github.com/The-Art-of-Hacking/h4cker

google第三方认证
https://github.com/mdp/rotp

视频转动画
https://github.com/TachibanaYoshino/AnimeGANv2

https://github.com/madd86/awesome-system-design
https://github.com/EthicalML/awesome-production-machine-learning

https://github.com/EbookFoundation/free-programming-books

https://github.com/tailwindlabs/heroicons
https://github.com/CleverProgrammers/twitter-clone

## 20200810
谷歌出口的安全扫描工具
Tsunami is a general purpose network security scanner with an extensible plugin system for detecting high severity vulnerabilities with high confidence.与其他漏洞扫描程序不同，Tsunami旨在查找包含数十万个设备的大型网络中的漏洞。
https://github.com/google/tsunami-security-scanner
nmap 7.8
ncrask <https://nmap.org/ncrack/>
[Tsunami：一款功能强大的通用网络安全扫描工具](https://www.freebuf.com/articles/network/244588.html)


[基于Kali的Snort配置和入侵检测测试](https://www.freebuf.com/sectool/243790.html)

[reGeorg内网渗透工具](https://www.freebuf.com/sectool/243687.html)

## 20200808
不少可以订阅的好邮件列表
https://www.hackernewsletter.com/
https://www.smashingmagazine.com/2011/07/email-newsletters-worth-subscribing-to/
https://news.ycombinator.com/
https://hndex.org/



微软的js包，设计
https://www.fast.design/docs/introduction/

还在往国内平台搬视频？看YouTube二剪搬运项目，如何月入过万
https://zhuanlan.zhihu.com/p/87769980
一个YouTube视频搬运工的教训
https://www.jianshu.com/p/c094164d3daf

python 依赖管理
https://python-poetry.org/

教学：如何变成优秀的理论物理学家
https://www.goodtheorist.science/
https://www.susanjfowler.com/blog/2016/8/13/so-you-want-to-learn-physics

https://wildlyinaccurate.com/a-hackers-guide-to-git/
https://github.com/cmur2/dyndnsd

https://hakibenita.com/sql-tricks-application-dba#update-only-what-needs-updating

go ui
https://github.com/fyne-io/fyne

https://www.devdungeon.com/content/enhanced-shell-scripting-ruby
https://rossta.net/blog/visual-guide-to-webpacker.html

https://github.com/toptal/active-job-style-guide

https://github.com/excid3/noticed

https://github.com/formulahendry/955.WLB

https://github.com/sdmg15/Best-websites-a-programmer-should-visit

https://github.com/ageron/handson-ml2

## 20200807

https://www.ruby-toolbox.com/categories/Table_Builders



WebLogic coherence UniversalExtractor 反序列化 (CVE-2020-14645) 漏洞分析
https://www.anquanke.com/post/id/212984

[Java安全编码之sql注入](https://www.anquanke.com/post/id/212897)

活动 | Black Hat USA 2020最值得期待的11种安全工具
https://www.anquanke.com/post/id/213032



Hackingtool：一款针对渗透测试人员的多合一测试套件
https://www.freebuf.com/sectool/244997.html

[如何规划企业钓鱼邮件演练？](https://www.freebuf.com/articles/es/244599.html)

[渗透测试面试问题合集](https://www.freebuf.com/articles/web/245742.html)

[Weblogic 远程命令执行漏洞（CVE-2020-14645）分析](https://nosec.org/home/detail/4524.html)

[Weblogic 远程命令执行漏洞（CVE-2020-14644）分析](https://nosec.org/home/detail/4522.html)

## 20200806

DNS 域名搜索的反域名搜索
https://rapiddns.io/
https://securitytrails.com/

[📡 PoC auto collect from GitHub.|good](https://github.com/nomi-sec/PoC-in-GitHub)

[1999-2020年存量CVE数据分析、监控CVE增量更新、基于深度学习的CVE EXP预测和自动化推送](https://github.com/404notf0und/CVE-Flow)

[【FreeBuf字幕组】Hacker101白帽进阶之路-Cookie篡改技术和安全架构评审|视频](https://www.freebuf.com/video/245576.html)


[安全研究 | Nginx反向代理钓鱼](https://www.freebuf.com/articles/web/243404.html)

[这可能是netcat最全的使用指南](https://www.freebuf.com/sectool/243115.html)

[dom4j XML外部实体注入漏洞 （CVE-2020-10683）](http://www.nsfocus.net/vulndb/47453)

[OpenSSH 命令注入漏洞（CVE-2020-15778）](http://www.nsfocus.net/vulndb/47482)
[OpenSSH 命令注入漏洞（CVE-2020-15778）](https://www.4hou.com/posts/vD70)
[Write up for CVE id CVE-2020-15778.](https://github.com/cpandya2909/CVE-2020-15778/)
scp  /sourcefile remoteserver:'`touch /tmp/exploit.sh`/targetfile'



[Linux下只允许用户远程scp](https://my.oschina.net/firxiao/blog/378499) 

使用到的软件: [rssh](http://pizzashack.org/rssh/index.shtml)

https://serverfault.com/questions/83856/allow-scp-but-not-actual-login-using-ssh

## 20200805

[2020年漏洞扫描工具Top10](https://www.freebuf.com/sectool/243123.html)

[如何做好边界端口持续监控](https://www.freebuf.com/articles/es/245463.html)

[KITT-Lite：基于Python实现的轻量级命令行渗透测试工具集](https://www.freebuf.com/articles/others-articles/245107.html)

[PHP Webshell那些事——攻击篇](https://www.anquanke.com/post/id/212728)

## 20200804

[AuthMatrix：一款针对Web应用和服务的认证安全检测BurpSuite工具](https://www.freebuf.com/articles/web/244956.html)

[CentOS 7系统利用suid提权获取Root Shell](https://www.freebuf.com/articles/system/244627.html)

[IoT安全之殇：小心你的摄像头](https://www.freebuf.com/articles/terminal/245111.html)

[七月热榜 | 优质专辑TOP榜已上线，快来扩大你的“安全圈”！](https://www.freebuf.com/fevents/244913.html)

## 20200803



[NIDS(suricata)中的ICMP隐蔽隧道检测](https://www.freebuf.com/articles/es/243486.html)



[物联网安全之MQTT协议安全](https://www.anquanke.com/post/id/212335)

[浅谈LDAP注入攻击](https://www.anquanke.com/post/id/212186)
> intitle:”phpLDAPadmin” inurl:cmd.php
> https://www.hackthebox.eu/

## 20200801

Public release of the TransCoder research project https://arxiv.org/pdf/2006.03511.pdf
https://github.com/facebookresearch/TransCoder

Just Announced - "Learn Spring Security OAuth":
https://github.com/eugenp/tutorials

🔍 Transformers at scale for question answering & search
https://github.com/deepset-ai/haystack

Tiny minimal 1px icons designed to fit in the smallest places.
https://github.com/teenyicons/teenyicons

https://github.com/careercup/CtCI-6th-Edition | 面试

https://github.com/akullpp/awesome-java
https://github.com/zhaoolee/ChromeAppHeroes |Chrome 插件
网络安全等级保护工作流程
https://www.freebuf.com/articles/neopoints/244562.html

@bank_security 的红队资料
https://github.com/BankSecurity/Red_Team

Rails 5.0.1 - Remote Code Execution
https://www.exploit-db.com/exploits/48716
Rails 5.2.1 - Arbitrary File Content Disclosure
https://www.exploit-db.com/exploits/46585
Ruby On Rails - DoubleTap Development Mode secret_key_base Remote Code Execution (Metasploit)
https://www.exploit-db.com/exploits/46785


