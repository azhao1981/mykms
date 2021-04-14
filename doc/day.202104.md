# 202104

## 20210413

代码分析工具joern的基本用法
https://www.anquanke.com/post/id/236184
深度分析CobaltStrike（一）—— Beacon生成流程及Shellcode分析
https://www.anquanke.com/post/id/237127
使用Sysmon和Winlogbeat打造Windows平台的HIDS
https://www.anquanke.com/post/id/236222

## 20210412

JWT jku/x5u Authentication bypass 学习与实践
https://www.anquanke.com/post/id/236830
CVE-2021-24074 TCP/IP协议栈漏洞分析
https://www.anquanke.com/post/id/235165
etcd未授权访问的风险及修复方案详解
https://www.anquanke.com/post/id/236831
浅谈安全运营的二三事
https://www.freebuf.com/articles/266036.html
账号安全那些事儿
https://www.freebuf.com/articles/network/266851.html

https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_8.2-9.2.1_%E6%B3%A8%E5%85%A5GetShell%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_8.2_-_9.2.1%E5%89%8D%E5%8F%B0Getshell%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_11.6_%E4%BB%BB%E6%84%8F%E6%96%87%E4%BB%B6%E8%AE%80%E5%8F%96%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E7%A6%AA%E9%81%93_11.6_%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E
https://www.pwnwiki.org/index.php?title=%E5%A5%87%E5%AE%89%E4%BF%A1NS-NGFW_%E7%B6%B2%E5%BA%B7%E9%98%B2%E7%81%AB%E7%89%86%E5%89%8D%E8%87%BARCE%E6%BC%8F%E6%B4%9E

Erlang Cookie 遠程代碼執行漏洞
https://www.pwnwiki.org/index.php?title=Erlang_Cookie_%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E
https://insinuator.net/2017/10/erlang-distribution-rce-and-a-cookie-bruteforcer/
利用erlang的4369端口，如果知道共享cookie,可以直接执行
如果没有，由于erlang没有检查暴力破解，也可以使用工具暴力破解 密码是：random string [A:Z] with a length of 20 characters

Contextual Content Discovery Tool
https://github.com/assetnote/kiterunner
When you don’t realize you’re bleeding or data leaks without hacking by Ivan Glinkin
https://hakin9.org/data-leaks-without-hacking/

https://castilho101.github.io/midnightsun-2021-ctf/
https://muzec0318.github.io/posts/BufferOverflow.html
Exploiting Windows RPC to bypass CFG mitigation: analysis of CVE-2021-26411 in-the-wild sample
https://iamelli0t.github.io/2021/04/10/RPC-Bypass-CFG.html

## 20210410

https://github.com/assetnote/kiterunner

CVE-2019-10173 Xstream 1.4.10遠程代碼執行漏洞
https://www.pwnwiki.org/index.php?title=CVE-2019-10173_Xstream_1.4.10%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E
## 20210409

17 Cookie 的 HttpOnly 和 Secure 属性作用
https://www.jianshu.com/p/b507f9a19447

Cookie的Secure属性，意味着保持Cookie通信只限于加密传输，指示浏览器仅仅在通过安全/加密连接才能使用该Cookie。如果一个Web服务器从一个非安全连接里设置了一个带有secure属性的Cookie，当Cookie被发送到客户端时，它仍然能通过中间人攻击来拦截。

Cookie的HttpOnly属性，指示浏览器不要在除HTTP（和 HTTPS)请求之外暴露Cookie。一个有HttpOnly属性的Cookie，不能通过非HTTP方式来访问，例如通过调用JavaScript(例如，引用document.cookie），因此，不可能通过跨域脚本（一种非常普通的攻击技术）来偷走这种Cookie。尤其是Facebook 和 Google 正在广泛地使用HttpOnly属性。

一个账户接管几乎所有阿里巴巴网站(CSRF漏洞+WAF绕过)
https://www.cnblogs.com/17bdw/p/10709393.html
Mssql手工注入执行命令小记
https://www.anquanke.com/post/id/237031
Xstream反序列化远程代码执行漏洞深入分析
https://www.anquanke.com/post/id/237207

CloudBees Jenkins数据验证漏洞（CVE-2021-21639）
http://www.nsfocus.net/vulndb/53590
CloudBees Jenkins视图名称验证绕过漏洞（CVE-2021-21640）
http://www.nsfocus.net/vulndb/53591
CloudBees Jenkins Promoted Builds Plugin跨站请求伪造漏洞（CVE-2021-21641）
http://www.nsfocus.net/vulndb/53592


VSCode 下的 frida 插件
https://paper.seebug.org/1553/

一个出人意料的虚拟机漏洞
https://paper.seebug.org/1550/

CVE-2020-12352&CVE-2020-12351 Linux Kernel 5.4 BleedingTooth遠程代碼執行漏洞
https://www.pwnwiki.org/index.php?title=CVE-2020-12352%26CVE-2020-12351_Linux_Kernel_5.4_BleedingTooth%E9%81%A0%E7%A8%8B%E4%BB%A3%E7%A2%BC%E5%9F%B7%E8%A1%8C%E6%BC%8F%E6%B4%9E

Linux Kernel 5.4 - 'BleedingTooth' Bluetooth Zero-Click Remote Code Execution
https://www.exploit-db.com/exploits/49754?utm_source=dlvr.it&utm_medium=twitter

https://bendtheory.medium.com/journeys-in-quoteless-and-multi-reflection-xss-b1d67bb0c5dd

## 20210408
基于Frida的Windows厚客户端SSL流量解析研究
https://www.freebuf.com/articles/web/265860.html

个人隐私保护
https://www.freebuf.com/column/2293

防守方攻略：四大主流WebShell管理工具分析
https://www.freebuf.com/sectool/268477.html
IDA 辅助工具Karta——二进制文件中搜索开源代码
https://www.anquanke.com/post/id/235632
源海拾贝 | hooker自动化生成frida脚本
https://www.anquanke.com/post/id/236820

https://infosecwriteups.com/powershell-reverse-shell-with-social-engineering-toolkit-90506e891269
https://google.github.io/security-research/pocs/linux/bleedingtooth/writeup.html
BleedingTooth: Linux Bluetooth Zero-Click Remote Code Execution

## 20210407

https://reconshell.com/threatmapper-identify-vulnerabilities-in-running-containers/

今天有很多
https://github.com/advisories
Cross-site scripting in actionpack
https://github.com/advisories/GHSA-35mm-cc6r-8fjp
jetty三个
https://github.com/advisories/GHSA-j6qj-j888-vvgq
https://github.com/advisories/GHSA-26vr-8j45-3r4w
https://github.com/advisories/GHSA-v7ff-8wcx-gmc5

CVE-2021-25329
Potential remote code execution in Apache Tomcat
https://github.com/advisories/GHSA-jgwr-3qm3-26f3

HIDS-Agent开发之检测反弹shell
https://www.anquanke.com/post/id/235717

防守方攻略：四大主流WebShell管理工具分析
https://www.freebuf.com/sectool/268477.html

Xstream 反序列化远程代码执行漏洞深入分析
https://paper.seebug.org/1543/

https://www.secjuice.com/web-application-firewall-waf-evasion/
https://medium.com/secjuice/waf-evasion-techniques-718026d693d8

## 20210406
Linux的Cgroups在HIDS-Agent资源限制上的应用
https://www.freebuf.com/articles/system/265733.html
https://www.freebuf.com/sectool/266896.html
安全研究 | 使用Procrustes从DNS流量中提取数据

## 20210405

Redis堆缓冲区溢出漏洞（CVE-2021-3470）
http://www.nsfocus.net/vulndb/53544

Windows渗透基础大全
https://www.anquanke.com/post/id/236522

WEB密码学攻击方式从0到1
https://www.anquanke.com/post/id/235190

## 20210404

https://github.com/dwisiswant0/awesome-oneliner-bugbounty
https://infosecwriteups.com/sql-injection-for-noobs-3677eac68d38

## 20210402
https://www.exploit-db.com/exploits/49736
phpPgAdmin 7.13.0 - COPY FROM PROGRAM Command Execution (Authenticated)
【安全通报】Gitlab 多处高危漏洞
https://nosec.org/home/detail/4719.html

（CSA 共识评估调查问卷）CSA Consensus Assessments Initiative Questionnaire
https://blog.csdn.net/wumeng2012/article/details/84335517

https://www.nist.gov/publications/guide-security-full-virtualization-technologies
Guide to Security for Full Virtualization Technologies
https://tsapps.nist.gov/publication/get_pdf.cfm?pub_id=907776
NIST 网络安全相关标准 美国 （简单整理）
https://blog.csdn.net/m0_46232048/article/details/107924430
美国国家标准与技术研究院
http://www.ecas.cas.cn/xxkw/kbcd/201115_83700/ml/xxhjsyjcss/201111/t20111117_3397740.html
NIST 網路安全相關標準 美國 （簡單整理）
https://tw511.com/a/01/7818.html
https://github.com/decalage2/awesome-security-hardening
## 20210401

A FREE comprehensive reverse engineering course covering x86, x64, 32-bit ARM & 64-bit ARM architectures.
https://github.com/mytechnotalent/Reverse-Engineering

https://www.bleepingcomputer.com/news/security/fake-jquery-files-infect-wordpress-sites-with-malware/amp/?__twitter_impression=true

learn365的脑图笔记： This repo is about @harshbothra_ 365 days of learning Tweet & Mindmap collection
https://github.com/harsh-bothra/learn365

备忘录app Memo is an Anki mobile app written in Flutter
https://github.com/olmps/memo

nerdctl: 适用于Containerd的、与docker兼容的cli - https://medium.com/nttlabs/nerdctl-359311b32d0e
Docker-compatible CLI for containerd
https://github.com/containerd/nerdctl

Go中集合类型的高阶函数 | Gopher Daily (2021.03.30) ʕ◔ϖ◔ʔ
https://zhuanlan.zhihu.com/p/360967517
Go语言爱好者周刊：第 73 期
https://jishuin.proginn.com/p/763bfbd34492


https://github.com/stashapp/stash
https://github.com/elastic/ansible-elasticsearch
ent是一个简单而又功能强大的Go语言实体框架，ent易于构建和维护应用程序与大数据模型。
图就是代码 - 将任何数据库表建模为Go对象。
轻松地遍历任何图形 - 可以轻松地运行查询、聚合和遍历任何图形结构。
静态类型和显式API - 使用代码生成静态类型和显式API，查询数据更加便捷。
多存储驱动程序 - 支持MySQL, PostgreSQL, SQLite 和 Gremlin。
可扩展 - 简单地扩展和使用Go模板自定义。

看能不能自动添加安全的要求
https://github.com/elastic/ansible-elasticsearch

https://github.com/pyinstaller/pyinstaller
* On Debian/Ubuntu, you would need to install Python development packages
  * apt-get install python3-dev
  * apt-get install python-dev
* If you're building Python by yourself, please rebuild your Python with `--enable-shared` (or, `--enable-framework` on Darwin)
光helloworld，发现安装时没有安装东西，需要rebuild
https://github.com/gto76/python-cheatsheet

了解SSRF,这一篇就足够了
https://xz.aliyun.com/t/2115
A Pentester’s Guide to Server Side Request Forgery (SSRF)
https://cobalt.io/blog/a-pentesters-guide-to-server-side-request-forgery-ssrf
4.4. SSRF
https://websec.readthedocs.io/zh/latest/vuln/ssrf.html
Web安全学习笔记
https://websec.readthedocs.io/zh/latest/index.html
SSRF安全指北
https://security.tencent.com/index.php/blog/msg/179
一个vmware的例子： CVE-2021-21975
https://attackerkb.com/topics/51Vx3lNI7B/cve-2021-21975?referrer=notificationEmail#rapid7-analysis


30 Days of React challenge is a step by step guide to learn React in 30 days. It requires HTML, CSS, and JavaScript knowledge. You should be comfortable with JavaScript before you start to React. If you are not comfortable with JavaScript check out 30DaysOfJavaScript. This is a continuation of 30 Days Of JS. This challenge may take up to 100 day…
https://github.com/Asabeneh/30-Days-Of-React
该系列包括数组，链表，树，图，递归，DP，有序表等相关数据结构与算法的讲解及代码实现。
https://github.com/Dairongpeng/algorithm-note

https://github.com/randallkanna/awesome-job-list

https://threejs.org/

this is downloadings of all educative.io free student subscription courses as pdf from GitHub student pack
https://github.com/merry75/educative.io_courses

这可能是史上功能最全的Java权限认证框架！目前已集成——登录验证、权限验证、Session会话、踢人下线、分布式会话、单点登录、OAuth2.0、记住我模式、模拟他人账号、临时身份切换、集成Redis、多账号认证体系、前后台分离模式、注解式鉴权、路由拦截式鉴权、花式token生成、自动续签、同端互斥登录、会话治理、密码加密、jwt集成、Spring集成...
https://github.com/dromara/sa-token

这是一个 高质量 的 TypeScript 类型定义的仓库。
https://github.com/DefinitelyTyped/DefinitelyTyped
https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/README.cn.md


一个由Spring安全团队领导的社区驱动的项目，专注于向Spring社区交付授权服务器支持
A community-driven project led by the Spring Security team and is focused on delivering Authorization Server support to the Spring community
https://github.com/spring-projects-experimental/spring-authorization-server

不错的工具，可以更简洁的查看日志等
Program to convert lines of text into a tree structure.
https://github.com/birchb1024/frangipanni

Osintgram is a OSINT tool on Instagram. It offers an interactive shell to perform analysis on Instagram account of any users by its nickname
https://github.com/Datalux/Osintgram

SQL注入漏洞详解
https://www.anquanke.com/post/id/235970
Fastjson1.2.24反序列化学习
https://www.anquanke.com/post/id/235479
Kubestriker：一款针对Kubernetes的快速安全审计工具
https://www.anquanke.com/post/id/235479
攻防演练前的安全隐患排查工作指南
https://www.freebuf.com/articles/268203.html