# 202012

## 1215
微服务中台技术解析之分布式事务方案和实践
https://www.infoq.cn/article/0x8XMK4XgDTF98kTDNhD

https://weex.apache.org/zh/
Weex 致力于使开发者能基于通用跨平台的 Web 开发语言和开发经验，来构建 Android、iOS 和 Web 应用。简单来说，在集成了 WeexSDK 之后，你可以使用 JavaScript 语言和前端开发经验来开发移动应用。

FireEye 红队失窃工具大揭秘之：分析复现 Confluence路径穿越漏洞 (CVE-2019-3398)
https://www.anquanke.com/post/id/225452

FireEye 红队失窃工具大揭秘之：分析复现 Confluence路径穿越漏洞 (CVE-2019-3398)
https://www.anquanke.com/post/id/225452
Confluence 6.6.1

CVE-2016-3510——WebLogic反序列化初探
https://www.anquanke.com/post/id/224593

Windows权限维持技巧之隐藏服务
https://www.freebuf.com/articles/system/254838.html

GB∕T 30276-2020 信息安全技术 网络安全漏洞管理规范
http://c.gb688.cn/bzgk/gb/showGb?type=online&hcno=7EF97931115A518655DCD136653CBD74
https://www.wangan.com/docs/gbt30276-2020

一起典型DDoS事件的应急处置
https://www.freebuf.com/articles/web/255342.html

https://www.exploit-db.com/exploits/49257
Gitlab 11.4.7 - Remote Code Execution
8.13.6 

CVE-2020-26258/26259：XStream 反序列化漏洞通告
https://www.anquanke.com/post/id/225489

## 1214

https://dev.to/ravimengar/a-git-cheatsheet-of-commands-every-developer-should-use-38ma?utm_source=digest_mailer&utm_medium=email&utm_campaign=digest_email
https://dev.to/kais_blog/14-awesome-javascript-array-tips-you-should-know-about-1d0m?utm_source=digest_mailer&utm_medium=email&utm_campaign=digest_email
https://dev.to/blessingartcreator/8-useful-javascript-tricks-you-didn-t-know-in-4-minutes-3npb?utm_source=digest_mailer&utm_medium=email&utm_campaign=digest_email

[Jenkins 2.235.3 - 'Description' Stored XSS](https://www.exploit-db.com/exploits/49237)

分析: Restrict project naming 功能是对任务(job/item) 命令的限制
前提: 可以进 /configure 来进行配置
那么问题是: 都谁有权限进 /configure

Version: <= 2.251 and <= LTS 2.235.3
整正的代码: https://github.com/jenkinsci/jenkins/pull/4918/commits/7529ce8905910849e890b7e26d6563e0d56189d2

1. 进入 http://xxx.com/configure
配置 [] Restrict project naming
Pattern: .*    to  ^TEST.* 
Description: GX1h4ck <img src=a onerror=alert(1)>  
2. 进入 http://xxx.com/view/all/newJob
在name中敲任意字符,触发

[Jenkins 2.235.3 - 'tooltip' Stored Cross-Site Scripting](https://www.exploit-db.com/exploits/49232)


[Goby内测版1.8.230 | RDP爆破来了！(文末有福利)](https://nosec.org/home/detail/4620.html)

[如何保护你的密码：应用侧数据库&redis密码加密实践| java](https://www.freebuf.com/articles/database/255263.html) 
https://github.com/ulisesbocchio/jasypt-spring-boot

前端JavaScript渗透测试步步为营
https://www.freebuf.com/vuls/255640.html

SSHD后门分析与团伙归类报告
https://www.freebuf.com/articles/network/255302.html

记一次阿里云主机泄露Access Key到Getshell
https://www.freebuf.com/articles/web/255717.html

内网渗透之主机出网OR不出网隧道搭建
https://www.freebuf.com/articles/web/255801.html

记一次不出网的渗透测试
https://www.freebuf.com/articles/web/255840.html

自己动手搭建信息安全可视化平台（一）现状及服务器资产统计模块 会员
https://www.freebuf.com/articles/es/255882.html

https://www.anquanke.com/post/id/224828
ZenTaoPMS v12.4.2后台GETSHELL分析与利用
禅道11.5  

基于Docker集群的分布式OpenVAS（GVM）
https://www.anquanke.com/post/id/225301

## 1211
细说渗透江湖之披荆斩棘
https://www.freebuf.com/articles/web/254916.html

https://goby.cowtransfer.com/s/097147112a1a4c
https://github.com/gobysec/GobyVuls

https://sourcegraph.com/github.com/git/git/-/compare/v2.17.4...v2.17.5?visible=9
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=git
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-5260

## 1210
前端无秘密：看我如何策反JS为我所用（上） 会员
https://www.freebuf.com/articles/web/256807.html
前端无秘密：看我如何策反JS为我所用（下） 会员
https://www.freebuf.com/articles/web/256846.html

技术研究 | Docker安全实践分享
https://www.freebuf.com/articles/container/255054.html
Windows常见提权总结
https://www.freebuf.com/articles/system/254836.html
使用GIT和CI跟踪Windows更新
https://www.anquanke.com/post/id/224332
[15个漏洞详情，FireEye被盗网络武器库分析](https://www.freebuf.com/vuls/257129.html)

[以红队视角看FireEye武器泄漏事件](https://www.freebuf.com/news/257194.html)

出于谨慎考虑，为了协助防范这些工具被公开的风险，FireEye 已发布识别这些工具的OpenIOC，Yara，Snort和ClamAV检测规则，以尽量减少丢失这些工具的潜在影响。具体规则详见：
由于担忧攻击者利用这些窃取的自定义渗透测试工具对其他目标发起攻击，FireEye现在在其GitHub帐户上共享IOC和应对措施，帮助其他公司检测黑客是否使用了FireEye的任何被盗工具来破坏其网络。
https://github.com/fireeye/red_team_tool_countermeasures

GRAT2：一款功能强大的命令&控制（C2）工具
https://www.freebuf.com/sectool/254051.html

反序列化漏洞汇总
https://www.anquanke.com/post/id/224769
内含POC丨漏洞复现之S2-061（CVE-2020-17530）
https://www.anquanke.com/post/id/225252

## 1209
Gitlab 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202012-442
Gitlab CE/EE 跨站脚本漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202012-439

https://www.anquanke.com/post/id/225142
CVE-2020-1971：OpenSSL 拒绝服务漏洞通告


## 1208
Goby插件分享 | 可对前端打包器所构建的网站进行一键扫描的Packer Fuzzer
https://nosec.org/home/detail/4615.html

ZIP已知明文攻击深入利用
https://www.freebuf.com/articles/network/255145.html
https://pan.baidu.com/s/1Ya9t4KKN656OVyDFry9caw nhtg

私有云安全：容器安全设计实践 会员
https://www.freebuf.com/articles/container/254307.html

Java程序恶意行为监控组件
https://www.freebuf.com/sectool/256099.html

12月7日每日安全热点 - 红队中易被攻击的一些重点系统漏洞整理
https://www.anquanke.com/post/id/224839
https://github.com/r0eXpeR/redteam_vul

安全事件周报（11.30-12.06）
https://www.anquanke.com/post/id/224891

CVE-2016-0638——WebLogic反序列化初探
https://www.anquanke.com/post/id/224343
通过社交媒体中的内容进行网络安全事件检测
https://www.anquanke.com/post/id/223787

## 1207
Windows主机入侵痕迹排查办法
https://www.freebuf.com/articles/system/255107.html
深入浅出低功耗蓝牙（BLE）协议栈（上）
https://www.freebuf.com/articles/wireless/248558.html
深入浅出低功耗蓝牙(BLE)协议栈（中）| 理论篇：BLE协议栈详解
https://www.freebuf.com/articles/wireless/255085.html
年度安全漏洞&年度最佳安全开源项目 | WitAwards 2020评选火热进行中
https://www.freebuf.com/fevents/256731.html
Safety：如何检测已安装依赖组件中的已知安全漏洞
https://www.freebuf.com/vuls/254105.html


私有云安全：容器安全设计实践
https://www.freebuf.com/articles/container/254307.html

利用Outlook创建基于邮件的持久化后门
https://www.anquanke.com/post/id/223632

Chromium 83 - Full CSP Bypass
https://www.exploit-db.com/exploits/49195

Zabbix 5.0.0 - Stored XSS via URL Widget Iframe
https://www.exploit-db.com/exploits/49202

## 1204

HTTP协议攻击方法汇总（上）| http2.0
https://www.anquanke.com/post/id/224321

云迁移安全（五）：云平台安全建设实践
https://www.freebuf.com/articles/es/253776.html

“The Tie Between Ruby and Rust.”
https://github.com/danielpclark/rutie

Modern encryption for Ruby and Rails
数据加密！
https://github.com/ankane/lockbox

https://stackoverflow.com/questions/2232/how-to-call-shell-commands-from-ruby
多租户
https://blog.appsignal.com/2020/12/02/building-a-multi-tenant-ruby-on-rails-app-with-subdomains.html
https://avdi.codes/why-you-shouldnt-inherit-from-rubys-core-classes-and-what-to-do-instead/

https://dev.to/simonholdorf/7-pieces-of-advice-to-be-a-successful-software-engineer-12fj
https://dev.to/claudiobonfati/netflix-intro-animation-pure-css-1m0c

## 1203

新手漏洞挖掘经验分享
https://www.anquanke.com/post/id/223457

CVE-2020-15257：containerd 虚拟环境逃逸漏洞通告
https://www.anquanke.com/post/id/224522

一步步成为你的全网管理员（上）| 攻击的就是禅道
https://www.anquanke.com/post/id/223557

如何利⽤Quake挖掘某授权⼚商边缘站点漏洞
https://www.anquanke.com/post/id/224420

FastJson<=1.2.24RCE双链详细分析
https://www.anquanke.com/post/id/223467

https://www.exploit-db.com/exploits/49178
WordPress Plugin Wp-FileManager 6.8 - RCE

WPScan is a free, for non-commercial use, black box WordPress security scanner written for security professionals and blog maintainers to test the security of their WordPress websites.
能不能做一个自动扫描工具
https://github.com/wpscanteam/wpscan

https://securityaffairs.co/wordpress/95696/data-breach/zynga-data-breach.html

https://securityaffairs.co/wordpress/106782/security/nodejs-express-fileupload-module-flaw.html

WordPress Real-Time Find and Replace插件代码执行漏洞（CVE-2020-13641）
http://www.nsfocus.net/vulndb/46809

WordPress SiteOrigin Page Builder插件代码执行漏洞（CVE-2020-13643）
http://www.nsfocus.net/vulndb/46808

WordPress SiteOrigin Page Builder插件代码执行漏洞（CVE-2020-13642）
http://www.nsfocus.net/vulndb/46807

WordPress Plugin Buddypress 6.2.0 - Persistent Cross-Site Scripting
https://www.exploit-db.com/exploits/49061

WordPress Email Subscribers & Newsletters SQL注入漏洞（CVE-2020-5768）
http://www.nsfocus.net/vulndb/49449

WordPress Real-Time Find and Replace插件代码执行漏洞（CVE-2020-13641）
http://www.nsfocus.net/vulndb/46809

WordPress SiteOrigin Page Builder插件代码执行漏洞（CVE-2020-13643）
http://www.nsfocus.net/vulndb/46808

WordPress SiteOrigin Page Builder插件代码执行漏洞（CVE-2020-13642）
http://www.nsfocus.net/vulndb/46807

WordPress 任意文件上传漏洞 (CVE-2020-24948)
http://www.nsfocus.net/vulndb/48929


## 1202

PyYAML反序列化防御和ByPass
https://www.freebuf.com/vuls/256243.html

## 1201 
TLSv1.2网络安全协议学习
https://www.anquanke.com/post/id/222627

浅析Punycode钓鱼攻击
https://www.anquanke.com/post/id/223459
利用混合方法检测DDoS攻击及分类
https://www.anquanke.com/post/id/222106

NIST，这些年都在研究些啥？
https://www.freebuf.com/articles/others-articles/254872.html
