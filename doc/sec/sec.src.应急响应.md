# 应急响应中心 SECURITY RESPONSE CENTER

## index

[企业安全建设之应急响应](https://www.freebuf.com/articles/es/249593.html)

[取证](doc\sec\sec.tools.forensicCollection.取证.md)

## linux

[Linux应急响应笔记 金币](https://www.freebuf.com/articles/network/248376.html)

<https://yinwc.github.io/2020/01/21/应急响应笔记之Linux篇/>

https://yinwc.github.io/2020/01/21/%E5%BA%94%E6%80%A5%E5%93%8D%E5%BA%94%E7%AC%94%E8%AE%B0%E4%B9%8BLinux%E7%AF%87/
### busybox和PS

## 参考

[入门级应急响应小贴士](https://www.freebuf.com/articles/es/238170.html)

[使用Elasticsearch与TheHive构建开源安全应急响应平台](https://www.freebuf.com/articles/es/203538.html)

[应急响应之SqlServr.exe挖矿病毒行为分析](https://www.freebuf.com/articles/system/236927.html)

[应急响应之X系统数据库篡改应急分享](https://www.freebuf.com/articles/web/236766.html)

[我的主机是不是被gank了？Windows入侵排查初探| 应急响应](https://www.freebuf.com/articles/system/238860.html)

[干货 | 黑客入侵？这里有详细的应急排查手册！](https://www.leiphone.com/news/201706/oCidY2C8IPHt82mF.html)

[记一次简单的应急响应](https://www.freebuf.com/articles/web/242574.html)

应急响应：
[服务器遭遇挖矿怎么办？](https://www.freebuf.com/articles/es/242323.html)

[从入侵应急响应到追踪溯源](https://www.freebuf.com/articles/web/249206.html)

[应急响应之 Linux 下进程隐藏](https://www.anquanke.com/post/id/226285)

[一起钓鱼邮件的应急响应](https://www.freebuf.com/articles/system/256049.html)

[应急响应之如何发现隐藏的Webshell后门](https://www.freebuf.com/vuls/256214.html)

[应急响应Wiki](https://www.yuque.com/tidesec/emergency)

https://github.com/tide-emergency/yingji
[应急响应之入侵排查](https://www.freebuf.com/articles/system/260724.html)

[stackoverflow 一次入侵应急响应](https://stackoverflow.blog/2021/01/25/a-deeper-dive-into-our-may-2019-security-incident/)

[记一次略坑的应急响应事件](https://www.freebuf.com/articles/web/259677.html)

pe对系统密码进行更改处理
对系统计划任务、进程运行、主引导区记录等多个项目进行完整检查
3.排查定时任务，并且跟现场工作人员核对，未发现其他非工作人员创建的定时任务
4.排查系统防火墙，日志审核策略及日志留存情况，并将日志做导出备份处理：
5.跟主机安全负责人、网络负责人及该主机使用方做相关询问得出以下信息：
1.基于该主机自身情况进行分析
（1）调查该主机自身感染病毒木马情况：人工分析未发现系统感染恶意病毒木马特征，无可疑账户、克隆账户、可疑计划任务，未发现入侵现象。
2）系统日志分析情况：对近期系统登录成功与失败日志进行排查
（3）使用logparse进行日志分析：

[应急响应之Linux下进程隐藏](https://www.freebuf.com/articles/network/258510.html)

勒索软件解密工具集
腾讯哈勃：https://habo.qq.com/tool

linux　命令行
http://www.pixelbeat.org/cmdline_zh_CN.html
http://landley.net/toybox/
https://github.com/landley/toybox
POSIX time for OCaml
https://github.com/dbuenzli/ptime
https://www.boost.org/doc/libs/1_65_1/doc/html/date_time/posix_time.html

让所有安全平台支持情报分析
https://www.anquanke.com/post/id/227609

再总结应急响应：
https://github.com/meirwah/awesome-incident-response/blob/master/README_ch.md



##　技术方法

[蓝队应急响应之“雄鸡夜鸣” | 应急响应技巧](https://www.anquanke.com/post/id/211974)

报警
确认攻击
    确认受攻击目标
    对比正常登录日志(找对应人进行确认)
    确认攻击ip
    确认关联攻击 
确认攻击方法
    只有3个系统进程正在运行，这很不正常。通过rpm -Va命令列出目前系统上面所有可能被更改过的文件，如top、netstat、ps等命令已经被替换。
    仅有一个用户具有root权限，未被注入超级权限。awk -F: '$3==0{print $1}' /etc/passwd
    只有两个用户可以使用SSH方式进行登录：root、jenkinscat /etc/passwd |grep –E “/bin/bash&”
    定时任务
        crontab -u root -l
        crontab -u jenkinscat -l
    hosts 文件分析
    启动项分析
        启动项记录系统自启动的情况，若攻击者入侵植入木马或者后门，为了维持服务器控制，会在启动项中发现他的蛛丝马迹。systemctl list-unit-files |grep enabled启动项无异常。
    历史命令分析
        History
        历史命令被清空，top等程序被替换攻击者对痕迹进行了清理，对系统排查似乎理不出什么头绪。我决定换一个思路，从Jenkins上尝试突破。从Jenkins日志排查。
    jenkins日志
    版本 攻击方法
    google: jenkins rce
    https://github.com/petercunha/jenkins-rce
    https://github.com/orangetw/awesome-jenkins-rce-2019
    Jenkins RCE漏洞分析汇总
    http://www.lmxspace.com/2019/09/15/Jenkins-RCE%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90%E6%B1%87%E6%80%BB/?utm_source=tuicool&utm_medium=referral
    Jenkins RCE PoC or simple pre-auth remote code execution on the Server.
    https://medium.com/@valeriyshevchenko/jenkins-rce-poc-or-simple-pre-auth-remote-code-execution-on-the-server-d18b868a77cb

态势感知 network security situation awareness NSSA
SITUATION AWARENESS|描述一个态势感知平台应该包含哪些
https://www.mitre.org/capabilities/cybersecurity/situation-awareness
Graph database-based network security situation awareness data storage method
https://jwcn-eurasipjournals.springeropen.com/articles/10.1186/s13638-018-1309-9

Snort: Visibility
Nagios: Visibility
Ettercap: Testing
If you need to test your enterprise network for resistance to man-in-the-middle attacks (MITM), 
then Ettercap is the tool for you. This program has been doing one thing – launching MITM attacks – since its initial release in 2001.
Ettercap has four basic modes of attack: IP-based, MAC-based, and two ARP-based strategies. You can decide which type of vulnerabilities to explore and look for how your environment responds to each.

In the process of scanning for a testing attack, Ettercap can provide a great deal of information about the network and its devices. As part of an overall security toolkit, Ettercap provides strong capabilities for MITM attacks and solid augmentation for analysis and visibility functions.
Infection Monkey: Testing

Infection Monkey is a rather comprehensive testing tool designed to show you what can happen inside your network if an attacker is successful in breaching the perimeter. Developed and supported by GuardiCore, Infection Monkey is free and fully functioned.

The user interface is among Infection Monkey's notable features. While some open source security projects provide minimalist UIs or depend on plug-ins or skins for a GUI, Infection Monkey has a GUI that is on par with many commercial software tools.

Source code for Infection Monkey is available on GitHub, with an active developer community around the project. Other tools are critical for probing your defenses for breach vulnerabilities; Infection Monkey can show you why you should strengthen your entire infrastructure.
Delta: Testing
Many options exist for testing security on traditional networks. However, testing specific security issues that can accrue to software-defined networks (SDNs) is a still-developing field – and that's why Delta is important.

A project of the Open Networking Foundation (ONF), Delta looks for potential issues in an SDN and then probes the issues to help determine how exploitable they are. With a built-in fuzzing capability, Delta is designed to probe for the existence of both known and unknown network vulnerabilities.

Built on the foundation of previous ONF projects Florence and Poseidon, Delta's code and executables are available on GitHub and are still undergoing rapid development.

Cuckoo Sandbox: Forensics
There are many ways to figure out whether a file is malicious, but many of them carry some level of risk. Cuckoo Sandbox is an open source framework for safely testing a file to find out what it is — and what it will really do if launched in your environment.

With source code available on GitHub, Cuckoo Sandbox analyzes both files and websites under a variety of different operating systems. It performs analysis of APIs and network traffic, and will do complete memory dumps to allow for a detailed analysis of where the software being tested is putting bits and pieces of itself — and whether it is trying to expand beyond its allowable boundaries.

The Sleuth Kit: Forensics

Figuring out what has happened in an attack can be a crucial step in preventing future intrusions. The Sleuth Kit is a collection of CLI-based tools and libraries that allow an investigator to dig into the contents of hard drives formatted in a wide variety of formats and conditions.

The Sleuth Kit is the basis for Autopsy, a GUI front end that makes analysis faster and easier for most users. Both are under active development and have large, vibrant user communities contributing to new features and functions.
https://www.sleuthkit.org/autopsy/
https://www.sleuthkit.org/

Lynis: Compliance
https://github.com/CISOfy/lynis
Lynis is a tool that makes lists — lists of the applications and utilities it finds on Unix-based systems, lists of the versions of those systems, and lists of the vulnerabilities it finds in either the code or the configurations of each one.

With source code available on GitHub, Lynis has an active development community, with primary support coming from its creator, Cisofy. One of the special capabilities of Lynis is that, because of its Unix foundation, it is able to perform scanning and evaluation of popular IoT development boards, including the Raspberry Pi.
https://certbot.eff.org/ 证书
Encryption is critical for many security standards, including everyone's new favorite, GDPR. Implementing encryption can be complicated and costly, but the EFF has tried to make it less of both with tools like Certbot, an open source automatic client that fetches and deploys SSL/TLS certificates for your web server.

