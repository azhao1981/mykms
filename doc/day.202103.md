# 202103

## 20210323

从零开始学习fuzzing之拥有快照/代码覆盖率指引的Fuzzer
https://www.anquanke.com/post/id/234437

内网渗透实战技巧
https://www.anquanke.com/post/id/235101

跨域数据共享场景下的数据泄露防护分析
https://www.anquanke.com/post/id/234335

CobaltStrike使用详解
https://www.anquanke.com/post/id/235251

cisa的工具都比较成熟，很多是MIT
Malcolm is a powerful, easily deployable network traffic analysis tool suite for full packet capture artifacts (PCAP files) and Zeek logs.
https://github.com/cisagov/Malcolm
Cybersecurity Evaluation Tool
https://github.com/cisagov/cset
A set of guidelines and best practices for an awesome engineering team
https://github.com/cisagov/development-guide

自主搭建的三层网络域渗透靶场打靶记录
https://www.freebuf.com/articles/network/264560.html
聊聊网络安全等级保护“能力验证”：配置核查（Linux系统）
https://www.freebuf.com/articles/neopoints/264325.html

Minio MinIO 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1206

Nessus Agent 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1194

MariaDB 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1191

Grafana 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1174

## 20210322

https://www.youtube.com/channel/UCKKmeW6hUa4cc935Jd8eijg/videos
https://www.youtube.com/watch?v=L6xX4Kcn0sk
Atlassian JIRA Template injection vulnerability (CVE-2019-11581) with Pocsuite3

https://jike.info/topic/4314/%E9%98%BF%E9%87%8C%E4%BA%91%E7%BD%91%E7%9B%98%E6%87%82%E7%9A%84%E9%83%BD%E6%87%82

Hutool 让Java使用者感受甜美的工具
官网 https://hutool.cn/
轻量但是很强大
内置非常多高效的工具类
稳定安全

https://www.harmonyos.com/cn/home
鸿蒙OS 技术架构
https://www.w3cschool.cn/harmonyos/harmonyos-2e8b3bwn.html
鸿蒙OS架构及关键技术整理
https://blog.csdn.net/qq_31765191/article/details/108948348
鸿蒙OS — 基于微内核的全场景分布式OS
https://blog.csdn.net/jiangguangchao/article/details/99056323
内核问题
当前支持： linux/鸿蒙内核/liteOS 同时支持，未来只留 鸿蒙内核 

The best and easiest way to decode and repack AWVS scripts. AWVS 最好、最简单、最新的解码/再打包方法，仅15行代码！
https://github.com/gatlindada/awvs-decode

[Grafana Enterprise 安全漏洞](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1169)

[【安全通报】Apache Solr stream.url SSRF与任意文件读取漏洞](https://nosec.org/home/detail/4700.html)

[内网渗透实战技巧](https://www.anquanke.com/post/id/235101)

[sudo提权（CVE-2021–3156）：从堆溢出到命令执行的最后亿步](https://www.anquanke.com/post/id/234535)

[Gatekeeper：首个开源的DDoS防护系统](https://www.freebuf.com/sectool/265642.html)

[等保测评2.0：Windows身份鉴别结果记录描述（下） 会员](https://www.freebuf.com/articles/compliance/263955.html)

[红蓝对抗之邮件伪造](https://www.freebuf.com/articles/network/264663.html)

## 20210319

https://www.hackthebox.eu/
https://tryhackme.com/



Confluence 未授权 RCE 分析（CVE-2019-3396）
https://paper.seebug.org/893/
exploit工具
https://github.com/jas502n/CVE-2019-3396

取证
https://github.com/SekoiaLab/Fastir_Collector_Linux


es替代方案
https://github.com/go-ego/riot
https://github.com/go-ego/riot/blob/master/README_zh.md 支持中文
使用wukong全文搜索引擎
https://tonybai.com/2016/12/06/an-intro-to-wukong-fulltext-search-engine/

支持sql语言，可以直接用mysql client访问，基于Sphinx Search
https://manticoresearch.com/
https://github.com/sphinxsearch/sphinx/ 18年就不维护了

Blast is a full text search and indexing server, written in Go, built on top of Bleve.
https://github.com/mosuka/blast

https://artem.krylysov.com/blog/2020/07/28/lets-build-a-full-text-search-engine/

https://xapian.org/
http://clucene.sourceforge.net/

不是很好，官网自己的搜索都不好用
https://www.meilisearch.com/
curl 'https://sandbox-pool-4eqqeri-3bsbgmeayb75w.ovh-fr-2.platformsh.site/indexes/movies/search?q=botman+robin&limit=2' | jq
$ curl 'https://sandbox-pool-4eqqeri-3bsbgmeayb75w.ovh-fr-2.platformsh.site/indexes/movies/search?q=botman+robin&limit=2'
{"message":"You must have an authorization token","errorCode":"missing_authorization_header","errorType":"authentication_error","errorLink":"https://docs.meilisearch
.com/errors#missing_authorization_header"}


conflenence 替代方案
https://github.com/TruthHun/BookStack 中文，但好像是生成书的
PHP
https://www.bookstackapp.com/
https://github.com/BookStackApp/BookStack

https://www.dokuwiki.org/dokuwiki

很牛的效果图
https://github.com/yangshun/front-end-interview-handbook
A repository for All algorithms implemented in Javascript (for educational purposes only)
https://github.com/TheAlgorithms/Javascript

从英文翻译而来-Appium是一个开源自动化工具，用于使用Webdriver在Android或iOS上运行脚本和测试本机应用程序，移动Web应用程序和混合应用程序。 维基百科（英文)
https://github.com/appium/appium

https://github.com/typescript-cheatsheets/react

API, CLI & Web App for analyzing & finding a person's profile across 350+ social media \ websites (Detections are updated regularly)
https://github.com/qeeqbox/social-analyzer

The open source Firebase alternative. Follow to stay updated about our public Beta.
https://github.com/supabase/supabase

好像用来保存密码的
https://github.com/bitwarden/desktop
https://github.com/getzola/zola
A fast static site generator in a single binary with everything built-in. https://www.getzola.org


https://github.com/nushell/nushell






用 Git 操作的数据库？这个项目火了！ 
https://www.sohu.com/a/454980972_115128
7400 Star！一个使用 Git 命令操作的数据库！
https://www.jianshu.com/p/a3610e482503
https://github.com/dolthub/dolt
https://github.com/linkedin/datahub

Universal Radio Hacker: Investigate Wireless Protocols Like A Boss
https://github.com/jopohl/urh

不太明白
https://github.com/projectdiscovery/nuclei
https://github.com/JanDeDobbeleer/oh-my-posh
有中文
https://github.com/quii/learn-go-with-tests
目录权限+MFA，可惜不支持企业微信之类的登录
https://github.com/authelia/authelia

https://github.com/docker/awesome-compose
https://github.com/android/compose-samples
https://developer.android.com/jetpack/compose

Run Mac in a Docker! Run near native OSX-KVM in Docker! X11 Forwarding! CI/CD for OS X!
https://github.com/sickcodes/Docker-OSX

API, CLI & Web App for analyzing & finding a person's profile across 350+ social media \ websites (Detections are updated regularly)
https://github.com/qeeqbox/social-analyzer

Framework agnostic toolchain for building highly secure native apps that have tiny binaries and are very fast.
[Tauri安装中碰到的坑](https://www.jianshu.com/p/c7e3f2326909)
tauri - 可替换 electron 的PC端 SPA 框架
https://segmentfault.com/a/1190000022489403
手把手教你用 Tauri+Vue 创建小型桌面应用
https://blog.csdn.net/Crazymryan/article/details/108016711
用于代替etr 前端多平台
https://tauri.studio/en/
https://github.com/tauri-apps/tauri/
https://tauri.studio/en/docs/getting-started/intro

https://github.com/lloesche/valheim-server-docker
https://store.steampowered.com/app/892970/Valheim/

基于代码生成器的低代码平台，超越传统商业平台！前后端分离架构SpringBoot 2.x，SpringCloud，Ant Design&Vue，Mybatis-plus，Shiro，JWT。强大的代码生成器让前后端代码一键生成，无需写任何代码! 引领新低代码开发模式OnlineCoding->代码生成->手工MERGE，帮助Java项目解决70%重复工作，让开发更关注业务，既能快速提高开发效率，帮助公司节省成本，同时又不失灵活性。
https://github.com/zhangdaiscott/jeecg-boot
「Java学习+面试指南」一份涵盖大部分 Java 程序员所需要掌握的核心知识。准备 Java 面试，首选 JavaGuide！
https://github.com/Snailclimb/JavaGuide
https://github.com/jdah/minecraft-weekend 48小时完成的minecraft
https://github.com/521xueweihan/GitHub520

深入考察状态机中危险的逻辑漏洞
https://nosec.org/home/detail/4669.html

## 20210318

[GitLab 远程代码执行漏洞通告](https://www.anquanke.com/post/id/235002)
GitLab Critical Security Release: 13.9.4, 13.8.6, and 13.7.9
+ 改的只有13的版本
+ 没有CVE
https://gitlab.com/gitlab-org/gitlab
这个是ee?
git@gitlab.com:gitlab-org/gitlab.git
https://gitlab.com/gitlab-org/gitlab/-/compare/v13.9.3-ee...v13.9.4-ee
https://gitlab.com/gitlab-org/gitlab/-/compare/master...v13.9.4-ee

git tag
v13.9.3-ee
v13.9.4-ee
git checkout -b v13.9.4-ee v13.9.4-ee
git checkout -b v13.9.3-ee v13.9.3-ee


https://gitlab.com/gitlab-org/gitlab-foss
 Project 'gitlab-org/gitlab-ce' was moved to 'gitlab-org/gitlab-foss'.
https://github.com/gitlabhq/gitlabhq
https://gitee.com/mirrors/gitlab
https://gitlab.com/gitlab-org/gitlab-foss/-/compare/v13.9.3...v13.9.4
https://github.com/gettalong/kramdown/pull/708

那其它用 kramdown 的项目会不会也受影响

如何在漏洞奖励网络侦察中使用BugBountyScanner|TODO:研究一下
https://www.freebuf.com/articles/network/265898.html
https://github.com/chvancooten/BugBountyScanner
https://hub.docker.com/r/chvancooten/bugbountyscanner

快HVV了，聊聊攻防演练中安全产品的安全性 | FreeBuf甲方群
https://www.freebuf.com/articles/neopoints/266464.html

防守方须排查的57个安全漏洞与解决方案
https://www.freebuf.com/vuls/266542.html
国外顶级数据分类分级工具主要功能解析|看看都应该有什么功能？
https://www.anquanke.com/post/id/234324
如何高效的挖掘Java反序列化利用链？
https://www.anquanke.com/post/id/234537

## 20210317

A proposed standard that allows websites to define security policies.
https://github.com/securitytxt/security-txt
https://securitytxt.org/

GitLab 搜索利器，代码搜索工具 Kooder 发布
https://gitee.com/koode/kooder
https://www.oschina.net/news/132535/gitee-release-kooder?from=20210314

CVE-2020-14645——WebLogic反序列化
https://www.anquanke.com/post/id/231425

https://github.com/sibears/IDAGolangHelper
https://www.hex-rays.com/products/ida/

逆向工具：
https://github.com/horsicq/DIE-engine/releases

App安全检测实践基础：客户端程序安全（一） 会员
https://www.freebuf.com/articles/terminal/255712.html
App安全检测实践基础：组件安全（二） 会员
https://www.freebuf.com/articles/terminal/256189.html
App安全检测实践基础：组件安全（三）
https://www.freebuf.com//256193.html

记一次Vulnstack靶场内网渗透（五）
https://www.freebuf.com/articles/network/263723.html
searchsploit thinkphp

红队中易被攻击的一些重点系统漏洞整理
https://github.com/r0eXpeR/redteam_vul

简历买卖、人脸收集，“3.15”揭露的隐私问题只是冰山一角
https://www.freebuf.com/articles/neopoints/266348.html
企业可以参考GDPR，CCPA，ISO27701，个人信息安全法，网络安全法，并且需要从组织，流程，人员，技术四个方面来考虑。
组织方面：加强隐私合规团队能力建设，梳理隐私和鬼团队权威。
流程方面：明确好全员指责与责任，定义清晰指责边界。
人员方面：加强组织安全文化建设，重视安全意识教育。
技术方面：使用代码扫描，渗透测试，隐私合规检测技术保证软件安全；使用数据发现，数据流动监测，行为审计，DLP技术保证数据安全。

## 20210316

java代码混淆(使用 ProGuard maven插件)
https://my.oschina.net/u/4381796/blog/4295780
https://github.com/Guardsquare/proguard

【安全通报】XStream 多个高危漏洞（CVE-2021-21341等）
https://nosec.org/home/detail/4697.html

安全研究 | 如何查看GitLab中的共享敏感数据
https://www.freebuf.com/sectool/266025.html

linglong：一款甲方资产巡航扫描系统 | 可以研究一下
https://www.freebuf.com/sectool/264350.html
git clone https://github.com/awake1t/linglong
cd linglong
docker-compose up -d

技术分享：如何在没有公钥的情况下实现JWT密钥滥用
https://www.anquanke.com/post/id/234092

Awesome Docker Compose samples
https://github.com/docker/awesome-compose
The Single Sign-On Multi-Factor portal for web apps
https://github.com/authelia/authelia

70+ open-source clones of popular sites like Airbnb, Amazon, Instagram, Netflix, Tiktok, Spotify, Whatsapp, Youtube etc. See source code, demo links, tech stack, github stars.
https://github.com/GorvGoyl/Clone-Wars
《动手学深度学习》：面向中文读者、能运行、可讨论。中英文版被全球175所大学采用教学。
https://github.com/d2l-ai/d2l-zh

👩‍💻👨‍💻 Awesome cheatsheets for popular programming languages, frameworks and development tools. They include everything you should know in one single file.
https://github.com/LeCoupa/awesome-cheatsheets
https://github.com/bradtraversy/design-resources-for-developers
📜 33 concepts every JavaScript developer should know.
https://github.com/leonardomso/33-js-concepts

ngx_waf：一个 Nginx 防火墙模块。我差点就错过了的宝藏项目，它使用简单不需要复杂的配置，支持的功能直戳我的痛点。你看：

支持 IPV4、IPV6 和 IP 段黑白名单
CC 防御即自动拉黑 IP 一段时间
支持 GET、POST、URL、Cookie 等黑名单（正则）
https://github.com/ADD-SP/ngx_waf/blob/master/README-ZH-CN.md

4、godot：一款功能丰富的开源游戏引擎。最初它只是一款 2D 引擎，近期拓展了 3D 部分的能力。相较于 UE4 或者 Unity 这样的成熟商业引擎来说，Godot 还很年轻不够成熟，尤其 3D 方面的能力。但它拥有简易的开发方式，上手简单。而且社区活跃、文档覆盖全面、有较为丰富的示例代码，对于刚入门的游戏开发者友好。同时开源引擎底层代码完全开源，开发者可以阅读和贡献代码，而不是只停留在游戏逻辑开发层面。总而言之 Godot 是一个极有潜力的游戏引擎，推荐给想学习游戏开发的同学
https://github.com/godotengine/godot

6、fyne：一款 Go 语言跨平台 UI 库。想用 Go 写图形界面应用的小伙伴，快速上手：
安装
$ go get fyne.io/fyne
运行一个 demo
$ go get fyne.io/fyne/cmd/fyne_demo/
$ fyne_demo
https://developer.fyne.io/tour/basics/
https://github.com/fyne-io/fyne

11、x-spreadsheet：基于 JavaScript 实现的轻量级 Web 电子表格库。它功能齐全，包含表格的基本操作和函数等，还有详细的中文文档，在线尝试
https://github.com/myliang/x-spreadsheet
12、h5-Dooring：一款功能齐全的 H5 页面可视化配置平台。让你通过可视化的方式制作出 H5 页面，技术栈以 React 为主，后台采用 Node.js 实现。虽然网上有很多这种工具，但本项目免费开源、功能齐全值得一试
https://github.com/MrXujiang/h5-Dooring
14、tui.image-editor：功能齐全的图片编辑器。支持图片剪裁、旋转、涂鸦等功能，实现了 Vue 和 React 封装的组件，便于整合进你的项目
https://github.com/nhn/tui.image-editor
19、python-patterns：Python 设计模式和使用场景的集合
https://github.com/faif/python-patterns
24、Pine：一个免费、轻量、简洁的 macOS Markdown 编辑器。功能：

主题
LaTex 公式
自动保存
自定义字体
字数统计等写作分析
等等
https://github.com/lukakerr/Pine

2、ChordNova：一款开源免费的和弦生成工具。我不懂乐理，但单从这个软件的界面就感受到了专业，因为有很多乐理的名词😅
https://github.com/Chen-and-Sim/ChordNova
3、containers-the-hard-way：用 Go 实现迷你 Docker，包含 Docker 核心功能的开源项目。该项目仅用 Linux 系统接口实现了类似容器的功能，这些能够帮助你更好地了解容器的工作方式。如果你想更深入地理解容器，就参考本项目写一个迷你 Docker 吧
https://github.com/shuveb/containers-the-hard-way
5、delve：一款 Go 语言的调试工具。如果你还在像我一样用 fmt.Println 调试 go 的代码，就试试这个工具吧。万星的开源项目可不是开玩笑的，它上手简单并且支持多种方式调用，助你快速找到 Bug
https://github.com/go-delve/delve
6、rqlite：用 Go 实现的基于 SQLite 轻量级、分布式关系数据库。如果你对分布式数据库的原理及实现感兴趣的话，这个项目真的是你入门这方面的不二之选，这个项目用 SQLite 作为存储引擎，让你可以把更多的精力放在理解分布式的知识上，尝试阅读下这个项目的文档，相信你会对它感兴趣的。设计图如下：
https://github.com/rqlite/rqlite
7、JustAuth：帮你搞定第三方登陆的 Java 开源组件。使用简单、接入方便，帮你随心所欲地接入第三方登陆，让登陆变得简单。目前已经支持十多个平台，还在持续扩充中
https://github.com/justauth/JustAuth
没有企业微信吗？

8、java-design-patterns：设计模式 Java 的最佳实践，出自开源社区大佬们之手。作为有梦想和追求的 Java 程序员，当然需要会一些设计模式啦。这个项目虽然是英文的但是先看代码和图，尝试理解含义那么英文描述也就能猜得八九不离十了。不要让英语作为你不努力的借口，努力变强吧！在线阅读
https://github.com/iluwatar/java-design-patterns
https://java-design-patterns.com/

11、Anki-Android：高效学习神器 Anki 安卓客户端。Anki 是一个帮助学习的记忆卡片软件，卡片正面是问题背面是答案，然后根据记忆公式帮你复习和记牢。下载地址 如果下载后不会用的话，本文点赞过 100 我出一份小白教程给大家上手这个神器
https://github.com/ankidroid/Anki-Android
12、cloudbase-framework：腾讯开源的云原生一体化部署工具。一键将项目部署上云，不限制框架和语言
https://github.com/Tencent/cloudbase-framework

13、newbee-mall-vue3-app：基于 Vue 3.0 技术栈的电商网站前端开源项目。它麻雀虽小五脏俱全，包含模块：首页、类型分类、搜索、地址管理、登录注册等等，该有的基本上都有涉及到。对新手友好，在熟悉 Vue 3.x 的朋友也可以来看看
https://github.com/newbee-ltd/newbee-mall-vue3-app

14、X6：AntV 旗下的图编辑引擎。提供了开箱即用的交互组件和简单易用的节点定制能力，从而能够快速完成流程图、DAG 图、ER 图等图应用。示例代码：
MIT
https://github.com/antvis/X6
20、streamlit：能够快速地把数据制作成可视化、交互页面的 Python 框架。分分钟让你的数据变成图表，并且该项目提供免费的共享服务平台帮你的项目上线，方便数据的共享和讨论
https://github.com/streamlit/streamlit

23、spree：基于 Ruby on Rails 实现的大而全的电子商城开源项目。功能齐全项目结构清晰：
spree_api：REST API 接口
spree_frontend：移动优先，可自定义的店面
spree_backend：功能丰富的管理面板
spree_cmd：开发人员的命令行工具
spree_core：数据层、服务和邮件、基本组件
https://github.com/spree/spree

27、game-programmer：游戏程序员的学习路径图。一位游戏开发大神开源的项目，希望能够帮助向往游戏开发的你 or 你的孩子，走上游戏开发这条“不归路”。中文
https://github.com/miloyip/game-programmer
https://miloyip.github.io/game-programmer/game-programmer-zh-cn.svg

32、makeaplan_public：使用 Flutter 和 Go 开发的「制定计划 APP」。帮助用户记录和追踪自己的计划，辅助用户完成自己的目标。手机端用的是 Flutter 后端用 Go 实现，服务器和客户端通过 ProtoBuffer+grpc 进行通信。可作为学习 Flutter 和 Go 的实战项目
https://github.com/DuanJiaNing/makeaplan_public
33、free-font：免费可商用的字体集合。这个项目收录的都是免费可商用的字体，并且仔细地标记出了商用时是否需要获取授权等细节
https://github.com/wordshub/free-font
34、DeepLearning-500-questions：《深度学习 500 问》AI 工程师面试知识点的书籍。内容涵盖深度学习的知识点及各大公司常见的笔试题
https://github.com/scutan90/DeepLearning-500-questions
2、project-based-tutorials-in-c：用 C 语言写玩具或项目的教程集合。教程分为游戏开发、操作系统、计算机网络等分类，其中包含图文、视频、代码等资料
https://github.com/rby90/project-based-tutorials-in-c
6、gin-vue-admin：一个基于 Gin+Vue 实现的后台管理系统。看项目名字就知道它为什么而生！该项目的作者还做了配套的免费教学视频，找 Go 实战项目的同学可以学起来了
https://github.com/flipped-aurora/gin-vue-admin
7、pyroscope：基于 Go 的开源实时性能分析平台。仅需在源码中添加几行代码，pyroscope 就能帮你找出代码的性能问题、CPU 使用过高的原因，还有丰富的图表和调用树展示。支持 Go、Python、Ruby 编程语言，中文说明
https://github.com/pyroscope-io/pyroscope
https://github.com/pyroscope-io/pyroscope/blob/main/translations/README.ch.md
8、macdriver：封装 Apple/Mac 接口的 Go 库。用它仅在 80 行代码内就能写出个 macOS 菜单栏「番茄时钟」应用，查看源码
https://github.com/progrium/macdriver
14、mitojs：收集页面上的用户行为和报错信息的轻量级前端库。我问了下项目维护者，信息展示平台和后端服务还未开源，还需要等公司定开源协议。那就先看下前端的功能吧：
https://github.com/clouDr-f2e/mitojs
👀 一款轻量级的收集页面的用户点击行为、路由跳转、接口报错、代码报错、并上报服务端的SDK

21、requests-html：好用的 Python 解析 HTML 库。写爬虫的小伙伴都感受过解析 HTML 的痛苦，常用工具 BeautifulSoup、lxml、Scrapy 的 selector 等。今天你有了新的选择 requests-html，支持 XPath、CSS 选择器、动态页面、过滤指定内容等。上手特别简单和迅速，我的爬虫项目 Hydra 中就用了它，解析 HTML 变得轻松了许多。下面是我觉得好用的函数示例：
https://github.com/psf/requests-html
24、PyG2Plot：基于 G2Plot 封装的 Python3 可视化库。G2Plot 是蚂蚁集团开源的一个基于图表分类学的可视分析图表库，内置 25+ 常见图表类型。该库是 Python 对 G2Plot 的封装，体验良好，开箱即用
https://github.com/hustcc/PyG2Plot
33、AndroidSDK：包含完整 Android SDK 运行环境的 Docker 镜像。适用于各种 Android 持续集成场景，甚至包括模拟器运行应用、界面自动化测试，也可以连接云端进行自动化测试。Android 构建的容器镜像解决方案之一（不违法许可协议的方案），并在 Docker 官方的 DockerCon EU 2017 进行过宣讲
https://github.com/thyrlian/AndroidSDK
30、computer-science：开源社区大学，计算机科学自学的免费材料集合仓库。该项目不仅包含了学习的视频，还有学习计划和时间安排，同时这些课程大多来自国际知名大学。唯一不足的点是材料都是英文的，我想了想还是决定推荐给大家，毕竟学好英语也是编程路上必经之路
https://github.com/ossu/computer-science

## 20210315

[Apache Flink CVE-2020-17518、17519 漏洞分析](https://paper.seebug.org/1505/)

Shiro [反序列化漏洞利用工具编写思路](https://paper.seebug.org/1503/)

[红蓝对抗开源远控：BlueShell](https://www.freebuf.com/sectool/264813.html)

https://simms-teach.com/ 不错的教程
https://simms-teach.com/2016-fall/docs/cis76/cis76lesson01.pdf
https://simms-teach.com/2017-fall/docs/cis76/cis76lesson14.pdf
https://simms-teach.com/2017-fall/docs/cis76/cis76lesson06.pdf

https://github.com/zheng-yanan/art-of-hacking/find/master
MetasploitCheatsheet2.0.pdf

同上资源有
https://github.com/rewardone/OSCPRepo/find/master
https://github.com/rewardone/OSCPRepo

https://gist.github.com/geekspeed/677e56c8c1ad8f9f092d9bebda6be6e9

## 20210314

企业网络安全管理
https://github.com/OpenCTI-Platform/opencti
https://www.opencti.io/en/
docker 安装
https://www.notion.so/Using-Docker-03d5c0592b9d4547800cc9f4ff7be2b8
sudo sysctl -w vm.max_map_count=1048575
```bash
OPENCTI_ADMIN_EMAIL=admin@opencti.io # Valid email address
OPENCTI_ADMIN_PASSWORD=ChangeMe # String
OPENCTI_ADMIN_TOKEN=ChangeMe # Valid UUIDv4
MINIO_ACCESS_KEY=ChangeMeAccess # String
MINIO_SECRET_KEY=ChangeMeKey # String
RABBITMQ_DEFAULT_USER=guest # String
RABBITMQ_DEFAULT_PASS=guest # String
CONNECTOR_HISTORY_ID=ChangeMe # Valid UUIDv4
CONNECTOR_EXPORT_FILE_STIX_ID=ChangeMe # Valid UUIDv4
CONNECTOR_EXPORT_FILE_CSV_ID=ChangeMe # Valid UUIDv4
CONNECTOR_IMPORT_FILE_STIX_ID=ChangeMe # Valid UUIDv4
CONNECTOR_IMPORT_FILE_PDF_OBSERVABLES_ID=ChangeMe # Valid UUIDv4
```

OpenCTI的使用方法
https://www.jianshu.com/p/d609f40c01e8
实战化ATT&CK™：威胁情报
https://zhuanlan.zhihu.com/p/79480347
用于威胁情报分析的虚拟机
https://www.freebuf.com/sectool/253957.html

Threat Pursuit Virtual Machine (VM): A fully customizable, open-sourced Windows-based distribution focused on threat intelligence analysis and hunting designed for intel and malware analysts as well as threat hunters to get up and running quickly.
https://github.com/fireeye/ThreatPursuit-VM
恶意软件分析专用虚拟机：
https://github.com/fireeye/flare-vm
红队渗透测试专用虚拟机：
https://github.com/fireeye/commando-vm

有兴趣的都可以在保证安全的前提下使用。
## 20210312

各类收藏的网络信息安全/黑客攻防/渗透测试等书籍
https://www.cnhackteam.org/topic/1062/

https://dev.to/doctolib/learn-about-ractors-and-build-a-mini-sidekiq-3ba2

## 20210311

未知的未知：九大模糊测试工具
https://www.aqniu.com/tools-tech/65203.html
Fuzzing技术总结（Brief Surveys on Fuzz Testing）
https://zhuanlan.zhihu.com/p/43432370
关于Fuzz工具的那些事儿 金币
https://www.freebuf.com/sectool/76861.html

https://nvd.nist.gov/vuln/search/results?form_type=Basic&results_type=overview&query=xxl-job&search_type=all
https://www.anquanke.com/vul?s=xxl-job
xxl-job2.2.0 信息泄露漏洞
https://www.anquanke.com/vul/id/2143850

https://sec.nmask.cn/article_content?a_id=d99ecb0acc2aadf2e0646edc0a433987
Xxl Job 2.0.2未授权远程代码执行漏洞

https://www.exploit-db.com/exploits/49633
Atlassian JIRA 8.11.1 - User Enumeration
JIRA v7.6.1
JIRA v6.3.10
Vulnerable versions: version < 7.13.16,  8.0.0 ≤ version < 8.5.7, 8.6.0 ≤ version < 8.12.0
结论： 6.x是有问题，但好像7.6.1没问题，结果是错的

https://www.exploit-db.com/exploits/49629
Golden FTP Server 4.70 - 'PASS' Buffer Overflow (2)
https://www.zoomeye.org/searchResult?q=app%3A%22Golden%20ftpd%22
https://www.goldenftpserver.com/download.html
最新版本是 5.0，4.70是前一个版本

Netty 安全漏洞
CVE编号： CVE-2021-21295
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-713
https://github.com/netty/netty/commit/89c241e3b1795ff257af4ad6eadc616cb2fb3dc4

IBM WebSphere Application Server 路径遍历漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-702
redhat AMQ 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-720


打工人眼中攻防演练蓝军那些人那些事儿（四）
https://www.freebuf.com/articles/network/261612.html

## 20210310
FreeBuf甲方群：从攻防演练看网络安全新态势
https://www.freebuf.com/articles/neopoints/265101.html
漏洞威胁分析报告（上册）- 不同视角下的漏洞威胁
https://paper.seebug.org/1498/
全网最详细IDE插件开发之代码审计
https://www.freebuf.com/articles/web/263340.html

## 20210309
https://www.seafile.com/home/
Seafile 是一款开源的企业云盘，注重可靠性和性能。支持 Windows, Mac, Linux, iOS, Android 平台。支持文件同步或者直接挂载到本地访问。

## 20210308
https://github.com/kp300/shotdroid
ShotDroid is a pentesting tool for android. There are 3 tools that have their respective functions, Get files from Android directory, internal and external storage, Android Keylogger + Reverse Shell and Take a webcam shot of the face from the front camera of the phone and PC.
https://reconshell.com/advanced-mssql-injection-tricks/
https://console.huaweicloud.com/ssa/?region=cn-north-4#/ssa/vulnerabilityManagement/emergencyVulnerability
https://github.com/tone-row/flowchart-fun
https://gitee.com/mirrors_trending/flowchart-fun
https://flowchart.fun/?utm_source=hackernewsletter&utm_medium=email&utm_term=fav

基于数据运营安全的个人信息保护
https://www.freebuf.com/articles/neopoints/264566.html
浅谈2021年网络系统流行架构
https://www.freebuf.com/articles/network/265401.html
记一次Vulnstack靶场内网渗透（四）
https://www.freebuf.com/articles/network/263069.html
持续风险监测体系实践：基于ATT&CK的APT高频技术分析
https://www.freebuf.com/articles/network/263141.html
一道shiro反序列化题目引发的思考
https://www.anquanke.com/post/id/231488

## 20210305

开源社区大学，计算机科学自学的免费材料集合仓库。该项目不仅包含了学习的视频，还有学习计划和时间安排，同时这些课程大多来自国际知名大学。唯一不足的点是材料都是英文的，我想了想还是决定推荐给大家，毕竟学好英语也是编程路上必经之路
https://github.com/ossu/computer-science

基于 G2Plot 封装的 Python3 可视化库。G2Plot 是蚂蚁集团开源的一个基于图表分类学的可视分析图表库，内置 25+ 常见图表类型。该库是 Python 对 G2Plot 的封装，体验良好，开箱即用
https://github.com/hustcc/PyG2Plot

美观且便捷的 JavaScript 测试框架 Jest 的图形界面工具。遵循“不写测试的项目，不是好项目”的原则，测试是一定要写的。如果有一个赏心悦目的测试运行界面，应该能略微减轻写单元测试时，痛苦的心情吧
https://github.com/Raathigesh/majestic

封装 Apple/Mac 接口的 Go 库。用它仅在 80 行代码内就能写出个 macOS 菜单栏「番茄时钟」应用，查看源码
https://github.com/progrium/macdriver

基于 Go 的开源实时性能分析平台。仅需在源码中添加几行代码，pyroscope 就能帮你找出代码的性能问题、CPU 使用过高的原因，还有丰富的图表和调用树展示。支持 Go、Python、Ruby 编程语言，中文说明
https://github.com/pyroscope-io/pyroscope/blob/main/translations/README.ch.md
https://github.com/pyroscope-io/pyroscope

基于gin+vue搭建的后台管理系统框架，集成jwt鉴权，权限管理，动态路由，分页封装，多点登录拦截，资源权限，上传下载，代码生成器，表单生成器，通用工作流等基础功能，五分钟一套CURD前后端代码，目前已支持VUE3，欢迎issue和pr~
https://github.com/flipped-aurora/gin-vue-admin

Rails Best Practices I
https://www.youtube.com/watch?v=vw7PlBvLq9k

🌟 Ruby Style Guide, with linter & automatic code fixer
https://github.com/testdouble/standard

https://learn.vonage.com/blog/2021/02/02/build-a-text-to-speech-application-with-hanami/
https://gorails.com/episodes/rails-subdomain-cookies
https://github.com/piotrmurach/strings-truncation 用于句子过长截断
https://github.com/markets/invisible_captcha
https://rive.app/

渗透测试之地基免杀篇：MSF-loader底层分析免杀过360
https://www.freebuf.com/articles/web/261686.html

dnsmap weixin.qq.com 
dnscan.py —domain weixin.qq.com域名
## 20210304
安全建设的原则
https://www.freebuf.com/articles/network/263146.html

微软Exchange曝多个高危漏洞，无需验证交互即可触发
https://www.freebuf.com/news/264981.html

修改｜Flink 在又拍云日志批处理中的实践
https://www.freebuf.com/fevents/264973.html

安全自动化：企业威胁防御的未来
https://www.freebuf.com/articles/network/264851.html

## 20210303

goby插件分享 | 可进行Web漏洞扫描和验证的vulmap
https://nosec.org/home/detail/4688.html
深入研究Samsung系统的安全特性，Part 1: TEE、TrustZone与TEEGRIS
https://nosec.org/home/detail/4686.html
Actually Portable Executable（可移植可执行）
https://nosec.org/home/detail/4687.html

打工人眼中攻防演练蓝军那些人那些事儿（四）
https://www.freebuf.com/articles/network/261612.html

## 20210302

自己动手搭建信息安全可视化平台（一）现状及服务器资产统计模块
https://www.freebuf.com/articles/es/255882.html
自己动手搭建信息安全可视化平台（二）Missle Map
https://www.freebuf.com/articles/es/256334.html
Java反序列化之与JDK版本无关的利用链挖掘
https://www.anquanke.com/post/id/232415

浅谈利用mysql8新特性进行SQL注入
https://www.anquanke.com/post/id/231627
保姆级Cobalt Strike主机隐藏教程
https://www.freebuf.com/articles/network/262445.html

信息安全事件管理的压力与合规路径
https://www.freebuf.com/articles/neopoints/262848.html

## 20210301

An updated version of the classic "Basic Computer Games" book, with well-written examples in a variety of common programming languages
https://github.com/coding-horror/basic-computer-games
A curated and opinionated list of resources for Chief Technology Officers, with the emphasis on startups
https://github.com/kuchin/awesome-cto
Universal Radio Hacker: Investigate Wireless Protocols Like A Boss
https://github.com/jopohl/urh

Manually curated collection of resources for frontend web developers.
https://github.com/dypsilon/frontend-dev-bookmarks


[如何使用OpenCVE在本地进行CVE漏洞探究](https://www.freebuf.com/sectool/262676.html)
https://github.com/opencve/opencve

https://gitee.com/azhao-1981/opencve

CDN 2021 完全攻击指南 （三）
https://www.anquanke.com/post/id/231441
  是不是也可以攻击 Rails这种进程不多的？

打工人眼中攻防演练蓝军那些人那些事儿（三）
https://www.freebuf.com/articles/network/261608.html

如何使用MyJWT对JSON Web Token（JWT）进行破解和漏洞测试
https://www.freebuf.com/sectool/262183.html

截获TLS密钥——Windows Schannel
https://www.freebuf.com/articles/network/262202.html

ZMTP协议远程命令执行漏洞分析及复现
https://www.freebuf.com/vuls/262410.html

论大数据时代下组织内的隐私信息保护管理体系建设
https://www.freebuf.com/articles/neopoints/262275.html

