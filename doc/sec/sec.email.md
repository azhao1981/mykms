# 邮件安全

协议端口
spf
DKIM
DMARC
国内法规

[Email Authenticity 101: DKIM, DMARC, and SPF](https://www.alexblackie.com/articles/email-authenticity-dkim-spf-dmarc/) 
http://www.openspf.org

##  SPF

常见问题描述：

如支付宝会扫描出 任意邮件伪造

[支付宝提示服务器有【中危漏洞】任意邮件伪造检测_勤劳的执着的运维农民工-程序员宝宝_任意邮件伪造检测](https://cxybb.com/article/nxuu01/109830573)

[扫描文本示例：支付宝设置后支付宝官方报X1系统有中危漏洞？](https://x1.php168.com/bbs/show-17754.html)

https://www.bugscan.net/combbs/topics/433/template/

fixed:

添加 txt 记录

BugScan 可能会出现误报 用 `nslookup -type=txt qq.com` 进行检查，有 spf 则可以向官方钉钉号bugfeel 四叶草安全感洞 确认

官方回复是： 域名有mx记录，但是没有spf记录才会有任意邮件伪造

[[教程]域名解析之：SPF 记录设置说明](https://icode.best/i/79026235339716)

[SPF指引](https://icode.best/i/79173835340138)

怎么判定是否有问题：

[**Bugscan** 扫描插件分享之任意邮件伪造检测](https://www.youxia.org/2015/08/17081.html)

[Python SMTP发送邮件](https://www.runoob.com/python/python-email.html)

**GOOD** [邮件伪造之SPF绕过的5种思路](https://www.cnblogs.com/xiaozi/p/12906040.html)

  在线验证： https://www.kitterman.com/spf/validate.html?

  [SPF 记录：原理、语法及配置方法简介](http://www.renfei.org/blog/introduction-to-spf.html)


### bugscan

客服：因为国家政策，bugscan社区现在是暂停运营了

https://github.com/BugScanTeam/BugScan-Doc

[谈谈国内开源的 PoC 框架及 Pocsuite](https://paper.seebug.org/1570/)

然后就是 bugscan，目前是四叶草团队运营，就我下载的 SDK 来看，里面有个基本类文件是common.pyc，是编译过后的文件，所以也就算不上开源，bugscan 有个挺好的点，就是他们的框架追求使用 Python 自带库，这样就不用安装额外的库了，同时也方便跨平台，这种产品的追求，必须赞一下。

这东西也算很久了，但为什么现在主页连个激活流量都没有？

[深入浅出之BugScan插件编写教程](https://www.secpulse.com/archives/5485.html)

[PoC 编写指南(基于Bugscan框架SQL注入PoC编写)](http://cn-sec.com/archives/353411.html)


Swaks - Swiss Army Knife for SMTP
http://www.jetmore.org/john/code/swaks/

Swaks - Swiss Army Knife for SMTP
https://github.com/jetmore/swaks

可以从下面的库里找到一些 BugScan 的插件

  一款全能型的网站漏洞扫描器，借鉴了各位前辈的优秀代码。
  内置1200+插件可对网站进行一次规模的检测，功能包括但不限于web指纹检测、端口指纹检测、网站结构分析、各种流行的漏洞检测、爬虫以及SQL注入检测、XSS检测等等，w9scan会自动生成精美HTML格式结果报告。
  https://github.com/w-digital-scanner/w9scan
  aa72557 on 10 Sep 2019 Git stats 19年已经停更，但里面还是有不少的好东西

  https://github.com/X1r0z/MirrorScan
  云镜 (MirrorScan) 是一款模仿 bugscan 的插件化扫描器.

  https://github.com/moonf1sh/somepoc

https://github.com/m0l1ce/wooyunallbugs
链接:https://pan.baidu.com/s/1htwVF3Q 密码:oskw


### Pocsuite
漏洞扫描框架Pocsuite is an open-sourced remote vulnerability testing framework developed by the Knownsec Security Team.
https://github.com/AlexAUM/Pocsuite