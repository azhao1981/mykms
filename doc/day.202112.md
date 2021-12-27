# 202112
## 20211227

[技术点详解---IPSec VPN基本原理](http://www.h3c.com/cn/d_201005/675214_97665_0.htm)

## 20211221

https://www.cnblogs.com/yyds/p/6901864.html

应急响应：没有痕迹该如何进行攻击溯源
https://www.freebuf.com/articles/web/313394.html

App合规那些事儿（一）最最最常见——违规收集个人信息 原创
https://www.freebuf.com/articles/neopoints/306183.html
App合规那些事儿（二）总被忽略总被通报——违规使用个人信息 原创
https://www.freebuf.com/articles/neopoints/306191.html
TIWAP：一个包含大量漏洞的Web应用渗透测试学习工具
https://www.freebuf.com/articles/web/306459.html

sqlmap 项目剖析（I）
https://www.anquanke.com/post/id/262848

DOM-XSS 自动检测与验证模型
https://www.anquanke.com/post/id/263107

树莓派·安全专刊：搭建蜜罐HFish
https://www.freebuf.com/articles/web/309666.html



JUL
Java日志框架JUL
https://www.jianshu.com/p/727f6364ed5a

Java日志框架之JUL（java util logging）详解
https://blog.csdn.net/qq_40837310/article/details/106608282
https://stackoverflow.com/questions/11359187/why-not-use-java-util-logging

https://blog.csdn.net/c5113620/article/details/103577488
JUL(java.util.logging)java原生官方日志 使用与配置--解决jul不输出显示日志问题

idea maven 输出中文日志问题：
[解决IntelliJ IDEA各种中文乱码问题](https://blog.csdn.net/qq_41814324/article/details/111772889)
settings/maven/runner VM.Options=-Dfile.encoding=GB2312
注意这里在windows里应该是  GB2312 不是UTF-8

## 20211220

蜻蜓爬升过程飞行特征实验研究
http://html.rhhz.net/BJHKHTDXXBZRB/2016-6-1271.htm

## 20211216

Struts2 漏洞分析系列 - S2-009/003与005的补丁绕过
https://www.anquanke.com/post/id/261743

Redis安全问题之常见漏洞利用方法总结
https://www.freebuf.com/articles/database/305343.html
CobaltStrike使用：第一篇（基本使用方法、监听器、重定向器） 原创
https://www.freebuf.com/sectool/306396.html


Chrome-V8-CVE-2020-16040
https://www.anquanke.com/post/id/263161

[CVE-2021-44528] Possible Open Redirect in Host Authorization Middleware

https://groups.google.com/g/rubyonrails-security/c/i0cuCD4grJ8
There is a possible open redirect vulnerability in the Host Authorization
middleware in Action Pack. This vulnerability has been assigned the CVE
identifier CVE-2021-44528.

Versions Affected:  >= 6.0.0.
Not affected:       < 6.0.0
Fixed Versions:     6.1.4.2, 6.0.4.2, 7.0.0.rc2

## 20211213

使用MSSQL加载运行CLR代码
http://blog.nsfocus.net/mssql-clr/

[Apache Shiro 反序列化漏洞详解](https://paper.seebug.org/1782/)

Grafana 8.3.0 - Directory Traversal and Arbitrary File Read
https://www.exploit-db.com/exploits/50581

RUBY
CVE-2021-41816: Buffer Overrun in CGI.escape_html
https://www.ruby-lang.org/en/news/2021/11/24/buffer-overrun-in-cgi-escape_html-cve-2021-41816/
CVE-2021-41819: Cookie Prefix Spoofing in CGI::Cookie.parse
https://www.ruby-lang.org/en/news/2021/11/24/cookie-prefix-spoofing-in-cgi-cookie-parse-cve-2021-41819/

Apache Storm 漏洞分析
https://paper.seebug.org/1780/
Identity Security Authentication Vulnerability
https://paper.seebug.org/1779/

八个技巧，防止远程办公时泄漏公司数据
https://www.freebuf.com/news/308054.html

基于容器ATT&CK矩阵模拟攻防对抗的思考
https://www.anquanke.com/post/id/257799

## 20211209

https://www.alibabacloud.com/blog/clb-alb-兩種負載平衡產品差異介紹_597952

## 20211208

+ kong -> k8s 后就找不到正确的 Ｐｒｏｔｏ和 ｐｏｒｔ了

Kong overwrites X-Forwarded-Proto header when already present #1823
https://github.com/Kong/kong/issues/1823

Kong系列（三）——Kong插件[IP Restriction]使用
https://zhuanlan.zhihu.com/p/68517991
KONG_REAL_IP_HEADER

Kong配置反向代理后获取原始IP
https://www.programminghunter.com/article/9313300473/

apigateway-kong(三)Proxy规则
https://blog.csdn.net/fvjuerh/article/details/96429866

使用 api-gw 让你的应用历史应用更加安全
https://konghq.com/blog/api-gateway-request-transformation/
https://docs.konghq.com/hub/kong-inc/request-transformer/

http://mockbin.org/
Mockbin allows you to generate custom endpoints to test, mock, and track HTTP requests & responses between libraries, sockets and APIs.

企业级API网关Kong系列
https://segmentfault.com/a/1190000019857235
【API网关Kong系列六】- 玩转Consumer
https://segmentfault.com/a/1190000019923741
【API网关Kong系列三】 - 战前预热
https://segmentfault.com/a/1190000019886923

https://www.cnblogs.com/it-deepinmind/p/14036488.html
3. Consumers 消费者
The Consumer object represents a consumer - or a user - of a Service. 
You can either rely on Kong as the primary datastore, or you can map the consumer list with your database to keep consistency between Kong and your existing primary datastore.

最简单的理解和配置consumer的方式是,将其于用户进行一一映射,即一个consumer代表一个用户（或应用）.但是对于KONG而言,这些都无所谓. Consumer的核心原则是您可以为其添加插件,从而自定义他的请求行为. 所以,或许您会有一个手机APP应用,并为他的每个版本都定义一个consumer, 又或者您有一个应用或几个应用,并为这些应用定义统一个consumer,这些都无所谓.
Consumer是使用Service的用户(eg: github账号就是一个Consumer是使用github Open API Service)
Consumer的核心原则是您可以为其添加Plugin插件,从而自定义他的请求行为.(eg: 安装kong Oauth2插件)
Consumer下可以创建多个APP(eg:您的github账号中您可以创建多个Github Apps )

我们新建一个plugin时，可以看到：
The CONSUMER ID that this plugin configuration will target. 
This value can only be used if authentication has been enabled so that the system can identify the user making the request. 
If left blank, the plugin will be applied to all consumers.

配置最佳实践
https://kubernetes.io/zh/docs/concepts/configuration/overview/

Jenkins API
https://www.cnblogs.com/anliven/p/13642675.html

## 20211207

https://github.com/SummitRoute/csp_security_mistakes

使用ModSecurity/App Protect模块构建NGINX WAF | NGINX公开课（2020年8-11月）
https://www.bilibili.com/video/BV15K41137h4?from=search&seid=16261941898413690538&spm_id_from=333.337.0.0

https://0xbharath.github.io/python-network-programming/protocols/dns/index.html

[dnspython](https://www.tutorialspoint.com/python_network_programming/python_dns_look_up.htm)

https://www.bilibili.com/video/BV1y64y1s7gi?from=search&seid=8749424551303216564&spm_id_from=333.337.0.0

## 20211203

https://iapp.org/news/a/chinas-draft-algorithm-regulations-a-first-for-consumer-privacy/
近日，中华人民共和国宣布了关于广泛使用算法推荐技术的规定草案，这是一个新的突破。
据一位专家说，这是全球第一个此类规定。由于中国很快将超过10亿互联网用户——约占全球互联网用户的20%——这些规定将覆盖全球近五分之一的用户。
https://digichina.stanford.edu/work/translation-internet-information-service-algorithmic-recommendation-management-provisions-opinon-seeking-draft/
CHINESE-LANGUAGE ORIGINAL
Source: http://www.cac.gov.cn/2021-08/27/c_1631652502874117.htm
互联网信息服务算法推荐管理规定（征求意见稿）

如果是加密的算法
https://iapp.org/news/a/de-identification-101-a-lawyers-guide-to-masking-encryption-and-everything-in-between/

IAPP A GLOBAL GUIDE TO CURRICULA
privacy_data_protection_in_academia_global_guide_to_curricula

https://iapp.org/style-guide/copy/

## 20211202

[Maven 读取环境变量](https://blog.csdn.net/hongweigg/article/details/54091148)

环境变量属性(所有的环境变量都可以用以env.开头的Maven属性引用)

使用mvn help:system命令可查看所有环境变量;

${env.JAVA_HOME}表示JAVA_HOME环境变量的值;


