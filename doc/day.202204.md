
## qemu 
其实没有比vb好哪里
https://mudongliang.github.io/2017/09/21/install-ubuntu-in-qemu.html

```bash
qemu-img create -f qcow2 Ubuntu_22.04-amd64.img 80G
qemu-system-x86_64 -hda Ubuntu_22.04-amd64.img -boot d -cdrom ubuntu-22.04-desktop-amd64.iso -m 4096 -enable-kvm
qemu-system-x86_64 -hda Ubuntu_22.04-amd64.img -boot d -cdrom ubuntu-22.04-live-server-amd64.iso -m 4096 

qemu-system-i386 -m 1024

M -enable-kvm -drive file=./ubuntu-desktop.img,index=0,media=disk,format=raw

```
https://ubuntu.com/server/docs/virtualization-qemu
qemu-img create -f qcow2 disk.qcow 5G
Using the disk by adding -drive file=disk.qcow,format=qcow2
## 20220428
设计数据密集型应用 - 中文翻译
https://github.com/Vonng/ddia
Prowler is an Open Source security tool to perform AWS security best practices assessments, audits, incident response, continuous monitoring, hardening and forensics readiness. It contains more than 200 controls covering CIS, PCI-DSS, ISO27001, GDPR, HIPAA, FFIEC, SOC2, AWS FTR, ENS and custom security frameworks. Enterprise version:
https://github.com/prowler-cloud/prowler
🐢 Magical shell history
https://github.com/ellie/atuin
A list of cool features of Git and GitHub.
https://github.com/tiimgreen/github-cheat-sheet
The fastai book, published as Jupyter Notebooks
https://github.com/fastai/fastbook

## 20220412
https://github.com/a-little-org-called-mario/a-little-game-called-mario
https://github.com/GitHubDaily/GitHubDaily#go
## 20220411

MIT: PPT 相关
https://github.com/hakimel/reveal.js
一款 HTML 演示框架。让你摆脱传统死板的 PPT 制作方法，可以方便地使用 HTML、Markdown 语言制作 PPT
https://github.com/alexfoxy/lax.js
用于滚动时创建平滑和好看动画的库。简单轻量仅 4KB 大小，但功能齐全且灵活
https://github.com/frappe/charts
简单、零依赖、响应式的 SVG 图表库

https://github.com/miniMAC/magic
https://www.minimamente.com/project/magic/
炫酷的 CSS3 动画库。在线体验

简历模板。不需要懂 LaTeX 语法就可以用，适合用来做一页纸简历
https://github.com/billryan/resume



《TensorFlow 深度学习》
https://github.com/dragen1860/Deep-Learning-with-TensorFlow-book

https://github.com/jina-ai/jina
一款易用的神经搜索框架。神经搜索是指用非结构化数据，搜索非结构化数据。Jina 简化了神经搜索系统的搭建流程，使开发者可以快速构建以图搜图、以文字搜图、问答机器人、照片去重、海量标签分类等应用
https://github.com/hibayesian/awesome-automl-papers
汇集了自动机器学习（AutoML）相关的论文、文章、教程等资源的项目

https://github.com/syncsynchalt/illustrated-tls
图解 TLS 连接。用在线交互的方式讲解 TLS 的全过程，从建立 TLS 1.2 客户端发送 ping 再到接收 pong，详细到每一个字节。在线尝试

开源的身份验证方案。为你的应用轻松增加登录、会话管理等功能，支持自行搭建服务。可用作 Auth0 的开源替代品
https://github.com/supertokens/supertokens-core

https://github.com/vitessio/vitess
用于横向扩展 MySQL 数据库的集群系统。基于 Go 语言的并发特性，它能够轻松处理数千个连接。还可以根据配置好的规则，自动优化影响数据库性能的查询，运维方面支持自动处理主故障转移和备份等功能
https://github.com/TypeStrong/ts-node
可直接在 Node.js 上执行 TypeScript 代码的库。通过 JIT 方式将 TypeScript 代码转换成 JavaScript，实现不需要预编译即可在 Node.js 上运行 TypeScript 代码

https://github.com/summernote/summernote MIT
基于 jQuery 的编辑器库。可用来创建所见即所得（WYSIWYG）编辑器，支持 Bootstrap 3、4 和 5

面向程序员的本地 Markdown 笔记工具。一款适合程序员的笔记工具，拥有和其它工具不一样的体验
技术笔记：可直接在文档中运行代码块（默认支持 JS 代码，其它语言需配置）
制作辅助工具：可在文档中嵌入 HTML 组件来制作辅助工具
画图和图表：支持嵌入多种图形、思维导图、Plantunl、Drawio、Mermaid 、ECharts
工作日报：支持任务代办列表，使用“宏替换”功能可以方便地生成日报周报
https://github.com/purocean/yn

用 Python 实现所有算法。该项目是用 Python 语言实现各种算法的集合，主要用于教育和学习。包括搜索、排序、数据结构、机器学习、密码、神经网络等方面
https://github.com/TheAlgorithms/Python

https://github.com/vapor/vapor
https://cn.docs.vapor.codes/4.0/install/linux/
流行的 Swift 语言 Web 框架。核心框架基于非阻塞事件驱动库 SwiftNIO 构建，除此之外还提供了 ORM、模版引擎、用户身份验证等模块，可用来快速创建网站、接口等服务。中文文档

https://github.com/Yqnn/svg-path-editor
https://yqnn.github.io/svg-path-editor/
Star 2.5k Watch 29 Fork 150
在线 SVG 编辑器。在线体验

https://macos-web.app/
https://github.com/puruvj/macos-web
在线体验 macOS 系统。该项目使用 Svelte 复刻了 macOS 操作系统的部分操作体验，虽然已实现的功能较少，但更新积极未来可期。在线查看

一份关于数据库的教程。内容涵盖了 MySQL、Redis、ES、MongoDB 从入门到面试等多方面的知识
https://github.com/dunwu/db-tutorial



## 20220409
https://github.com/wez/wezterm  MIT RUST
A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust


https://github.com/goldbergyoni/javascript-testing-best-practices 
A community-supported supercharged version of paperless: scan, index and archive all your physical documents
https://github.com/paperless-ngx/paperless-ngx
Secure Backend Server for Web, Mobile & Flutter Developers 🚀 AKA the 100% open-source Firebase alternative.
https://github.com/appwrite/appwrite
## 20220406 
## 20220406
https://github.com/Lissy93/personal-security-checklist
https://github.com/danielmiessler/SecLists
https://github.com/s0md3v/Smap
a drop-in replacement for Nmap powered by shodan.io

https://github.com/arthurspk/guiadofrontend

A FREE Windows C development course where we will learn the Win32API and reverse engineer each step utilizing IDA Free in both an x86 and x64 environment.
https://github.com/mytechnotalent/Hacking-Windows

## 20220402
0voice 整理it资料的百科全库
https://github.com/0voice
【未来服务器端编程语言】最全空降golang资料补给包（满血战斗），包含文章，书籍，作者论文，理论分析，开源框架，云原生，大佬视频，大厂实战分享ppt
https://github.com/0voice/Introduction-to-Golang
【2021年新鲜出炉】K8s（Kubernetes）的工程师资料合辑，书籍推荐，面试题，精选文章，开源项目，PPT，视频，大厂资料
https://github.com/0voice/k8s_awesome_document
https://github.com/EbookFoundation/free-programming-books

https://github.com/nocodb/nocodb
🔥 🔥 🔥 Open Source Airtable Alternative - turns any MySQL, Postgres database into a collaborative spreadsheet with REST APIs.
db to restAPI? 数据库 中间件的项目可以用这个？



Database migrations. CLI and Golang library.
https://github.com/golang-migrate/migrate

https://github.com/mikeroyal/Open-Source-Security-Guide
ALL IN ONE Hacking Tool For Hackers
https://github.com/Z4nzu/hackingtool
MIT：Fast and customizable vulnerability scanner based on simple YAML based DSL.
https://github.com/projectdiscovery/nuclei
Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues
https://github.com/aquasecurity/trivy
An open-source vector database for scalable similarity search and AI applications.
https://github.com/milvus-io/milvus

Spring4Shell Proof Of Concept/Information CVE-2022-22965
https://github.com/BobTheShoplifter/Spring4Shell-POC
Spring-cloud-function-SpEL-RCE 批量检测脚本，反弹shell_EXP,欢迎师傅们试用
https://github.com/chaosec2021/Spring-cloud-function-SpEL-RCE

SpringCore0day from https://share.vx-underground.org/ & some additional links
https://github.com/craig/SpringCore0day
https://github.com/Retrospected/spring-rce-poc
https://github.com/fengguangbin/spring-rce-war
https://github.com/dinosn/CVE-2022-22963

目标：带大家把 Linux 0.11 核心代码与操作系统的设计思想啃下来
https://github.com/sunym1993/flash-linux0.11-talk

股票分析 Investment Research for Everyone.
https://github.com/OpenBB-finance/OpenBBTerminal

A Collection of application ideas which can be used to improve your coding skills.
https://github.com/florinpop17/app-ideas

https://github.com/vandadnp/flutter-tips-and-tricks

📓 The UI component explorer. Develop, document, & test React, Vue, Angular, Web Components, Ember, Svelte & more!
https://github.com/storybookjs/storybook

🔥 Golang audio/video live streaming library/client/server. support RTMP, RTSP(RTP/RTCP), HLS, HTTP[S]/WebSocket[S]-FLV/TS, H264/H265/AAC, relay, cluster, record, HTTP API/Notify. 直播
https://github.com/q191201771/lal

https://github.com/YaoApp/yao/blob/main/README.zh-CN.md
Yao A low code engine to create web services and dashboard.

https://github.com/ehang-io/nps
一款轻量级、高性能、功能强大的内网穿透代理服务器。支持tcp、udp、socks5、http等几乎所有流量转发，可用来访问内网网站、本地支付接口调试、ssh访问、远程桌面，内网dns解析、内网socks5代理等等……，并带有功能强大的web管理端。a lightweight, high-performance, powerful intranet penetration proxy server, with a powerful web management terminal.
https://github.com/fatedier/frp
frp 是一个专注于内网穿透的高性能的反向代理应用，支持 TCP、UDP、HTTP、HTTPS 等多种协议。可以将内网服务以安全、便捷的方式通过具有公网 IP 节点的中转暴露到公网。

An enterprise-class low-code technology stack with scale-out design / 一套面向扩展设计的企业级低代码技术体系
lowcode-engine.cn
https://github.com/alibaba/lowcode-engine
Extensible low-code framework for building business applications. Connect to databases, cloud storages, GraphQL, API endpoints, Airtable, etc and build apps using drag and drop application builder. Built using JavaScript/TypeScript. 🚀
https://github.com/ToolJet/ToolJet

OpenIM: Instant messaging open source project based on go built by former IM technology experts. Backend in Go.（由IM技术专家打造的基于 Go 实现的即时通讯（IM）项目，从服务端到客户端SDK开源即时通讯（IM）整体解决方案，可以轻松替代第三方IM云服务，打造具备聊天、社交功能的app。）
https://github.com/OpenIMSDK/Open-IM-Server

EDITOR 编译器: 还没能用
https://github.com/lapce/lapce/

helix 


我的超迷你机械臂机器人项目。
https://github.com/peng-zhihui/Dummy-Robot

https://github.com/hpcaitech/ColossalAI
Colossal-AI: A Unified Deep Learning System for Large-Scale Parallel Training
https://github.com/datawhalechina/easy-rl
强化学习中文教程（蘑菇书），在线阅读地址：https://datawhalechina.github.io/easy-rl/

https://github.com/YunaiV/ruoyi-vue-pro
🔥 官方推荐 🔥 RuoYi-Vue 全新 Pro 版本，优化重构所有功能。基于 Spring Boot + MyBatis Plus + Vue & Element 实现的后台管理系统 + 微信小程序，支持 RBAC 动态权限、数据权限、SaaS 多租户、Activiti + Flowable 工作流、三方登录、支付、短信、商城等功能。你的 ⭐️ Star ⭐️，是作者生发的动力！

https://github.com/cloudreve/Cloudreve
🌩支持多家云存储的云盘系统 (Self-hosted file management and sharing system, supports multiple storage providers)

https://github.com/Arriven/db1000n
This is a simple distributed load generation client written in go. It is able to fetch simple json config from a local or remote location. The config describes which load generation jobs should be launched in parallel. There are other existing tools doing the same kind of job. I do not intend to copy or replace them but rather provide a simple open source alternative so that users have more options. Feel free to use it in your load tests (wink-wink).

