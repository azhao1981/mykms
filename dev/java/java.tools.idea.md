
## idea + short key

打开文件 ctrl+shift +N

选中单词下一个 ctrl+F3

## idea + spring

[Spring Boot 中文乱码问题解决方案汇总](https://developer.aliyun.com/article/627073)

## idea 插件

Mac：IntelliJ IDEA -> Preferences -> Plugins;

Windows：File -> Settings -> Plugins.

[详述 IntelliJ IDEA 插件的安装及使用方法](https://blog.csdn.net/qq_35246620/article/details/78289074)

[IntelliJ IDEA 常用插件一览，让效率成为习惯](https://juejin.im/entry/6844903769025560590)

[值得推荐的Idea十几大优秀插件](https://blog.csdn.net/win7system/article/details/83508313)

## find-sec-bugs

[IDEA2020.2.3以上的版本没有spring iniatlari或者spring assiant的解决方法](https://blog.csdn.net/weixin_45059961/article/details/121006813)

github: https://github.com/eltonsandre/intellij-spring-assistant/tree/main/dist 下载。

idea spring assistant create failed 404
使用这个：
阿里巴巴发布了Spring的国内脚手架定制版AliyunJavaInitializer
http://www.manyanu.com/new/8fe96cbf72fe4d76a518a0e5885acc4f
插件 Aliyun Cloud Toolkit

[IntelliJ IDEA使用Spring Assistant创建Spring Boot项目时提示无法连接https://start.spring.io的解决方法](https://blog.csdn.net/Mister_Yu/article/details/107319961)

已测，不错：
当然，更简单的做法是新建项目，在New Project - Spring Assistant中将Spring Initializr server选择为Custom，
并输入 `https://start.aliyun.com` 。
不行，unknown

## find-sec-bugs

https://find-sec-bugs.github.io/ 官方已经说明 `The SpotBugs plugin for security audits of Java web applications.`

安装：

1. File/settings/plugins 市场搜索 SpotBugs
如果安全不上，可以多安装几次


2. files/settings/tools/spotbugs, 点击 +

![](2021-06-25-00-19-52.png)

参考： [安装 find-sec-bugs](https://github.com/find-sec-bugs/find-sec-bugs/wiki/IntelliJ-Tutorial)

扫描：

![](2021-06-25-00-22-54.png)


[java代码审计手书(一）](https://xz.aliyun.com/t/3358)
[java代码审计手书(二）](https://xz.aliyun.com/t/3372)
[java代码审计手书(三）](https://xz.aliyun.com/t/3416)
[java代码审计手书(四）](https://xz.aliyun.com/t/3460)
findBug 错误修改指南
https://www.cnblogs.com/java-zone/articles/3118592.html

## alibaba

https://github.com/alibaba/p3c

File/settings/plugins 市场搜索 alibaba

https://plugins.jetbrains.com/plugin/10046-alibaba-java-coding-guidelines

使用： tools 阿里编程规范 扫描

## port

application.properties
server.address=0.0.0.0


## mysql 

spring web
spring boot dev tools

spring dat jpa
mysql drvier

```yaml
spring.datasource.url = "jdbc:mysql//localhost:3060/db_name?useSSL=false"
spring.datasource.username = "root"
spring.datasource.password = "password"

spring.jpa.properties.hibernate.dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
spring.jpa.hibernate.ddl-auto = update
```
