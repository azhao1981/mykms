# 函数计算最佳实践

## 通用工具

https://www.serverless-devs.com/
https://github.com/Serverless-Devs

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

