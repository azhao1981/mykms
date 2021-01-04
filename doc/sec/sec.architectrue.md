# 安全架构

这里回答，为了安全，我们应该做什么

[中小企业应该如何建立自己的防御体系](https://www.freebuf.com/articles/neopoints/251516.html)

[Gartner2020年十大安全项目详解](https://www.freebuf.com/articles/network/252759.html)
NIST SP800
SP800是美国NIST（National Institute of Standards and Technology）发布的一系列关于信息安全的指南（SP是Special Publications的缩写）。
https://csrc.nist.gov/publications/sp
securiting your remote workfore
Risk-based Vulnerability management
platform approach to Detection and response
Cloud security posture management
simplify Cloud Access Control

DMARC
passwordless Authentication
Data classification and protection
workfore competencies assessments
Automationg security Risk assessments

## WAF

ModSecurity：一款优秀的开源WAF
https://www.freebuf.com/sectool/211354.html

第一个全方位开源的Web应用防护系统（WAF），更全面的防护功能，更多样的防护策略
https://gitee.com/miracleqi/OpenWAF

[众安开源waf引擎](https://github.com/ZhongAnTech/maiev-waf)
基于OpenResty®实现的高性能应用防火墙（WAF），需搭配众安开源waf控制台项目一起使用。

企业安全建设(二)：构建开源企业WAF
https://www.secrss.com/articles/8270

可否认的是 OpenResty 确实是优秀的Web服务端平台，可实现各种你能想到的功能(包括WAF)。
但开源的世界从来不缺少优秀的项目，优秀的开源WAF包括但不限于:
   [ModSecurity](http://www.modsecurity.org/)
   [NAXSI](https://github.com/nbs-system/naxsi)
   [WebKnight](https://www.aqtronix.com/?PageID=99)
   [Shadow Daemon](https://shadowd.zecure.org/overview/introduction/)
   [JXWAF(基于OpenResty) ](https://github.com/jx-sec/jxwaf)
[mRuby 使用 ngx_mruby 打造简易 WAF](https://ruby-china.org/topics/29834)
好像不如 openresty
[OpenResty 环境问题漏洞](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202004-615)
apigw openresty 安全漏洞 http://confluence.flyudesk.com/pages/viewpage.action?pageId=65571687

云WAF接收到请求，也是通过Internet的方式请求真实的Web服务器，国内有：
[百度云加速](https://su.baidu.com/)，
[360网站卫士](https://wangzhan.qianxin.com/)
等优秀的**免费云WAF**可以使用。

攻击者可以通过查询**DNS历史解析**，很快可以找到真实的主机

Github标星5.2k+！开源、强大的WAF(web防火墙)VeryNginx！
https://www.shangyexinzhi.com/article/554151.html
传送门：https://github.com/alexazhou/VeryNginx
VeryNginx ＝ Very powerful and friendly nginx

VeryNginx基于lua_nginx_module(openrestry)。
  它实现了高级防火墙（waf），访问统计信息和其他一些功能。
  它增强了Nginx的功能，并提供了友好的Web界面。
在 web 界面里面修改配置后，保存后即刻生效，并不需要重启 Nginx 或者 reload 。

BrowserWAF：免费、开源的前端WAF 
https://www.sohu.com/a/403107976_354899
BrowserWAF，一款由ShareWAF推出的免费、开源的前端WAF，也可称为浏览器WAF。
什么是前端WAF？
前端WAF是运行于浏览器端的WAF（web应用防火墙）、是种轻量化的WAF。
适应中小网站使用，用于保护网站（含H5功能页、游戏、小程序）、防多种常见网络攻击。

基于openresty的Web安全防护系统

https://www.w3cschool.cn/openwaf/

https://github.com/titansec/OpenWAF

https://github.com/SpiderLabs/ModSecurity
JXWAF(锦衣盾)是一款开源web应用防火墙
https://github.com/jx-sec/jxwaf
Jxwaf安装部署使用方案
https://www.freebuf.com/articles/es/242689.html
jxwaf性能测试报告
https://www.freebuf.com/articles/es/246648.html
云WAF如何防止敏感信息泄漏
https://www.freebuf.com/articles/web/239300.html
绕过WAF运行命令执行漏洞的方法大全
https://www.anquanke.com/post/id/208398
Jxwaf安装部署使用方案
https://www.freebuf.com/articles/es/242689.html
WAF Bypass之wesbhell上传jsp与tomcat
https://www.anquanke.com/post/id/210630
[基于WAF日志的扫描器检测实践](https://www.freebuf.com/articles/network/247466.html)
ModSecurity OWASP核心规则集的两种配置模式
https://www.freebuf.com/articles/web/237521.html
https://github.com/coreruleset/coreruleset
https://github.com/SpiderLabs/ModSecurity
https://www.modsecurity.org/
ModSecurity is an open source, cross-platform web application firewall (WAF) module

异常评分模式（默认）和独自控制模式
异常评分模式/协同检测模式
当检测到威胁时，不会阻断请求,向下匹配，每个匹配成功的规则都会增加”异常分数”，
在对请求数据检测结束时，以及对返回数据检测结束时，都会对异常分数的总和进行判断，如果大于设置的阈值，才会进行阻断动作，并向客户端返回403代码，
审计日志中也会记录此次访问中所有匹配成功的规则信息。
由于每次请求都会匹配所有规则，因此在高并发情况下，效率相对较低，服务器资源占用较高，但误报率相对较低；

独自控制模式
V2版本规则集的默认模式，它的工作方式是，只要有一条规则匹配成功，便拦截此次访问，审计日志中也只会记录第一次检测到威胁的规则信息。
检测到一次威胁就直接阻断请求，因此在高并发情况下，效率相对较高，服务器资源占用较小，但误报率相对较高。除此之外该模式还有一个优点，即可以通过全局配置，设置当访问被拦截后，跳转到自定义的提示页面。

如何简单的打造过WAF的蚁剑
https://mp.weixin.qq.com/s/jigMkw2v1gEN7MLHpKC7RA

OpenRASP学习笔记
https://www.anquanke.com/post/id/216886
https://github.com/0xInfection/Awesome-WAF
[甲方自研分布式WAF落地全程实录](https://www.freebuf.com/articles/es/245977.html)
https://openresty.org/cn/
Web应用程序防火墙(ngx_lua_waf或X-WAF)产品
这个好像还是一个nginx的CVE连动的
https://hackerone.com/reports/513236
[waf绕过拍了拍你](https://www.anquanke.com/post/id/212272)
https://www.jxwaf.com/
Siem落地方案之JXWAF+ELK
https://www.freebuf.com/articles/es/250983.html
WAF代码剖析之初识openresty
https://www.freebuf.com/articles/web/251429.html
蚁剑改造过WAF系列（一）
https://xz.aliyun.com/t/7735
WAF是如何被绕过的？
https://www.anquanke.com/post/id/203880
记录过某常见WAF最新版
https://www.freebuf.com/articles/web/231905.html
WAF机制及绕过方法总结：注入篇
https://www.freebuf.com/articles/web/229982.html
[mRuby 使用 ngx_mruby 打造简易 WAF](https://ruby-china.org/topics/29834)
突破正则匹配：探寻SQL注入绕过WAF的本源之道
https://www.freebuf.com/vuls/229300.html
3.FreeBuf企业安全系列之《2020国内WAF产品研究报告》正式发布
通常来说，WAF承担了抵御常见Web攻击的作用，是大多数互联网公司Web防御体系中最重要的一环，像一名尽职的保安，作为第一道防线守护业务的安全。2020年，市面上提供WAF方案的厂商依然很多，WAF仍是大多数企业用户部署的必选项。
https://www.freebuf.com/articles/paper/226524.html
用ModSecurity启动WAF的一次小试 | WAF
https://www.freebuf.com/articles/web/227217.html

ApplicationInspector：一款功能强大的软件源代码分析与审计工具 | SDL
https://www.freebuf.com/sectool/226392.html
开源WAF测试评估方法 | 但好像没有讲用什么开源 waf
https://www.freebuf.com/articles/web/224473.html
Web防护自给自足：给Express写一个WAF中间件！
https://www.freebuf.com/articles/web/223735.html
绕过WAF运行命令执行漏洞的方法大全
https://www.anquanke.com/post/id/208398
WAF是如何被绕过的？
https://www.anquanke.com/post/id/203880
记录过某常见WAF最新版
https://www.freebuf.com/articles/web/231905.html
WAF机制及绕过方法总结：注入篇
https://www.freebuf.com/articles/web/229982.html
突破正则匹配：探寻SQL注入绕过WAF的本源之道
https://www.freebuf.com/vuls/229300.html
3.FreeBuf企业安全系列之《2020国内WAF产品研究报告》正式发布
通常来说，WAF承担了抵御常见Web攻击的作用，是大多数互联网公司Web防御体系中最重要的一环，像一名尽职的保安，作为第一道防线守护业务的安全。2020年，市面上提供WAF方案的厂商依然很多，WAF仍是大多数企业用户部署的必选项。
https://www.freebuf.com/articles/paper/226524.html

用ModSecurity启动WAF的一次小试 | WAF
https://www.freebuf.com/articles/web/227217.html

ApplicationInspector：一款功能强大的软件源代码分析与审计工具 | SDL
https://www.freebuf.com/sectool/226392.html
开源WAF测试评估方法 | 但好像没有讲用什么开源 waf
https://www.freebuf.com/articles/web/224473.html
Web防护自给自足：给Express写一个WAF中间件！
https://www.freebuf.com/articles/web/223735.html
长亭科技WAF
https://www.chaitin.cn/zh/
重要:ModSecurity：一款优秀的开源WAF

https://www.freebuf.com/sectool/211354.html

https://github.com/SpiderLabs/ModSecurity
[burp插件大全 漏洞扫描 waf绕过 sql XSS 命令注入 fuzzer](https://www.ddosi.com/b226/)
sec\cor.sec.企业安全指南书.md
7.4 WAF
cname 部署
module 部署 ModSecurity
网络层部署
混合型 waf 架构

WAF 策略
    通用型主流漏洞检测与防护
        OWASP https://www.owasp.org/index.php/Main_Page
        http://www.owasp.org.cn/owasp-project
        各流浪 web 漏洞扫描器
        漏洞测试演示平台 bWapp http://www.myh0st.cn/index.php/archives/420/
    最近出现高危 1day\0day
        "虚拟补丁" 为真正补丁记得时间
    业务风险监测
WAF 性能优化

