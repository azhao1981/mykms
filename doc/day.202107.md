# 202107

## 20210705


python-magic installation challenges for 64-bit Windows 10 running 32-bit Python 2.7 build
https://stackoverflow.com/questions/41516138/python-magic-installation-challenges-for-64-bit-windows-10-running-32-bit-python

```bash
# 失败，拒绝访问
pip install python-libmagic
pip install python-magic-bin
```


React 的许可协议到底发生了什么问题？
https://zhuanlan.zhihu.com/p/28618630

https://github.com/RaRe-Technologies/smart_open

各个基础漏洞的top25易存在漏洞的参数
https://github.com/lutfumertceylan/top25-parameter
For basic researches, top 25 vulnerability parameters that can be used in automation tools or manual recon. 🛡️⚔️🧙

XSStrike 是用 Python3 编写的，快速检测跨站脚本漏洞的工具
https://blog.intigriti.com/2021/06/29/hacker-tools-xsstrike-hunting-for-low-hanging-fruits/

sqlmap4burp++是一款兼容Windows，mac，linux多个系统平台的Burp与sqlmap联动插件
https://github.com/c0ny1/sqlmap4burp-plus-plus/

数据安全探索者之路
https://www.freebuf.com/articles/database/279379.html

数据库安全之MongoDB渗透
https://www.freebuf.com/vuls/277847.html

你真的会用Nmap吗？一文读懂Nmap的正确使用方法
https://www.freebuf.com/sectool/277822.html

Krane：一款功能强大的Kubernetes RBAC静态分析与可视化工具
https://www.freebuf.com/articles/container/277697.html

## 20210703

RiskScanner 是开源的多云安全合规扫描平台，通过 Cloud Custodian 的 YAML DSL 定义扫描规则，实现对主流公(私)有云资源的安全合规扫描及使用优化建议。
https://github.com/riskscanner/riskscanner

https://github.com/cloud-custodian/cloud-custodian
https://gitee.com/mirrors/cloud-custodian
https://cloudcustodian.io/
对于云的安全性、合规性和成本管理解决方案而言，受欢迎的选择之一是 Cloud Custodian，一个由 Capital One 赞助的开源项目。
https://aws.amazon.com/cn/blogs/china/announcing-cloud-custodian-integration-aws-security-hub/
https://github.com/topics/cloud-custodian
用于云安全、成本优化和治理的规则引擎，yaml中的DSL用于查询、过滤和对资源采取操作的策略
https://www.5axxw.com/wiki/content/ed8hqv

A comprehensive list of books on Software Architecture.
https://github.com/mhadidg/software-architecture-books
:octocat:GitHub最全的前端资源汇总仓库（包括前端学习、开发资源、数据结构与算法、开发工具、求职面试等）
www.kwgg2020.com
https://github.com/FrontEndGitHub/FrontEndGitHub

Java 虚拟机底层原理知识总结
https://github.com/doocs/jvm

Next-generation ORM for Node.js & TypeScript | PostgreSQL, MySQL, MariaDB, SQL Server & SQLite
www.prisma.io
https://github.com/prisma/prisma

Clone a voice in 5 seconds to generate arbitrary speech in real-time
https://github.com/CorentinJ/Real-Time-Voice-Cloning
https://gitee.com/azhao-1981/Real-Time-Voice-Cloning
git clone https://gitee.com/azhao-1981/Real-Time-Voice-Cloning.git
https://www.anaconda.com/
https://pytorch.org/get-started/locally/

https://github.com/Byron/gitoxide
An idiomatic, lean, fast & safe pure Rust implementation of Git

## 20210702

开发团队必备的 9 款 DevSecOps 工具
https://www.infoq.cn/article/g4macu1dho9g6siy6rcf
安全开发你必须使用的28个DevSecOps工具
https://www.q578.com/s-5-202981-0/
DevSecOps Best Practices
https://www.clouddefense.ai/blog/devsecops-best-practices
DevSecOps - Embedded Security With Omni-Speed DevOps
http://devops21ce.blogspot.com/2021/05/devsecops-embedded-security-with-omni-speed-DevOps.html

A command line tool that draw plots in the terminal.
https://github.com/red-data-tools/YouPlot

![](images/2021-07-02-14-19-43.png)

Set Up A Docker Container To Test Your Rails App
https://www.honeybadger.io/blog/testing-rails-with-docker/

[Containerd 的前世今生和保姆级入门教程](https://cloud.tencent.com/developer/article/1766288)

https://github.com/containerd/containerd

Kubernetes 
shim
Docker 
[Containerd](https://containerd.io/) 
CRI 

sudo apt-get update
sudo apt-get install libseccomp2

华为：

4.3	设置合理的目录权限，防止未授权访问，比如.git/.svn等目录	建议
"安装镜像后，使用漏扫工具扫描。
建议工具：securecat，可根据建议的权限检查和设置"

[secureCat扫描jetty](https://blog.csdn.net/MoYanHanHuiLengMa/article/details/103484568)

但这个好像没有 secureCat?

[SecureCAT扫描结果及分析报告](https://support.huawei.com/enterprise/zh/doc/EDOC1000099507/44c9cddb)

华为欧拉服务器操作系统软件 V2.0 安全说明手册 03

EulerOS SecureCAT Report.xlsm

[盘点：14款顶级开源情报工具合集](https://www.freebuf.com/sectool/279085.html)

[等保2.0测评之Nginx 中间件](https://www.freebuf.com/articles/system/277306.html)

sec g nginx
生成一个表
各种配置和含义，如
版本：最新安全版本

default 站点

check
nginx -v

不适用选项
a）应对登录的用户进行身份标识和鉴别，身份标识具有唯一性，身份鉴别信息具有复杂度要求并定期更换
b）应具有登录失败处理功能，应配置并启用结束会话、限制非法登录次数和当登录连接超时自动退出等相关措施
c）当进行远程管理时，应采取必要措施防止鉴别信息在网络传输过程中被窃听
d）应采用口令、密码技术、生物技术等两种或两种以上组合的鉴别技术对用户进行身份鉴别，且其中一种鉴别技术至少应使用密码技术来实现

https://zhuanlan.zhihu.com/p/271898581
等保2.0涉及的Apache Tomcat中间件（上）
