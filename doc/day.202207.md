
https://github.com/veo/vscan
开源、轻量、快速、跨平台 的网站漏洞扫描工具，帮助您快速检测网站安全隐患。功能 端口扫描(port scan) 指纹识别(fingerprint) 漏洞检测(nday check) 智能爆破 (admin brute) 敏感文件扫描(file fuzz)



https://github.com/uber-go/zap/search?q=password
Yearning
https://github.com/cookieY/Yearning
https://github.com/asg017/sqlite-html
https://github.com/launchbadge/sqlx
https://github.com/getzola/zola
https://github.com/foundry-rs/foundry
https://github.com/pola-rs/polars
https://github.com/tauri-apps/tauri
https://github.com/PyO3/pyo3
https://github.com/apache/arrow-rs
https://github.com/microsoft/windows-rs


https://github.com/salesforce/CodeGen
https://github.com/moyix/fauxpilot
FauxPilot - an open-source GitHub Copilot server
公司能否弄一个？

https://vitepress.vuejs.org/

https://github.com/Asabeneh/30-Days-Of-JavaScript
https://github.com/sobinge/2022-HW-POC
2022 护网行动 POC 整理



https://github.com/Tencent/APIJSON
Bifrost ---- 面向生产环境的 MySQL 同步到Redis,MongoDB,ClickHouse,MySQL等服务的异构中间件

SQL 审核查询平台
https://github.com/hhyo/Archery

🚀 零代码、全功能、强安全 ORM 库，后端接口和文档零代码，前端(客户端) 定制返回 JSON 的数据和结构。 🚀 A JSON Transmission Protocol and an ORM Library for providing APIs and Docs without writing any code.
https://github.com/Tencent/APIJSON


https://github.com/randorisec/CVE-2022-34918-LPE-PoC


fastjson已使用黑白名单用于防御反序列化漏洞，经研究该利用在特定条件下可绕过默认autoType关闭限制，攻击远程服务器，风险影响较大。建议fastjson用户尽快采取安全措施保障系统安全。

特定依赖存在下影响 ≤1.2.80。
漏洞详情：https://github.com/alibaba/fastjson/wiki/security_update_20220523

安骑士检测方法：

检查当前系统运行中的fastjson版本是否在受影响版本内且是否配置safeMode禁用autoType，若在影响版本内且未配置safeMode禁用autoType就认为存在该漏洞。
修复建议
1、升级到最新版本1.2.83 https://github.com/alibaba/fastjson/releases/tag/1.2.83 。该版本涉及autotype行为变更，在某些场景会出现不兼容的情况，如遇到问题可以到 https://github.com/alibaba/fastjson/issues 寻求帮助。

2、fastjson在1.2.68及之后的版本中引入了safeMode，配置safeMode后，无论白名单和黑名单，都不支持autoType，可杜绝反序列化Gadgets类变种攻击（关闭autoType注意评估对业务的影响）。开启方法可参考 https://github.com/alibaba/fastjson/wiki/fastjson_safemode 。1.2.83修复了此次发现的漏洞，开启safeMode是完全关闭autoType功能，避免类似问题再次发生，这可能会有兼容问题，请充分评估对业务影响后开启。

3、因升级版本可能带来兼容性问题，可使用noneautotype版本，参考：https://github.com/alibaba/fastjson/wiki/security_update_20220523

4、迁移升级使用fastjson v2 ，可参考 https://github.com/alibaba/fastjson2/releases
2022年6月3日，Atlassian官方发布官方公告，披露存在CVE-2022-26134 Confluence 远程代码执行漏洞在野攻击漏洞事件。漏洞利用无需身份认证，可直接前台远程执行任意代码。
漏洞详情：https://confluence.atlassian.com/doc/confluence-security-advisory-2022-06-02-1130377146.html


网络拓扑图
https://github.com/search?q=topology&type=Repositories
https://github.com/zhaodabao/topology
https://github.com/openwisp/openwisp-network-topology

Powerful rich text editor framework with a modular architecture, modern integrations, and features like collaborative editing.
https://github.com/ckeditor/ckeditor5
https://github.com/ryanmcdermott/clean-code-javascript
A Virtual Machine Monitor for modern Cloud workloads. Features include CPU, memory and device hotplug, support for running Windows and Linux guests, device offload with vhost-user and a minimal compact footprint. Written in Rust with a strong focus on security.
https://github.com/cloud-hypervisor/cloud-hypervisor


https://github.com/sunface/rust-by-practice/blob/master/zh-CN/src/why-exercise.md

模板的目的为了展示：

如何组织项目，以防止项目演化成难以维护的代码
在哪里处理业务逻辑，以维护代码的独立、清晰和可扩展
当微服务增长时，不要失去控制
https://github.com/evrone/go-clean-template/blob/master/README_CN.md


基于vite+vue3+gin搭建的开发基础平台（已完成setup语法糖版本），集成jwt鉴权，权限管理，动态路由，显隐可控组件，分页封装，多点登录拦截，资源权限，上传下载，代码生成器，表单生成器等开发必备功能。
https://github.com/flipped-aurora/gin-vue-admin

一款支持多种存储的目录文件列表程序，支持 web 浏览与 webdav，后端基于gin，前端使用react。

https://alist-doc.nn.ci/docs/intro
https://github.com/rclone/rclone

https://eugenkiss.github.io/7guis/tasks/
https://github.com/letientai299/7guis

https://github.com/projectdiscovery/httpx
httpx is a fast and multi-purpose HTTP toolkit allow to run multiple probers using retryablehttp library, 
it is designed to maintain the result reliability with increased threads.

frp 是一个专注于内网穿透的高性能的反向代理应用，支持 TCP、UDP、HTTP、HTTPS 等多种协议。
可以将内网服务以安全、便捷的方式通过具有公网 IP 节点的中转暴露到公网。
https://github.com/fatedier/frp/blob/dev/README_zh.md

https://github.com/inancgumus/learngo

PocketBase 是一个开箱即用的后端服务。可以作为独立的应用直接使用，也可作为Go语言框架进行定制开发。带有内嵌的SQLite数据库，用户管理，管理员控制面板，以及RESET API

https://github.com/pocketbase/pacocketbase

https://github.com/zee-editor/zee
cargo install --features system-clipboard zee

https://github.com/c-bata/go-prompt

这是个go shell,使用
https://github.com/abs-lang/abs

有用，给dockerimage减肥专用
https://github.com/docker-slim/docker-slim

https://github.com/chriswalz/bit

https://github.com/ktr0731/evans
rpc客户端

rust+dart，但是就是很容易崩，没有到正式版本
https://github.com/AppFlowy-IO/AppFlowy


https://github.com/denoland/fresh
https://deno.land/#installation
cargo install deno --locked
安装失败。。。。
deno run -A -r https://fresh.deno.dev fresh-demo
deno task start
这个可以

https://github.com/wailsapp/wails/blob/master/README.zh-Hans.md
它提供了将 Go 代码和 Web 前端一起打包成单个二进制文件的能力。
通过提供的工具，可以很轻松的完成项目的创建、编译和打包。你所要做的就是发挥想象力！
Wails 使用 cgo 与原生渲染引擎结合，因此需要依赖一些平台的库以及 Go 的安装。基本要求是：
为 Go 程序提供 Web 界面的传统方法是通过内置 Web 服务器。Wails 提供了一种不同的方法：
go install github.com/wailsapp/wails/cmd/wails@latest
https://wails.app/gettingstarted/installing/
wails init
wails build

Prowler is an Open Source security tool to perform AWS security best practices assessments, audits, incident response, continuous monitoring, hardening and forensics readiness. 
It contains more than 240 controls covering CIS, PCI-DSS, ISO27001, GDPR, HIPAA, FFIEC, SOC2, AWS FTR, ENS and custom security frameworks.
https://github.com/prowler-cloud/prowler

https://github.com/gothinkster/realworld
https://codebase.show/projects/realworld?category=fullstack
真实世界的例子

https://github.com/kevwan/tproxy/blob/main/readme-cn.md
当我在做后端开发或者写 go-zero 的时候，经常会需要监控网络连接，分析请求内容。比如：
分析 gRPC 连接何时连接、何时重连
分析 MySQL 连接池，当前多少连接，连接的生命周期是什么策略
也可以用来观察和分析任何 TCP 连接

Vulnerabilities Scan；15000+PoC漏洞扫描；20种应用密码爆破；7000+Web指纹；146种协议90000+规则Port扫描；Fuzz、HW打点、BugBounty神器...
https://github.com/hktalent/scan4all





https://github.com/duke-git/lancet/blob/main/README_zh-CN.md
lancet（柳叶刀）是一个全面、高效、可复用的go语言工具函数库。 lancet受到了java apache common包和lodash.js的启发。

https://github.com/grafana/loki
https://www.qikqiak.com/post/grafana-log-tool-loki/
https://www.cnblogs.com/mr-bigdata/p/14541065.html

一文搞定 Containerd 的使用
https://www.51cto.com/article/677744.html
容器运行时
https://kubernetes.io/zh-cn/docs/setup/production-environment/container-runtimes/


https://github.com/Unknwon/go-fundamental-programming
《Go 编程基础》是一套针对 Google 出品的 Go 语言的视频语音教程，主要面向新手级别的学习者。

《The Way to Go》中文译本，中文正式名《Go 入门指南》
https://github.com/unknwon/the-way-to-go_ZH_CN


https://github.com/chatwoot/chatwoot

实践案例 | 使用 Bevy 游戏引擎制作炸弹人
https://rustmagazine.github.io/rust_magazine_2021/chapter_2/rust_game_bevy_bomber.html#%E5%AE%9E%E8%B7%B5%E6%A1%88%E4%BE%8B--%E4%BD%BF%E7%94%A8-bevy-%E6%B8%B8%E6%88%8F%E5%BC%95%E6%93%8E%E5%88%B6%E4%BD%9C%E7%82%B8%E5%BC%B9%E4%BA%BA

https://maximomussini.com/posts/a-rubyist-guide-to-vite-js