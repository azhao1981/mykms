# 202111


## 20211121

OCR 对比

腾讯每月1000次免费，有免费Demo
https://console.cloud.tencent.com/ocr/
https://cloud.tencent.com/act/event/ocrdemo

阿里 500/0.01元次 不可重复购买

华为： 千次/40元，无免费，Demo不能上传自己的
https://www.huaweicloud.com/product/ocr.html

免费在线：
http://www.pdfdo.com/image-to-txt.aspx

## 20211119

https://myssl.com/
HTTPS 安全最佳实践（一）之SSL/TLS部署
https://blog.myssl.com/ssl-and-tls-deployment-best-practices/
HTTPS 安全最佳实践（二）之安全加固
https://blog.myssl.com/https-security-best-practices/
HTTPS 安全最佳实践（三）之服务器软件
https://blog.myssl.com/https-security-best-practices-2/

使用python进行ATS合规检测
https://www.secrss.com/articles/7413
python ssl test
sslyze 库：为了处理SNI

[Kunyu (坤舆) - 更高效的企业资产收集](https://paper.seebug.org/1758/)

https://github.com/knownsec/Kunyu
git@gitee.com:azhao-1981/Kunyu.git

pip install -r requirements.txt


装完先一堆依赖问题

ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
spyder 4.2.5 requires pyqt5<5.13, which is not installed.
spyder 4.2.5 requires pyqtwebengine<5.13, which is not installed.
conda-repo-cli 1.0.4 requires pathlib, which is not installed.
anaconda-project 0.9.1 requires ruamel-yaml, which is not installed.
pip install pyqt5==5.13
pip install pyqt5
pip install pyqtwebengine==5.13
pip install pathlib
pip install ruamel-yaml

## 20211118


https://github.com/sickcodes/Docker-OSX
你管这破玩意叫操作系统源码 — 像小说一样品读 Linux 0.11 核心代码
https://github.com/sunym1993/flash-linux0.11-talk

https://github.com/riramar/Web-Attack-Cheat-Sheet

https://copilot.github.com/

一篇文章弄懂mysql8新特性注入
https://www.toutiao.com/a7031032187034157580/?log_from=a0808ce233a4c_1637223614405


## 20211117

https://downloads.cisecurity.org/#/

## 20211116

CVE-2021-41817: Regular Expression Denial of Service Vunlerability of Date Parsing Methods
https://www.ruby-lang.org/en/news/2021/11/15/date-parsing-method-regexp-dos-cve-2021-41817/

POC:

Date._parse("Jan " + "9" * 1000000, limit: nil)
Date._parse("Jan " + "9" * 100000, limit: nil)

top 可以看到CPU能跑满

fixed: https://github.com/ruby/date/commit/1b7504fa139fb1df36be3a02d716d4c552fe0f05
其实就是给parse等函数加一个默认的 limit 128，超过就直接报错

Web-Hacking-ToolKit：一款带有GUI的Web安全测试Docker镜像
https://www.freebuf.com/sectool/304720.html

浅谈VAST威胁建模方法
https://www.freebuf.com/articles/es/304486.html
红蓝对抗之服务攻防：Nginx中间件渗透总结
https://www.freebuf.com/vuls/304690.html

## 20211115

如何写好一份“漏洞报告”
https://www.freebuf.com/articles/web/303558.html

Apache httpd Server CVE-2021-40438 漏洞分析
https://www.anquanke.com/post/id/257657

Apache 模块 mod_proxy
https://www.docs4dev.com/docs/zh/apache/2.4/reference/mod-mod_proxy.html

## 20211112
CMDB 蓝黥 

国家标准《个人信息安全规范》2020版正式发布 (附下载)
https://www.secrss.com/articles/17713

密钥交换算法
https://www.liaoxuefeng.com/wiki/1252599548343744/1304227905273889

异步请求xhr、ajax、axios与fetch的区别比较
https://www.cnblogs.com/weiqinl/p/11279950.html

AES对称加密（crypto-js）
https://segmentfault.com/a/1190000039192480

https://www.honeybadger.io/blog/rails-on-kubernetes/

https://blog.peterzhu.ca/ruby-memcheck/

## 20211111

基于网络攻击链的安全防护思考
https://www.freebuf.com/articles/network/293324.html

OSS密钥复用研究以及常用渗透利用方式总结
https://www.freebuf.com/vuls/304106.html
原理：OSS的KEY，经常会被泄露在开源如GITHUB上，而且OSS的KEY本质上，并不只是OSS的，权限配置不当，可以访问所有的资源

Apache httpd Server CVE-2021-41773 漏洞分析
https://www.anquanke.com/post/id/256973

## 20211110

https://github.com/louisfb01/best_AI_papers_2021

https://github.com/Python-World/python-mini-projects

Android 工程师进阶手册（8 年 Android 开发者的成长感悟）
https://github.com/Skykai521/AndroidDeveloperAdvancedManual

这里是写博客的地方 —— Halfrost-Field 冰霜之地
https://github.com/halfrost/Halfrost-Field

https://github.com/digitalocean/nginxconfig.io
https://gitee.com/mirrors/nginxconfig.io

## 20211109

/lib/systemd/systemd-journald 占大量的内存？
ps -A --sort -rss -o comm,pmem,rss | head -n 20

http://blog.lujun9972.win/blog/2018/08/08/使用journalctl查看systemd日志/index.html
若我们只是想查看日志中的最后几行，没有必要使用tail命令，通过 --lines 命令即可,比如上面那个命令可以写成
journalctl --all --lines=100

18.4 systemd-journald.service 简介
https://wizardforcel.gitbooks.io/vbird-linux-basic-4e/content/160.html

rsyslogd、systemd-journald内存占用高解决方案
https://blog.espnlol.com/?p=599

/etc/systemd/journald.conf
SystemMaxUse=16M
ForwardToSyslog=no
systemctl restart systemd-journald
systemctl restart snapd
sudo apt purge snapd

## 20211108
ruby 更友好的 hash 访问
https://github.com/ty-porter/intellihash
https://blog.ty-porter.dev/development/2021/08/23/metaprogramming-smarter-hashes.html

https://hybrd.co/posts/github-issue-style-file-uploader-using-stimulus-and-active-storage

https://gorails.com/episodes/rails-code-review-with-kasper

AD FS 账户同步云 SSO 多账户最佳实践| 阿里SSO支持AD
https://bp.aliyun.com/detail/248?utm_content=m_1000304808&spm=a2c4l.25422738.zh-cnc.1

ATT&ACK红队实战评估：超级丰富的getshell姿势
https://www.freebuf.com/articles/network/298871.html

## 20211105

跨平台现代的 Neovim 前端。它使用起来流畅，动画效果细腻、美观，你可以用 Neovim 和 nvui 自由定制出一个高颜值、最懂你的编辑器
https://github.com/rohit-px2/nvui

讲解并实现如何通过 favicon.ico 跟踪用户。supercookie 的跟踪方式不需要 cookie，原理是浏览器访问网站时都会请求 favicon.ico 文件，服务器通过该请求为每个用户分配一个 ID 从而实现跟踪效果
https://github.com/jonasstrehle/supercookie
亲测：Chrome 95.0.4638.69已经不受此影响，正常模式和隐身模式ID并不一样
中文相关： [抵制跨站点隐私追踪库 supercookie](https://v2ex.com/t/757467)

https://github.com/h5bp/Front-end-Developer-Interview-Questions

https://github.com/OpenIMSDK/Open-IM-Server

A truly Open Source MongoDB alternative
https://github.com/MangoDB-io/MangoDB

https://github.com/koute/bytehound
更强大的 Linux 内存分析工具。它能够显示内存变化曲线、占用详情、完整的堆栈记录等信息，有助于解决内存泄漏等问题
生成一个 .so 来让应用调用

Shell 静态分析工具。写过 shell 脚本的人，应该都经历过运行调试脚本的情况。有了 shellcheck 无需运行就能发现 sh/bash 的语法、类型等错误
https://github.com/koalaman/shellcheck

作者正在重写《算法新解》，开源仓库同步更新。下载地址
https://github.com/liuxinyu95/AlgoXY

图像超分辨率模型，修复漫画图像的效果惊艳。
通过 AI 技术将低分辨率、模糊的图像修复成高清图像，可用于图像放大和提升质量。
基于它实现的桌面工具，还有可以直接使用的 Python 脚本，快去试试效果吧
https://github.com/xinntao/Real-ESRGAN

集合多种 Steam 客户端工具的工具箱。该工具支持 Window、Linux、macOS、Android 操作系统，包括游戏库存管理、解锁成就、史低价格、出售库存物品等功能，还有丰富的插件等待你发掘
https://github.com/SteamTools-Team/SteamTools

命令行哔哩哔哩视频下载工具
https://github.com/nilaoda/BBDown

常用 CSS 样式示例集合
https://github.com/QiShaoXuan/css_tricks

基于 Go 语言实现的在线客服系统，采用 Gin+MySQL+JWT+WebSocket 等技术栈实现
https://github.com/taoshihan1991/go-fly

用来搞定 Go 应用中配置的库。支持多种配置文件类型、监控并重新加载配置文件、远程读取配置系统等
https://github.com/spf13/viper

Android 系统的沙盒程序，App 虚拟化引擎。它创建了一个虚拟空间，在那里可以任意安装、启动、控制、卸载应用。虚拟空间与外部隔离相当于沙盒环境，可在安卓上实现应用多开、静默安装等黑科技
https://github.com/asLody/VirtualApp

30 天 JavaScript 编程挑战。该教程虽然是英文教程但是图文并茂通俗易通，内容循序渐进包含练习题，适合零基础想要学习 JavaScript 的同学
https://github.com/Asabeneh/30-Days-Of-JavaScript

远程调试手机页面和抓包的工具。操作简单仅需手机和电脑在同一个 WIFI 下，即可在实现真机调试页面
https://github.com/wuchangming/spy-debugger

一种更加人性化的新型 shell
https://github.com/nushell/nushell

在线文字游戏《人生重开模拟器》。纯文字游戏只需开局选天赋分配初始属性，后面就是看岁月如白驹过隙，转眼就过完了这一生，不满意的话可以轻松重开新的人生。游戏凭借诙谐幽默的文案和出乎意料的结尾，广受好评。在线试玩
https://github.com/VickScarlet/lifeRestart

中文 DOS 游戏集合。在线试玩
https://github.com/rwv/chinese-dos-games

自制电脑游戏的体感设备。该项目包含制作时需要的硬件设计和全部源码
https://github.com/JingYang1124/HEX-LINK

Flutter 练习项目。包含代码、UI 设计图、集成测试、相关文章等
https://github.com/simplezhli/flutter_deer

看似需要 JavaScript 实现的效果，其实仅用到了 CSS 的示例集合。该项目学习意义大于实用价值，更多的时候是为了让你知道原来 CSS 还能这么用
https://github.com/you-dont-need/You-Dont-Need-JavaScript

Go 的集合支付库。支持微信、支付宝、PayPal、QQ 支付
https://github.com/go-pay/gopay

国内大佬开源的 Go 语言 RPC 框架。框架入门轻松能够快速上手，性能优于 grpc-go 而且众多国内大厂都在用
https://github.com/smallnest/rpcx

开源的像素风 RougeLike 角色扮演游戏，耐玩且支持中文。游戏虽然画面怀旧但内容丰富，可选战士、法师、射手、盗贼四种角色，超过 150 种道具玩法多样。每场探险都不一样，每次开局都是随机生成关卡和敌人。游戏看似简单但上手有难度，想要通关需要花些时间研究。支持 PC、安卓和 iOS 客户端，下载地址
https://github.com/00-Evan/shattered-pixel-dungeon

一款电脑端小说阅读软件。该软件不仅支持本地导入小说，自动解析生成目录方便阅读。还支持全网搜索和下载小说、在线收听有声小说、自动更新章节等功能
https://github.com/unclezs/uncle-novel

可将 HTML 和 Markdown 转为微信小程序 WXML 的库。用于解决在微信小程序上 Markdown、HTML 不能直接渲染的问题
https://github.com/sbfkcel/towxml

抖音开源的中后台前端解决方案。包含设计语言、React 组件、主题，开箱即用可快速搭建美观的 React 应用
https://github.com/DouyinFE/semi-design

用拖动的方式创建漂亮的桌面软件。它的操作十分简单，首先在 Figma 网站通过拖拽的方式构建应用，然后把设计好的应用地址和 token 输入到 Tkinter-Designer 自动生成 Python 代码，最后就能得到界面简洁大方的桌面应用啦。不用代码做出基于 tkinter 的桌面应用
https://github.com/ParthJadhav/Tkinter-Designer

公开的中文聊天语料库
https://github.com/codemayq/chinese_chatbot_corpus

在线编程语言词法分析器。基于 DFA 算法实现支持多语言扩展，可用于代码编辑器的语法高亮等场景。
同时项目的代码量少还有详细的源码讲解文档，适合对词法分析感兴趣的小伙伴学习。在线尝试
https://github.com/WGrape/lexer

omniauth 1.x 之前的一个老漏洞 CVE-2015-9284

https://github.com/omniauth/omniauth/wiki/Upgrading-to-2.0#rails
https://github.com/omniauth/omniauth/wiki/Resolving-CVE-2015-9284

bundle-audit update

https://github.com/rubysec/ruby-advisory-db.git

bundle-audit check  --no-update -v

## 20211102

浅谈反向代理技术
https://www.freebuf.com/articles/web/293165.html

基于Nmap的二次开发
https://www.freebuf.com/sectool/291087.html

详细分析GitLab CE 已遭在野利用漏洞 (CVE-2021-22205)
https://blog.csdn.net/smellycat000/article/details/121005824

https://github.com/CsEnox/Gitlab-Exiftool-RCE
```bash
# https://hub.docker.com/r/gitlab/gitlab-ce/tags?page=1&name=13.10.2
docker pull gitlab/gitlab-ce:13.10.2-ce.0

export GITLAB_HOME=/srv/gitlab

sudo docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:13.10.2-ce.0
```
其它POC： https://github.com/r0eXpeR/CVE-2021-22205

https://hackerone.com/reports/1154542

Gitlab 13.10.2 - Remote Code Execution (Authenticated)
https://www.exploit-db.com/exploits/49951

