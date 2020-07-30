# 应急响应中心 SECURITY RESPONSE CENTER

##　技术方法

蓝队应急响应之“雄鸡夜鸣” | 应急响应技巧
https://www.anquanke.com/post/id/211974
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

