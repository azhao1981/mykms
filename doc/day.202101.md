# 202101

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
CVE-2020-35728：FasterXML jackson-databind 2.x RCE漏洞|POC
https://github.com/Al1ex/CVE-2020-35728
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

