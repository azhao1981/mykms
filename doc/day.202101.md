# 202101

## 0119
Git Lfs 代码问题漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1302
https://github.com/git-lfs/git-lfs/commit/fc664697ed2c2081ee9633010de0a7f9debea72a

GitLab 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1296
GitLab 访问控制错误漏洞|高危
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1294
Gitlab Nuget Api 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1295

Nacos 1.4.1 修复指定特殊 UA 可绕过所有鉴权的安全漏洞
https://www.oschina.net/news/126592/nacos-1-4-1-released
https://www.secrss.com/articles/28723

基于抽象语法树和深度学习的高效漏洞检测方法
https://www.anquanke.com/post/id/221892

唯快不破的分块传输绕WAF
https://www.freebuf.com/articles/web/259377.html

自己动手编写远控工具及检测思路
https://www.freebuf.com/articles/network/258664.html

## 0118
https://github.com/darklotuskdb/CISCO-CVE-2020-3452-Scanner-Exploiter

JuiceFS 开源，分布式文件系统
https://www.oschina.net/news/126469/juicefs-open-source

应急响应之Linux下进程隐藏
https://www.freebuf.com/articles/network/258510.html

WAF绕过拍了拍你
https://www.freebuf.com/articles/web/259027.html

Python @函数装饰器及用法（超级详细）
http://c.biancheng.net/view/2270.html
初学者必知的Python中优雅的用法
https://www.runoob.com/w3cnote/python-start-skill.html
Python函数*args与**kwargs的用法
https://blog.csdn.net/u010758410/article/details/71727822

蠕虫病毒“incaseformat”来袭，中毒重启20秒后狂删电脑文件
https://nosec.org/home/detail/4650.html



[重要通知｜JumpServer漏洞通知及修复方案](https://blog.fit2cloud.com/?p=1761)
> [参考](/doc\vuls\vuls.jumpserver.md)

## 0116

https://ververica.cn/developers/flink-training-course3/
https://github.com/flink-china/flink-training-course
【Apache Flink 实战&运维教程】第3阶段 第5课-Flink 实时数仓的应用
https://www.bilibili.com/video/av66782142
https://flink.apache.org

flink 提交任务可执行漏洞现在是还存在的
+ 先看一下原来的漏洞描述,看一下changelog
  + https://flink.apache.org/zh/security.html
  + 这么看是已经修改的，但没有修改完全，并且1.12.0又回来了
During a security analysis of Flink, I noticed that Flink allows for remote code execution, is this an issue?
Apache Flink is a framework for executing user-supplied code in clusters. Users can submit code to Flink processes, which will be executed unconditionally, without any attempts to limit what code can run. Starting other processes, establishing network connections or accessing and modifying local files is possible.
Historically, we’ve received numerous remote code execution vulnerability reports, which we had to reject, as this is by design.
[Apache Flink CVE-2020-17518/17519 漏洞分析](https://www.anquanke.com/post/id/228507)

## 0115

Linux流程分析——从开机那一刻开始
https://www.anquanke.com/post/id/227940


程序员vs聊天|TODO：能不能有一个signal的？国内连不上
https://github.com/Ademking/vsChat
实时数据后台
https://stackshare.io/h2o-wave
https://github.com/h2oai/wave

两个直播系统| + signal? MIT
owncast 有聊天功能
https://github.com/owncast/owncast?ref=stackshare
https://stackshare.io/owncast?utm_source=weekly_digest&utm_medium=email&utm_campaign=01132021&utm_content=new_tool
lightspeed 更像讲座直播
https://github.com/GRVYDEV/Project-Lightspeed?ref=stackshare
https://stackshare.io/lightspeed-project?utm_source=weekly_digest&utm_medium=email&utm_campaign=01132021&utm_content=new_tool
开源 图标 MIT
https://gitlab.com/SUSE-UIUX/eos-icons
https://stackshare.io/eos-icons?utm_source=weekly_digest&utm_medium=email&utm_campaign=01132021&utm_content=popular_tool

sqlite -> 图
https://stackshare.io/simple-graph?utm_source=weekly_digest&utm_medium=email&utm_campaign=01132021&utm_content=popular_tool
https://github.com/dpapathanasiou/simple-graph?ref=stackshare

codepen like 开源 MIT
https://stackshare.io/codeswing?utm_source=weekly_digest&utm_medium=email&utm_campaign=01132021&utm_content=new_tool
https://github.com/codespaces-contrib/codeswing?ref=stackshare
https://codepen.io/


静态网页搜索
https://stackshare.io/stork-search?utm_source=weekly_digest&utm_medium=email&utm_campaign=01132021&utm_content=new_tool
https://github.com/jameslittle230/stork?ref=stackshare
omniauth 终于解决 CVE-2015-9284
https://github.com/omniauth/omniauth/releases/tag/v2.0.0
https://github.com/cookpad/omniauth-rails_csrf_protection

网页粉笔画
https://dev.to/baweaver/ruby-3-pattern-matching-applied-poker-4b9d

google cloud 函数支持ruby
https://cloud.google.com/functions/docs/quickstart-ruby
aws 的 ruby lambda
https://www.honeybadger.io/blog/ruby-aws-lambda/
Jets: The Ruby Serverless Framework
https://rubyonjets.com/
纯ruby代码高亮
https://github.com/rouge-ruby/rouge

怎么在没有单元测试情况下进行rails升级
https://www.fastruby.io/blog/rails/upgrade/testing/how-to-upgrade-rails-without-tests.html

rails react 表格
https://boringrails.com/articles/responsive-tables-stimulus-intersection-observer/
常见技术债
https://nextlinklabs.com/insights/most-common-technical-debt-in-rails-projects
## 0114

Erlang Cookie - Remote Code Execution|看下是否会影响ejabberd
https://www.exploit-db.com/exploits/49418
https://insinuator.net/2017/10/erlang-distribution-rce-and-a-cookie-bruteforcer/

渗透测试之地基钓鱼篇：Ink和Mp3伪装钓鱼
https://www.freebuf.com/articles/web/258916.html
渗透测试之地基流量加密篇：OpenSSL、Metasploit、Cobalt strike三种方式进... 会员
https://www.freebuf.com/articles/web/259222.html

一部手机失窃引发的后续思考,如何提高我的个人账号安全?
https://www.anquanke.com/post/id/227949

## 0113

如何对iOS蓝牙执行基于覆盖引导的模糊测试
https://www.freebuf.com/articles/system/258055.html
https://frida.re/

金融行业安全体系建设咨询实践
https://www.freebuf.com/articles/es/258300.html
如何基于AutomationML工程数据自动识别安全风险
https://www.freebuf.com/articles/system/257947.html
甲方安全人员必备的几个“救命”技能
https://www.freebuf.com/articles/neopoints/258323.html
Windows主机日志分析办法与思路
https://www.freebuf.com/articles/neopoints/258131.html
关于PDD员工发帖溯源联想到的相关技术与实现
https://www.freebuf.com/articles/es/260549.html
Shiro权限绕过漏洞详细分析
https://www.anquanke.com/post/id/226899
Shiro反序列化的检测与利用
https://www.anquanke.com/post/id/227090
Apache-Solr-RCE深入利用
https://www.anquanke.com/post/id/227557
初探 Python Flask+Jinja2 SSTI
https://www.anquanke.com/post/id/226900
可对内置暴力破解进行字典替换的Dictionary Config
https://www.anquanke.com/post/id/228229

powershell在主机中是否存在安全隐患
https://www.anquanke.com/post/id/227942
## 0112

https://zhuanlan.zhihu.com/p/101420781
云原生安全-更安全的密文管理 Vault on ACK

## 0111

CDN 2021 完全攻击指南 （一）
https://www.anquanke.com/post/id/227818
1 ping 反查ip,看结果是否有大量不相关的域名存在,如果 baidu.com 对 182.61.200.7 https://tools.ipip.net/ipdomain.php 可以看到很多别的
2 [SecurityTrails](https://securitytrails.com/) 是我最常用的平台之一，免费、精准，数据量极其庞大，足够支撑日常。？但好像没有什么东西？
3 https://completedns.com/ Complete DNS 拥有超过 22 亿个DNS变更记录，提供API，支持同时进行多域名/IP查询。不支持.cn
4 https://whoisrequest.com/
5 https://x.threatbook.cn/ 微步在线 有更多内容
6.Netcraft（https://netcraft.com/）
7.Viewdns（https://viewdns.info/）
8.Whoisxmlapi（https://reverse-ip.whoisxmlapi.com/）
9.Dnsdb（https://dnsdb.io/）
Dnsdb 功能非常强大，老平台了，也是我常用平台之一。
10.SubDomainTools（https://ruo.me/sub）
在线子域名查询，支持实时模式和后台模式，不阻塞前端线程，不占CPU，小测试的时候非常方便。
https://tools.ipip.net/ipdomain.php

如何使用Hetty对HTTP进行安全研究审计
https://www.freebuf.com/articles/web/258188.html
https://github.com/dstotijn/hetty | MIT
docker pull index.docker.io/dstotijn/hetty:0.3.1
mkdir -p $HOME/.hetty
docker run -v $HOME/.hetty:/root/.hetty -p 8080:8080 dstotijn/hetty:0.3.1

如何使用Damn-Vulnerable-Bank来学习Android应用程序安全
https://www.freebuf.com/articles/system/257406.html
如何使用NFCGate对Android进行NFC安全研究
https://www.freebuf.com/articles/terminal/258085.html
APKLab：针对VS Code的Android逆向工程工具
https://www.freebuf.com/sectool/260402.html
如何对二进制代码进行定向模糊测试以扫描用后释放漏洞|逆向工程
https://www.freebuf.com/articles/database/257496.html

渗透测试之地基钓鱼篇：thinkphp平台XSS钓鱼
https://www.freebuf.com/articles/web/258184.html


如何使用Bulwark实现组织的资产以及漏洞管理
https://www.freebuf.com/articles/system/257622.html
reGeorg搭建HTTP隧道和流量分析
https://www.freebuf.com/articles/web/258190.html
数据安全怎么做：静态敏感数据治理
https://www.freebuf.com/articles/database/257135.html
聊聊Gartner 2021战略技术趋势：全面体验
https://www.freebuf.com/articles/260135.html

浅析开源蜜罐识别与全网测绘
https://www.anquanke.com/post/id/227833
BadUSB一键完美免杀上线Cobalt Strike
https://www.anquanke.com/post/id/227477
内网渗透之Responder攻防（上）
https://www.freebuf.com/articles/network/256844.html
https://github.com/taoufik07/responder
https://github.com/SpiderLabs/Responder
github.com/lgandx/Responder 谷歌提示有害信息？
 
https://www.anquanke.com/post/id/227590
从软件研发管理角度理解开发安全中的SDL和DevSecOps
CVE-2020-11800 zabbix RCE漏洞细节披露
https://xz.aliyun.com/t/8991
技术分享 | 从CVE-2020-17518到一键Getshell
https://nosec.org/home/detail/4639.html
从软件研发管理角度理解开发安全中的SDL和DevSecOps

CVE-2020-11800 zabbix RCE漏洞细节披露
https://xz.aliyun.com/t/8991
MQTT安全初探
https://mp.weixin.qq.com/s?__biz=MzUzMjcxMzg5Mg==&mid=2247487921&idx=1&sn=dabc68501c368eef0434bc16bd01dfa4

## 0108

https://www.devops.buzz/public/general/tools

[Linux应急响应笔记](https://www.freebuf.com/articles/network/248376.html) 

[Linux应急响应笔记（二）|需要应用到实践](https://www.freebuf.com/articles/others-articles/257827.html)

busybox
alpine linux:
  security-oriented, lightweigth Linux distribution base on musl libc and busybox
alternativeto
  A free-range, non-GMO fork of busybox in 100% Rust 🦀
https://github.com/samuela/rustybox
Unix command line utilities installer for Windows.
https://github.com/bmatzelle/gow
linux　命令行
http://www.pixelbeat.org/cmdline_zh_CN.html
http://landley.net/toybox/
https://github.com/landley/toybox
POSIX time for OCaml
https://github.com/dbuenzli/ptime
https://www.boost.org/doc/libs/1_65_1/doc/html/date_time/posix_time.html

让所有安全平台支持情报分析
https://www.anquanke.com/post/id/227609

开发一款基于MitmProxy的被动式漏洞扫描工具 会员 金币
https://www.freebuf.com/sectool/253025.html

渗透测试指南（八）基于本地主机和物理的利用
https://www.freebuf.com/articles/others-articles/247827.html
https://www.freebuf.com/articles/others-articles/243229.html

## 0107

声明：CVE-2019-9193 不是安全漏洞
http://117.78.49.126/article_101_10000077

Postgresql 渗透利用总结
https://cloud.tencent.com/developer/article/1668989

Mybatis 框架下 SQL 注入攻击的 3 种方式，真是防不胜防
https://www.jianshu.com/p/875902ea7df6

这些FastJson漏洞已经人尽皆知的事情（安全角度）
https://www.freebuf.com/articles/web/258948.html

赵彦的CISO闪电战｜两年甲方安全修炼之路
https://www.freebuf.com/articles/es/200024.html

基于Bash Shell的一个审计脚本
https://www.freebuf.com/articles/web/257631.html

安全运营之SOAR：架构雏形
https://www.freebuf.com/articles/es/256988.html

基于套接字的模糊测试技术，第1部分：FTP服务器（下）
https://www.anquanke.com/post/id/227121

CVE-2020-17518/17519：Apache Flink 目录遍历漏洞
https://www.anquanke.com/post/id/227630

Apache Flink 多个漏洞分析
https://www.anquanke.com/post/id/227668

密钥管理服务Vault部署与应用介绍
https://www.secrss.com/articles/11755

## 0106

Terrascan：一款功能强大的代码合规性跨基础设施检测工具|看不出怎么用？？
https://www.freebuf.com/articles/web/256898.html
OnionSearch：一款针对洋葱域名的URL搜索脚本
https://www.freebuf.com/articles/web/256896.html
App安全检测实践基础：客户端程序安全（一）
https://www.freebuf.com/articles/terminal/255712.html
DevSecOps建设之白盒篇
https://www.freebuf.com/articles/es/259762.html
基于套接字的模糊测试技术，第1部分：FTP服务器（上）
https://www.anquanke.com/post/id/227120
hackme：2 靶机攻略
https://www.anquanke.com/post/id/227330

## 0105

[全球超过十万个Zyxel设备被曝存在后门](https://www.freebuf.com/news/259672.html)
[CVE-2020-29583：zyxel 默认凭据漏洞通告](https://www.anquanke.com/post/id/227395)
zyfwp
PrOw!aN_fXp
https://www.shodan.io/search?query=USG+FLEX
https://www.zoomeye.org/searchResult?q=zyxel
https://www.zdnet.com/article/backdoor-account-discovered-in-more-than-100000-zyxel-firewalls-vpn-gateways/

[红蓝对抗之Linux内网渗透](https://www.freebuf.com/articles/network/257603.html)

包含一些容器安全的内容，值得研究

门罗币挖矿僵尸网络PGMiner瞄准PostgreSQL
https://www.freebuf.com/news/257686.html
企业FRP安全实践
https://www.freebuf.com/articles/network/257772.html

基于静态和动态分析的Android应用漏洞挖掘方法
https://www.anquanke.com/post/id/221581
DNSMon：用DNS数据进行威胁发现（2）
https://www.anquanke.com/post/id/227326
你可能不知道的挖洞小技巧系列之OAuth 2.0
https://www.anquanke.com/post/id/227242

Dubbo 2.7.8多个远程代码执行漏洞
https://xz.aliyun.com/t/8917
AMNESIA:33 检测工具
https://github.com/Forescout/project-memoria-detector
CVE-2020-15257-host模式容器逃逸漏洞分析
https://xz.aliyun.com/t/8925
https://www.ehackingnews.com/2021/01/2010-2020-decade-roundup-10-most.html
2010-2020 Decade Roundup: 10 Most Frequently Occurred Security Vulnerabilities
CVE-2020-15257-host模式容器逃逸漏洞分析
https://xz.aliyun.com/t/8925

1月1日每日安全热点 - 2020年新增的十大最重要CVE
https://www.anquanke.com/post/id/227296


## 0104

[私有云安全：纵深防御设计实践](https://www.freebuf.com/articles/network/256296.html)

[Spring全家桶各类RCE漏洞浅析](https://www.freebuf.com/articles/web/256837.html)
  [IoC原理](https://www.liaoxuefeng.com/wiki/1252599548343744/1282381977747489)
  [小白也看得懂的 Spring IoC 核心流程介绍](https://zhuanlan.zhihu.com/p/104519509)
Spring ApplicationContext 容器
https://wiki.jikexueyuan.com/project/spring/ioc-container/spring-application-context-container.html  
Spring Context 你真的懂了吗
https://juejin.cn/post/6844903923703087111
Spring核心组件详解（Bean、Context、Core）
https://blog.csdn.net/zlfprogram/article/details/75937935
Spring-Context之一:一个简单的例子
https://www.cnblogs.com/huang0925/p/3593062.html
Spring(4)——面向切面编程（AOP模块）
https://www.jianshu.com/p/994027425b44
Spring 框架的 AOP
https://wiki.jikexueyuan.com/project/spring/aop-with-spring.html

[如何使用Apk-Medit对APK进行内存搜索和数据修改](https://www.freebuf.com/articles/database/256815.html)

[内网穿透从搭建到溯源](https://www.freebuf.com/articles/web/257038.html)

[emp3r0r - Linux用户打造的Linux后渗透框架 | vs kali? metaexploit](https://www.freebuf.com/sectool/259079.html)

A vulnerable Android application that shows simple examples of vulnerabilities in a ctf style.
https://github.com/B3nac/InjuredAndroid

## 0101

