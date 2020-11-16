# 扫描

## 扫描防御

我谈网络扫描 -- 之三
https://blog.51cto.com/zoukejian/61737

我们应该使用各种针对端口和漏洞扫描的检测和防护措施，来积极地跟恶意的网络扫描做斗争，限制他们的扫描范围，减少他们通过扫描能获得的信息，从而更好地保护我们的网络安全。

## 扫描工具

### nessus
下载
https://www.tenable.com/downloads/nessus?loginAttempted=true
要注意下载对应的平台和版本

神兵利器系列|nessus8.8安装破解
https://blog.csdn.net/milkway2013/article/details/105142471
破解的方法还是在 更换 plugin_feed_info.inc 上

```bash
export PLUGIN_SET="202007291115"
cat > /opt/nessus/lib/nessus/plugins/plugin_feed_info.inc <<EOF
PLUGIN_SET = ${PLUGIN_SET};
PLUGIN_FEED = "ProfessionalFeed (Direct)";
PLUGIN_FEED_TRANSPORT = "Tenable Network Security Lightning";
EOF
cat > /opt/nessus/var/nessus/plugin_feed_info.inc <<EOF
PLUGIN_SET = ${PLUGIN_SET};
PLUGIN_FEED = "ProfessionalFeed (Direct)";
PLUGIN_FEED_TRANSPORT = "Tenable Network Security Lightning";
EOF
```
更新插件

https://zh-cn.tenable.com/products/nessus/activation-code?tns_redirect=true#nessus
Nessus Essentials
注册一个
https://plugins.nessus.org/offline.php
/opt/nessus/sbin/nessuscli fetch --challenge
256de4da507f88a7eac6fd86e12ae66d40bc77a1

/opt/nessus/sbin/nessuscli update all-2.0.tar.gz
sudo /opt/nessus/sbin/nessuscli update ./all-2.0.tar.gz

[sudo] password for ubuntu:
下载最新插件，请到知识星球搜索“安全工具箱”
Shared by Shad0wpf
Nessus插件更新中...
Nessus插件更新完成，重启服务...
cp: cannot stat '/opt/nessus/var/nessus/www/policy_wizards.json': No such file or directory
sed: can't read /opt/nessus/var/nessus/www/policy_wizards.json: No such file or directory
sed: can't read /opt/nessus/var/nessus/www/policy_wizards.json: No such file or directory
cp: cannot stat '/opt/nessus/etc/nessus/nessus-fetch.db.bak': No such file or directory

[nessus pro破解安装及插件离线跟新|windows](https://www.mad-coding.cn/2019/11/27/nessus-pro%E7%A0%B4%E8%A7%A3%E5%AE%89%E8%A3%85%E5%8F%8A%E6%8F%92%E4%BB%B6%E7%A6%BB%E7%BA%BF%E8%B7%9F%E6%96%B0/#0x06-%E7%A6%BB%E7%BA%BF%E8%B7%9F%E6%96%B0)

[Nessus v8.x 永久破解方法](http://j0k3r.top/2020/01/05/nessus-crack/#3-%E6%9B%BF%E6%8D%A2%E6%96%87%E4%BB%B6)

使用:
Nessus之——Nessus的整理
https://blog.csdn.net/l1028386804/article/details/84137453

没有 compliance的问题: 应该是安装了试用版本
试一下用pro版本

Be sure to check the Vulnerabilities tab. 
It will list if there were any authentication failures, which could be why there are no results. 
Also in your scan configuration you can enable debugging:

Go to: Settings -> Advanced

Change: 'Scan Type' to 'Custom'

Go to: Settings -> Advanced -> General

https://slidelegend.com/nessus-compliance-checks-tenable-support-portal_59b258121723dd6c7341e172.html

### Goby

推荐： ****

白帽汇出品扫描神器,用于扫描内网不错

缺点：不开源，pro版本不公开

[主页](https://cn.gobies.org/)

[github](https://github.com/gobysec/Goby)

[下载](https://cn.gobies.org/goby-win-x64-1.6.154.zip)

beta版本
https://cn.gobies.org/goby-win-x64-1.7.186.zip
https://cn.gobies.org/goby-win-x64-1.7.192.zip
https://wws.lanzous.com/i4oLFg1n1md 密码: 74o3

依赖: [npcap](https://nmap.org/npcap/#download)

[npcap下载](https://nmap.org/npcap/dist/npcap-0.9983.exe)

Goby内测版1.7.192 | 攻防实战Buff版
https://nosec.org/home/detail/4517.html

Goby内测版1.7.186发布 | 开放插件市场，共享社区力量
https://nosec.org/home/detail/4491.html

Goby内测版1.6.154发布 | 攻防实战版来了
https://nosec.org/home/detail/4465.html

Goby——新一代安全工具
https://www.freebuf.com/sectool/232007.html

其它引用

[Goby插件分享 | 可以上传json文件的“Shodan插件”](https://nosec.org/home/detail/4516.html)

[Goby插件分享 | 可以查看摄像头快照的“Hikvision插件”](https://nosec.org/home/detail/4515.html)

技术分享 | Goby食用指南之红蓝对抗
https://nosec.org/home/detail/4523.html

### OpenVAS ***

OpenVAS（Open Vulnerability Assessment System）是在nessus基础上发展起来的一个开源的漏洞扫描程序，其核心部件是一套漏洞测试程序，可以检测远程系统和应用程序中的安全问题。

[主页](https://www.openvas.org/)

[5.2 使用OpenVAS](https://wizardforcel.gitbooks.io/daxueba-kali-linux-tutorial/content/28.html)

[Openvas配置slave的debug之路](https://www.freebuf.com/sectool/226016.html)

[以Docker容器的形式运行openvas](https://www.freebuf.com/sectool/234253.html)

[译】使用OpenVAS 9进行漏洞扫描](https://www.cnblogs.com/Hi-blog/p/Installation-and-Use-OpenVAS-On-Kali.html)

dot-prop (npm)	< 5.1.1	5.1.1
Bumps elliptic from 6.4.1 to 6.5.3.

# hack工具-scanner

## 来源: 9.1 漏洞扫描

  ACL 扫描: 无需对外开放的端口或 IP 在公网中,扫描至少一天一次 nmap,masscan
  弱口令扫描: Nessus X-scan h-scan Hydra
  系统及应用服务漏洞扫描: Nessus OpenVAS
  web 漏洞扫描: AcunetixWebVulnerabilityScanner (AWVS) SQLmap sw3af arachni Zed Attack Proxy

## 工具详情

nmap,masscan
Nessus X-scan h-scan Hydra

### 黑客工具

+ [排名前20位最受欢迎的黑客工具](http://m.solves.com.cn/it/wlyx/ssyq/2020-01-08/11377.html)
+ [最受欢迎的14款渗透测试工具](https://blog.csdn.net/yangwenxue_admin/article/details/93978894)
+ [2019年最受欢迎的20款黑客工具](https://zhuanlan.zhihu.com/p/100870206)

### 教程

[渗透测试红队资料史上超全集锦：（一） ](https://zhuanlan.zhihu.com/p/77207658)

### AWVS

awvs 中文手册详细版
https://www.cnblogs.com/jpfss/p/11003140.html
[超详细版]AWVS中文教程
https://cloud.tencent.com/developer/article/1480771

### AppScan

133.. baidu tools
9.0.3.12版本官网下载
https://ak-delivery04-mul.dhe.ibm.com/sar/CMA/RAA/085hp/0/9.0.3.12-AppScan_Setup.exe

https://www.52pojie.cn/thread-1026775-1-1.html
### Nessus

 [账号](work/sec/udesk.test.md#Nessus)

133.. baidu tools

[Windows] Nessus 8扫描器
https://www.52pojie.cn/thread-898541-1-1.html

### Hydra

支持多种协议方式的破解与爆破，v8 以后就不提供 windows 版本了

[github](https://github.com/vanhauser-thc/thc-hydra)

[社区windows分支](https://github.com/maaaaz/thc-hydra-windows)

[Hydra扫描姿势](https://www.cnblogs.com/xishaonian/p/7292168.html)

[黑客破解工具Hydra在线爆破密码](https://www.jianshu.com/p/9c0f808877fb)

```bash
docker pull vimagick/hydra

hydra -L users.txt -P password.txt -vV -o ssh.log -e ns IP ssh
```

### [SQLmap](./sec.scan.sqlmap.md)

### h-scan

https://github.com/jas502n/Hscan
系统要求: Windows NT/2000/XP
https://www.cnblogs.com/pursuitofacm/p/6737997.html
HScan对扫描Ftp、SQL Server 2000、MySQL等弱密码效果很好，效率比较高，扫描一个网段往往会扫描出几十个到几百个密码，配合其他工具可以完全控制这些弱密码计算机。在后面的综合案例中我们会介绍HScan的几种综合利用方法。

[技术分享]内网安全工具之hscan扫描 有下载
https://bbs.ichunqiu.com/thread-47846-1-1.html

### x-scan
https://x-scan.apponic.com
Windows XP, 2000, 98,没有 linux,mac

### [nmap](doc/nmap.md)

### [masscan](https://github.com/robertdavidgraham/masscan)

```bash
sudo apt install git gcc make libpcap-dev -y
git clone --depth=1 https://github.com/robertdavidgraham/masscan
cd masscan
make
```

masscan缺点: --banners  获取banner信息，支持少量的协议,基本没有,最好完成后再用 nmap 来识别

相关工具:

+ [端口扫描 + 敏感文件扫描 + POC批量调用框架](https://github.com/imp0wd3r/Scanner)

[About masscan](https://lddp.github.io/2018/05/10/masscan/)
```bash
masscan -iL masscan.txt
masscan -n -v -Pn -p 1-65535 61.156.109.241-61.156.109.246 -oX /root/Desktop/61.156.109.241-546.txt
```
-p 指定端口
-r 指定发包速度, 默认每秒100个数据包
-iL 指定一个ip列表文件
-o 输出到文件（oB，oX）
-Pn 类似于nmap，默认主机开启
-n 不进行域名的反向解析，加快速度
-v 显示进度

[更多参数](https://hackfun.org/2017/04/23/Kali-Linux%E4%BF%A1%E6%81%AF%E6%94%B6%E9%9B%86%E4%B9%8Bmasscan/)

[Masscan：最快的互联网IP端口扫描器](https://www.freebuf.com/sectool/112583.html)

[从 Masscan, Zmap 源码分析到开发实践](https://www.anquanke.com/post/id/188685)

[nmap太慢？快速扫描端口工具MASSCAN！附linux、windows版本下载](http://www.db-sec.com/2019/05/nmap%E5%A4%AA%E6%85%A2%EF%BC%9F%E5%BF%AB%E9%80%9F%E6%89%AB%E6%8F%8F%E7%AB%AF%E5%8F%A3%E5%BF%AB%E7%94%A8masscan%EF%BC%81%E9%99%84linux%E3%80%81windows%E7%89%88%E6%9C%AC%E4%B8%8B%E8%BD%BD/)

[Masscan教程和入门手册 2017年11月1日](https://www.4hou.com/tools/8251.html)

### [xray](https://github.com/chaitin/xray) | [xray 安全评估工具 ](https://chaitin.github.io/xray/)

+ XSS漏洞检测 (key: xss)
+ SQL 注入检测 (key: sqldet)
+ 命令/代码注入检测 (key: cmd_injection)
+ 目录枚举 (key: dirscan)
+ 路径穿越检测 (key: path_traversal)
+ XML 实体注入检测 (key: xxe)
+ 文件上传检测 (key: upload)
+ 弱口令检测 (key: brute_force)
+ jsonp 检测 (key: jsonp)
+ ssrf 检测 (key: ssrf)
+ 基线检查 (key: baseline)
+ 任意跳转检测 (key: redirect)
+ CRLF 注入 (key: crlf_injection)
+ Struts2 系列漏洞检测 (高级版，key: struts)
+ Thinkphp系列漏洞检测 (高级版，key: thinkphp)
+ POC 框架 (key: phantasm)

### 代码类

[brakeman](http://brakemanscanner.org/) |
[brakeman](https://github.com/presidentbeef/brakeman)

### [中间人攻击工具](https://github.com/evilsocket/bettercap)


### 知识库和安全知识普及
[checklist](https://github.com/FallibleInc/security-guide-for-developers)
https://github.com/brunofacca/zen-rails-security-checklist
https://www.sqreen.com/checklists/saas-cto-security-checklist
[Ruby常见安全问题](https://www.sitepoint.com/common-rails-security-pitfalls-and-their-solutions/)
[python常见安全问题](https://hackernoon.com/10-common-security-gotchas-in-python-and-how-to-avoid-them-e19fbe265e03)
[免费 Top 100 Hacking & Security E-Books](https://github.com/yeahhub/Hacking-Security-Ebooks)
[HTML5 Security Cheatsheet](https://github.com/cure53/H5SC)
[Front-end security and Cross-Site Scripting (XSS) for Ruby on Rails developers](http://molily.de/xss/)
[Authentication for Rails API](https://zhuanlan.zhihu.com/p/20818699)
[Secure Tips Learn From Rails 还是header相关](http://hooopo.logdown.com/posts/144057-d22fb477)
[浅析白盒安全审计中的XSS Fliter](http://www.freebuf.com/articles/web/30201.html)
[Rails 不安全的默认配置 —— 需要了解的13个安全陷阱](http://www.oschina.net/translate/rails-insecure-defaults?cmp&p=2)
[中文guides](http://guides.ruby-china.org/security.html)
[網路安全/rails圣经](https://ihower.tw/rails/security.html)

[github 的安全相关](https://github.com/showcases/security)
+ <https://github.com/trimstray/the-book-of-secret-knowledge#hackingpenetration-testing-toc>
+ <https://github.com/Hack-with-Github/Awesome-Hacking>

## 其它工具

### [aws 上可以用的安全工具集合](https://github.com/toniblyx/my-arsenal-of-aws-security-tools)

### 另一种 ids [Suricata IDS 入门 — 规则详解](https://www.secpulse.com/archives/71603.html)
[Suricata + Lua实现本地情报对接](https://www.freebuf.com/sectool/218951.html)

### 容器化安全扫描
[A Simple and Comprehensive Vulnerability Scanner for Containers, Suitable for CI](https://github.com/aquasecurity/trivy)

[Terraform](https://www.terraform.io/) 是一个编排工具,暂时无用

#### https://xenbits.xen.org/

#### 测试代理工具 charles wireshark
http://xclient.info/s/charles.html
https://www.wireshark.org/#download

CA加密,网络安全HTTPS SSL-安全传输协议SSL和TLS及WTLS的原理
http://wenku.baidu.com/view/dd8dbdc66137ee06eff91887.html
HTTPS的七个误解（译文）
http://www.ruanyifeng.com/blog/2011/02/seven_myths_about_https.html

十大互联网巨头的开源安全工具:

一、[安全猴 Security Monkey](https://github.com/Netflix/security_monkey)

“安全猴”是Netflix三年前开发的一个安全工具，能够对亚马逊云服务的配置进行监控和安全分析，组件功能包括监控各种AWS账号组件，机遇规则的开发和执行活动，在审计规则被触发时通知用户，并存储配置历史信息用作电子取证和审计目的。

二、[OSquery](https://github.com/facebook/osquery)

　　OSquery是Facebook刚刚发布的一个安全工具，为安全专业人士提供了一个可调用底层操作系统功能的系统，例如启动进程、加载内核模块、在SQL数据库表中打开网络连接进行查询和监控等。

三、[Skyline](https://github.com/etsy/skyline)

　　Skyline是电商网站Etsy技术团队开发的一个类似Nagios的实时异常侦测系统，主要目的是为安全团队提供一个可扩展的被动监控指标体系——可以同时跟踪成百上千的指标。

四、MIDAS

MIDAS是Etsy与Facebook安全团队合作为Mac电脑开发的一个轻量级可扩展的入侵侦测系统。开发团队希望从MIDAS开始，企业开始留意OSX系统端点的常见攻击模式。

    https://github.com/etsy/MIDAS

五、Secureheaders

Secureheaders是Twitter送给web开发者的一份大礼，作为一款web安全开发工具，Secureheaders能够自动实施安全相关的header规则，包括内容安全政策（CSP），防止XSS、HSTS等攻击，防止火绵羊（Firesheep）攻击以及XFO点击劫持等。

    https://github.com/twitter/secureheaders

六、Google Rapid Response

GRR（Google Rapid Response）是Google开发的一个时间响应框架，支持进行远程实时取证。Google将GRR以开源工具的方式与安全界分享，可以作为FireEye/Mandiant 的MIR事件响应平台的替代产品。

    https://github.com/google/grr

七、Scumblr和Sketchy

Scumblr和Sketchy是Netflix今年夏天同时发布的两款web应用，可以帮助安全团队监控和记录社交媒体和网络聊天中的安全威胁和攻击。

    https://github.com/Netflix/Scumblr

    https://github.com/Netflix/sketchy

八、Conceal

Conceal是面向Android平台的一组简单的Java API，能够对SD卡等公共存储设备中的大文件进行快速加密和认证。Conceal由Facebook设计，开发者可利用Conceal开发出能适用于老版本Android的内存和处理器开销较低的加密算法。

    https://github.com/facebook/conceal

九、Rappor

RAPPOR(Randomized Aggregatable Privacy-Preserving Ordinal Response )是Google上月才发布的隐私工具，能够从终端用户软件采集众包统计数据，同时又不侵犯用户隐私。

    https://github.com/google/rappor

十、Moloch

Moloch由AOL的技术团队开发，是一个网络流量分析取证工具，能够大规模抓取IPv4数据包，进行索引并存储，可通过一个简单的web界面浏览、搜索和输出所有PCAP数据。

    https://github.com/aol/moloch

[🔒🌍 Static analysis powered security scanner for your terraform code](ttps://github.com/liamg/tfsec)

这个是中文哦,.net 开发,夸平台要用 mono,暂时不看

大型内网渗透扫描器&Cobalt Strike，包含信息收集/端口扫描/服务识别/网络资产/密码爆破/漏洞检测/漏洞利用。漏洞检测含MS17010、Weblogic、ActiveMQ、Tomcat等，密码口令爆破含(Mysql、Oracle、MSSQL)、FTP、SSH(Linux)、VNC、Windows(IPC、WMI、SMB)等,可高度自定义插件支持.NET程序集、DLL(C#/Delphi/VC)、PowerShell等语言编写的插件,支持通过配置INI批量调用任意外部程序或命令,EXP生成器一键生成Web漏洞POC,可快速扩展扫描或利用能力。支持Cobalt Strike插件化直接内存加载Ladon扫描快速拓展内网横向移动

[Ladon](https://github.com/k8gege/Ladon)

[vuls](https://github.com/future-architect/vuls)
Agent-less vulnerability scanner for Linux, FreeBSD, Container Image, Running Container, WordPress, Programming language libraries, Network devices https://vuls.io/

[脏牛](https://github.com/dirtycow/dirtycow.github.io)
+ http://bobao.360.cn/learning/detail/3123.html


Faster Nmap Scanning with Rust
https://github.com/RustScan/RustScan