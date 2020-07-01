# 202007

## 20200701
Goby内测版1.7.186发布 | 开放插件市场，共享社区力量
https://nosec.org/home/detail/4491.html

OpenSSH 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-1822
官方暂时没有处理
https://www.openssh.com/security.html

浅谈网络安全领域售前从业人员技术能力图谱（上）
https://www.freebuf.com/articles/neopoints/240962.html

战略论坛 | 网络安全人才培养体系构建分析研究
https://mp.weixin.qq.com/s/k5BbuLPZiHkKkTJKCYCvaQ

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


https://gitee.com/OSCYuanChuangHui/ai_learning