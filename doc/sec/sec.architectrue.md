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

开源waf

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


