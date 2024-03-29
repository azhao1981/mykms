# 开源WAF

[TOC]

## 有哪些

https://github.com/topics/waf

- [ModSecurity](http://www.modsecurity.org/)
  [第一个全方位开源的Web应用防护系统（WAF），更全面的防护功能，更多样的防护策略](https://gitee.com/miracleqi/OpenWAF)
- [众安开源waf引擎](https://github.com/ZhongAnTech/maiev-waf)
    基于OpenResty®实现的高性能应用防火墙（WAF），需搭配众安开源waf控制台项目一起使用。
- [NAXSI](https://github.com/nbs-system/naxsi)
- [WebKnight](https://www.aqtronix.com/?PageID=99)
- [Shadow Daemon](https://shadowd.zecure.org/overview/introduction/)
- [JXWAF(基于OpenResty) ](https://github.com/jx-sec/jxwaf)
- [BrowserWAF：免费、开源的前端WAF ](https://www.sohu.com/a/403107976_354899)

TIPS：

github上最高的是 modsecurity 和 naxsi

主要产品和测试方法
https://github.com/0xInfection/Awesome-WAF

### openresty

OpenResty® 是一个基于 [Nginx](https://openresty.org/cn/nginx.html) 与 Lua 的高性能 Web 平台，其内部集成了大量精良的 Lua 库、第三方模块以及大多数的依赖项。用于方便地搭建能够处理超高并发、扩展性极高的动态 Web 应用、Web 服务和动态网关。

https://github.com/openresty/openresty

https://github.com/openresty/docker-openresty
https://hub.docker.com/r/openresty/openresty/dockerfile

docker pull openresty/openresty

https://github.com/moonbingbing/openresty-best-practices
[OpenResty 环境问题漏洞](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202004-615)
[apigw openresty 安全漏洞 ](http://confluence.flyudesk.com/pages/viewpage.action?pageId=65571687)

[Web应用程序防火墙(ngx_lua_waf或X-WAF)产品](https://openresty.org/cn/)

这两个都是中文的

https://github.com/loveshell/ngx_lua_waf 	3.4k S, 1.4k F

https://github.com/xsec-lab/x-waf

[WAF代码剖析之初识openresty](https://www.freebuf.com/articles/web/251429.html)
[这个好像还是一个nginx的CVE连动的](https://hackerone.com/reports/513236)

如何编写正确且⾼效的 OpenResty应⽤
http://bos.itdks.com/1a86e813234242fd9bce559e1aa3c9fb.pdf

nginx null byte 
https://github.com/Kong/kong/issues/1816
https://hackerone.com/reports/513236
https://portswigger.net/daily-swig/email-security-mail-ru-patches-critical-memory-disclosure-flaw
https://www.delltechnologies.com/en-us/collaterals/unauth/white-papers/ecs-with-ngixn-deployment-reference-guide.pdf

High-performance WAF built on the OpenResty stack
https://github.com/p0pr0ck5/lua-resty-waf

#### OWASP [Modsecurity](https://www.modsecurity.org/)

[modsecurity](doc\sec\sec.arch.oswaf.modsecurity.md)

###　kong waf

https://docs.konghq.com/hub/wallarm/wallarm/
Kong APIGW — Plugins — Security
https://chowdera.com/2021/02/20210220061643219I.html
将loveshell的ngx_lua_waf插件迁移为kong-waf插件, 适配kong
https://github.com/exexute/kong-waf
kong安装lua waf之最佳实践
https://exexute.github.io/2018/12/25/kong%E5%AE%89%E8%A3%85lua-waf%E4%B9%8B%E6%9C%80%E4%BD%B3%E5%AE%9E%E8%B7%B5/
Kong plugin for lua-resty-waf
https://github.com/zhenguang/kong-plugin-lua-resty-waf

https://www.freebuf.com/sectool/211354.html)

### VeryNginx！

[Github标星5.2k+！开源、强大的WAF(web防火墙)VeryNginx！](https://www.shangyexinzhi.com/article/554151.html)

星是很多，可是19年就不再更新了

https://hub.docker.com/r/camil/verynginx
sudo docker pull camil/verynginx
A very powerful and friendly nginx based on lua-nginx-module( openresty) WAF, cpanel, and dashboard 

CentOS-Docker搭建VeryNginx
https://my.oschina.net/zyrs/blog/3158033

传送门：https://github.com/alexazhou/VeryNginx
VeryNginx ＝ Very powerful and friendly nginx
VeryNginx基于lua_nginx_module(openrestry)。
  它实现了高级防火墙（waf），访问统计信息和其他一些功能。
  它增强了Nginx的功能，并提供了友好的Web界面。
在 web 界面里面修改配置后，保存后即刻生效，并不需要重启 Nginx 或者 reload 。

### naxsi

NAXSI is an open-source, high performance, low rules maintenance WAF for NGINX
https://github.com/nbs-system/naxsi

docker pull dmgnx/nginx-naxsi
https://hub.docker.com/r/dmgnx/nginx-naxsi

### [openRasp](https://rasp.baidu.com/)

### openwaf

https://www.w3cschool.cn/openwaf/
https://github.com/titansec/OpenWAF

https://hub.docker.com/r/titansec/openwaf
sudo docker pull titansec/openwaf

### [JXWAF](https://www.jxwaf.com/)

https://hub.docker.com/r/jxwaf/jxwaf-server
sudo docker pull jxwaf/jxwaf-server:v3.3

[JXWAF(锦衣盾)是一款开源web应用防火墙](https://github.com/jx-sec/jxwaf)

[Jxwaf安装部署使用方案](https://www.freebuf.com/articles/es/242689.html)

[jxwaf性能测试报告](https://www.freebuf.com/articles/es/246648.html)

[Jxwaf安装部署使用方案](https://www.freebuf.com/articles/es/242689.html)

[Siem落地方案之JXWAF+ELK](https://www.freebuf.com/articles/es/250983.html)


[如何简单的打造过WAF的蚁剑](https://mp.weixin.qq.com/s/jigMkw2v1gEN7MLHpKC7RA)
[蚁剑改造过WAF系列（一）](https://xz.aliyun.com/t/7735)


### BrowserWAF

BrowserWAF，一款由ShareWAF推出的免费、开源的前端WAF，也可称为浏览器WAF。
什么是前端WAF？
前端WAF是运行于浏览器端的WAF（web应用防火墙）、是种轻量化的WAF。
适应中小网站使用，用于保护网站（含H5功能页、游戏、小程序）、防多种常见网络攻击。

## 其它引用

[mRuby 使用 ngx_mruby 打造简易 WAF](https://ruby-china.org/topics/29834) | 玩具，无产品

[企业安全建设(二)：构建开源企业WAF](https://www.secrss.com/articles/8270)

云WAF接收到请求，也是通过Internet的方式请求真实的Web服务器，国内有：
[百度云加速](https://su.baidu.com/)，
[360网站卫士](https://wangzhan.qianxin.com/)
等优秀的**免费云WAF**可以使用。

攻击者可以通过查询**DNS历史解析**，很快可以找到真实的主机

[云WAF如何防止敏感信息泄漏](https://www.freebuf.com/articles/web/239300.html)

[绕过WAF运行命令执行漏洞的方法大全](https://www.anquanke.com/post/id/208398)

[WAF Bypass之wesbhell上传jsp与tomcat](https://www.anquanke.com/post/id/210630)

[基于WAF日志的扫描器检测实践](https://www.freebuf.com/articles/network/247466.html)

异常评分模式（默认）和独自控制模式
异常评分模式/协同检测模式
当检测到威胁时，不会阻断请求,向下匹配，每个匹配成功的规则都会增加”异常分数”，
在对请求数据检测结束时，以及对返回数据检测结束时，都会对异常分数的总和进行判断，如果大于设置的阈值，才会进行阻断动作，并向客户端返回403代码，
审计日志中也会记录此次访问中所有匹配成功的规则信息。
由于每次请求都会匹配所有规则，因此在高并发情况下，效率相对较低，服务器资源占用较高，但误报率相对较低；

独自控制模式
V2版本规则集的默认模式，它的工作方式是，只要有一条规则匹配成功，便拦截此次访问，审计日志中也只会记录第一次检测到威胁的规则信息。
检测到一次威胁就直接阻断请求，因此在高并发情况下，效率相对较高，服务器资源占用较小，但误报率相对较高。除此之外该模式还有一个优点，即可以通过全局配置，设置当访问被拦截后，跳转到自定义的提示页面。

[甲方自研分布式WAF落地全程实录](https://www.freebuf.com/articles/es/245977.html)
[waf绕过拍了拍你](https://www.anquanke.com/post/id/212272)
[WAF是如何被绕过的？](https://www.anquanke.com/post/id/203880)
[记录过某常见WAF最新版](https://www.freebuf.com/articles/web/231905.html)
[WAF机制及绕过方法总结：注入篇](https://www.freebuf.com/articles/web/229982.html)
[突破正则匹配：探寻SQL注入绕过WAF的本源之道](https://www.freebuf.com/vuls/229300.html)



[3.FreeBuf企业安全系列之《2020国内WAF产品研究报告》正式发布](https://www.freebuf.com/articles/paper/226524.html)
通常来说，WAF承担了抵御常见Web攻击的作用，是大多数互联网公司Web防御体系中最重要的一环，像一名尽职的保安，作为第一道防线守护业务的安全。2020年，市面上提供WAF方案的厂商依然很多，WAF仍是大多数企业用户部署的必选项。

[开源WAF测试评估方法 | 但好像没有讲用什么开源 waf](https://www.freebuf.com/articles/web/224473.html)

[Web防护自给自足：给Express写一个WAF中间件！](https://www.freebuf.com/articles/web/223735.html)

[绕过WAF运行命令执行漏洞的方法大全](https://www.anquanke.com/post/id/208398)

[记录过某常见WAF最新版](https://www.freebuf.com/articles/web/231905.html)

[WAF机制及绕过方法总结：注入篇](https://www.freebuf.com/articles/web/229982.html)

[突破正则匹配：探寻SQL注入绕过WAF的本源之道](https://www.freebuf.com/vuls/229300.html)

[burp插件大全 漏洞扫描 waf绕过 sql XSS 命令注入 fuzzer](https://www.ddosi.com/b226/)

sec\cor.sec.企业安全指南书.md
7.4 WAF
cname 部署
module 部署 ModSecurity
网络层部署
混合型 waf 架构

WAF 策略
    通用型主流漏洞检测与防护
        [WAF测试基准项目](http://www.owasp.org.cn/owasp-project/waf_pro)
          http://www.owasp.org.cn/owasp-project
        各流浪 web 漏洞扫描器
    最近出现高危 1day\0day
        "虚拟补丁" 为真正补丁记得时间
    业务风险监测
WAF 性能优化