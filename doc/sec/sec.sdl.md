# SDL

## SDL to DevSecOps

随着传统开发流程向着DevOps的转变，SDL也需要把自己自动化的集成到DevOps当中去，形成新的 DevSecOps

[DevSecOps在百度的实践|不错，指导性](https://www.freebuf.com/articles/es/243902.html)

轻量级 SDL，即通过少量的人力投入，以高自动化、高 CI/CD 集成的方式解决业务产品的安全问题

CI/CD

持续集成 Continuous integration (CI) 
持续交付 continuous delivery (CD)

V1:
小规模安全评估
自动化安全测试
    白/黑/灰
问题：
无设计/流程不能全覆盖/测试发现，滞后/自动化与业务团队难结合/非常规漏洞无法发现

安全工具链
DAST
分布式Web漏洞扫描服务建设实践系列——扫描架构演进及要点问题解决实践
https://mp.weixin.qq.com/s?__biz=MzA4ODc0MTIwMw==&mid=2652531101&idx=1&sn=09ade3ffb3b148985e2509fd664bd69a&scene=19#wechat_redirect
分布式Web漏洞扫描服务建设实践—衡量指标及解决实践（2）
https://mp.weixin.qq.com/s?__biz=MzA4ODc0MTIwMw==&mid=2652531546&idx=1&sn=12da69ce64f4d711f57ed0b1ef22e72a&scene=19#wechat_redirect
SAST
企业级自动化代码安全扫描实战
https://mp.weixin.qq.com/s?__biz=MzA4ODc0MTIwMw==&mid=2652531662&idx=1&sn=db0b96575e3dac4ace71d9dc0e0e7790&scene=19#wechat_redirect
构建企业级研发安全编码规范
https://mp.weixin.qq.com/s?__biz=MzA4ODc0MTIwMw==&mid=2652532493&idx=1&sn=02085d7843cb7c6aaca63f8ab21ca8bb&chksm=8bcb4b31bcbcc227b3e03271bd4e6f9fa7f1fc3d9372a1cacecc045708a7d5b569feafcffd50&mpshare=1&scene=1&srcid=&sharer_sharetime=1592905100919&sharer_shareid=d419a90a0c706aa913b83cca14367d95&key=65fe14863667915b6fd531b95b293e3a4474739b3b2a47eacec4507e72cc1ff564fb4547d1f71d2e412fa08628b83cf1f56ff91b89096a6aa3188bac4fd704184ddf3115cd96ac876d9f429241d5e966&ascene=1&uin=MTEyMzI4MTY2MQ%3D%3D&devicetype=Windows+7+x64&version=62090070&lang=zh_CN&exportkey=AXBLH5zeszM94XpKR3%2FrbOU%3D&pass_ticket=XQ54%2BzeTOfqbXd52ejfD6iczeK%2BQc%2B4SziBACTuGeqPtpphgRO1ewNSbU%2BprTuzc
IAST/FAST
灰盒自动化漏洞挖掘实践
https://mp.weixin.qq.com/s?__biz=MzA4ODc0MTIwMw==&mid=2652531544&idx=1&sn=871dc6f5ebae0f74cfe01a66f17e7d8e&scene=19#wechat_redirect
RASP
开源应用运行时自我保护解决方案 - OpenRASP
https://rasp.baidu.com/

研发工程规范性模型
    产品研发各个阶段的规范和措施的完成度量化为分数
    以产品和代码仓库的维度进行统计和公示，并在公司层面建立了工程规范性评分基准线

SonarQube集成DependencyCheck
https://bloodzer0.github.io/ossa/other-security-branch/devsecops/sdc/

Linux应用容器部署安全保障需求
[Security Assurance Requirements for Linux Application Container Deployments](https://csrc.nist.gov/publications/detail/nistir/8176/final)

DevSecOps 和 DevOps 有什么区别 ?
https://www.redhat.com/zh/topics/devops/what-is-devsecops

从SDL到DevSecOps：始终贯穿开发生命周期的安全
https://www.freebuf.com/vuls/240074.html


从SDL到DevSecOps：始终贯穿开发生命周期的安全
https://www.anquanke.com/post/id/208353

《2020 DevSecOps 企业实践白皮书》发布
https://www.freebuf.com/articles/243414.html

https://www.anquanke.com/post/id/227590
从软件研发管理角度理解开发安全中的SDL和DevSecOps
https://nosec.org/home/detail/4639.html
从软件研发管理角度理解开发安全中的SDL和DevSecOps

使用Anchore Engine来完善DevSecOps工具链|容器？
https://www.freebuf.com/articles/es/239266.html
Anchore Engine的功能之一是可以基于CVE数据来对容器镜像进行漏洞扫描

DevSecOps建设之白盒篇
https://www.freebuf.com/articles/es/259762.html

浅谈如何有效落地DevSecOps
https://www.freebuf.com/articles/security-management/264610.html


某在线教育devsecops实践分享
https://www.freebuf.com/articles/es/269648.html

企业建设DevSecOps流程梳理
https://www.anquanke.com/post/id/240752

根据之前在SDL建设和devsecops建设中的经验，设计问答形式的表格，让研发填写长篇大论，往往会造成更多的沟通成本，这往往是安全需求评审阻碍devsecops建设的一大瓶颈。
因此，应当更多的让研发做选择题，并通过选择题，让部分需求评审能够自动化（不要指望完全自动化）。