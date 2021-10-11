# 函数计算最佳实践

[TOC]


## 通用工具 serverless-devs

https://www.serverless-devs.com/
https://github.com/Serverless-Devs

### 安装



```bash
npm install @serverless-devs/s -g
# windows
npm config get prefix
D:\ProgramData\nodejs\global


```
初始化项目：s init start-fc-http-python3
进入项目：cd start-fc-http-python3
部署项目：s deploy
触发项目：s invoke remote

一个oss模板

s init devsapp/dk-oss-unzip

模板包

https://github.com/Serverless-Devs/package-awesome


### 配置

命令行 https://github.com/Serverless-Devs/docs/blob/master/zh/command.md



# [Serverless Devs 2.0 全新发布，让 Serverless 应用开发更简单](https://segmentfault.com/a/1190000040694846)

- https://link.segmentfault.com/?url=https%3A%2F%2Fgithub.com%2FServerless-Devs%2FServerless-Devs)

- Serverless Desktop 桌面客户端

[https://serverlessdevs.resume.net.cn/zh-cn/desktop/index.html](https://link.segmentfault.com/?url=https%3A%2F%2Fserverlessdevs.resume.net.cn%2Fzh-cn%2Fdesktop%2Findex.html)

- Serverless 应用开发者套件

[http://serverless-dk.oss.devsapp.net/docs/tutorial-dk/intro/react](https://link.segmentfault.com/?url=http%3A%2F%2Fserverless-dk.oss.devsapp.net%2Fdocs%2Ftutorial-dk%2Fintro%2Freact)

- Serverless Devs CLI 

[https://serverlessdevs.resume.net.cn/zh-cn/cli/index.html](https://link.segmentfault.com/?url=https%3A%2F%2Fserverlessdevs.resume.net.cn%2Fzh-cn%2Fcli%2Findex.html)

- Serverless Hub 应用中心

[https://serverlesshub.resume.net.cn/#/hubs/special-view](https://link.segmentfault.com/?url=https%3A%2F%2Fserverlesshub.resume.net.cn%2F%23%2Fhubs%2Fspecial-view)

点击 **下方链接**，立即体验 Serverless Devs！

[https://github.com/Serverless-Devs/Serverless-Devs](https://link.segmentfault.com/?url=https%3A%2F%2Fgithub.com%2FServerless-Devs%2FServerless-Devs)

## 阿里云

如果您使用Funcraft工具管理资源，建议切换Serverless Devs工具管理。本文介绍如何将函数计算的相关资源从Funcraft工具迁移到Serverless Devs工具的不同组件的方式。

如何从Funcraft迁移到Serverless Devs

https://help.aliyun.com/document_detail/295924.html

### [为函数安装第三方依赖](https://help.aliyun.com/document_detail/74571.html)

1 [使用fun install安装第三方依赖](https://help.aliyun.com/document_detail/146967.htm)
[Aliyun Serverless VSCode Extension插件](https://help.aliyun.com/document_detail/126086.htm)

### [函数计算的正确使用姿势——OSS 触发器](https://developer.aliyun.com/article/699379)

### 函数计算的存储

问: 如果在函数计算里加一个 sqlite，那么写入数据后会怎么样？下次调用能否使用？是否会回收？

答: 不能，不是回收，而是调用时不在一个资源上

https://developer.aliyun.com/article/659763

该平台的 Serverless 性质意味着每次调用时，用户代码可以在不同的实例上运行。
这也意味着，函数不能依赖其本地文件系统来存储任何中间结果。
开发人员必须依赖其他云服务，如 对象存储服务，在各函数或调用之间共享处理的结果。
这不是理想做法，因为引入其他分布式服务将带来额外的开发成本，并增加代码的复杂性。

阿里函数计算 计费

0.0834GB-S
时间：2021-10-11 11:54:45运行时间：666.72ms消耗内存：57.09M调用分析

(666.72 / 1000.0) * (57.09/1024.0)

函数实例资源使用费用=函数实例计算力（GB）×执行时长（秒）×单价
函数实例计算力：函数实例计算力和分配内存大小成正比，为了简化计费模型，函数计算统一将计算力数值等同于内存大小（GB）。
执行时长：函数计算提供了预留和按量两种实例使用模式，两种模式的执行时长统计方式不同。更多信息，请参见实例规格及使用模式。