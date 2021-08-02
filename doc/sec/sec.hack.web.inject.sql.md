# sql 注入

## 概述

做为 [OWASP TOP10-A1](https://owasp.org/www-project-top-ten/2017/A1_2017-Injection) 第一个介绍的漏洞风险，特别需要我们关注。

所谓SQL注入，就是通过把SQL命令插入到Web表单提交或输入域名或页面请求的查询字符串，最终达到欺骗服务器执行恶意的SQL命令。

具体来说，它是利用现有应用程序，将（恶意）SQL命令注入到后台数据库引擎执行的能力，它可以通过在Web表单中输入（恶意）SQL语句得到一个存在安全漏洞的网站上的数据库，而不是按照设计者意图去执行SQL语句。 

原因：

- 一个是没有对输入的数据进行过滤（过滤输入）
- 二是没有对发送到数据库的数据进行转义（转义输出）

修复方案：SQL注入的主要原因是程序没有严格过滤用户输入的数据，导致非法数据侵入系统。
对用户输入的特殊字符进行严格过滤，如’、”、<、>、/、*、;、+、-、&、|、(、)、and、or、select、union。
使用参数化查询（PreparedStatement），避免将未经过滤的输入直接拼接到SQL查询语句中。

Web应用中用于连接数据库的用户与数据库的系统管理员用户的权限有严格的区分（如不能执行drop等），
并设置Web应用中用于连接数据库的用户不允许操作其他数据库。
设置Web应用中用于连接数据库的用户对Web目录不允许有写权限。

## 发现、测试和工具

[高级的MSSQL注入技巧](https://xz.aliyun.com/t/8513)
[数据库：从注入到提权的全家桶套餐](https://www.freebuf.com/articles/database/270106.html)
[Mssql手工注入执行命令小记](https://www.anquanke.com/post/id/237031)
[SQL注入漏洞详解](https://www.anquanke.com/post/id/235970)
[梨子带你刷burpsuite官方网络安全学院靶场(练兵场)系列之服务器端漏洞篇 - Sql注入专题](https://www.anquanke.com/post/id/245532)

1 万能“钥匙” `' or '1'='1`

### [SQLmap](./sec.scan.sqlmap.md)

### 上有对策,下有绕过

[记一次Fuzz绕WAF实现SQL 注入](https://www.freebuf.com/articles/web/274492.html)

[SQL注入一些过滤及绕过总结](https://blog.csdn.net/devil8123665/article/details/108746947)

1.绕过空格（注释符/* */，%a0）：
9.绕过union，select，where等：
U/**/NION/**/SE/**/LECT/**/user，pwd from user

## 处理 最佳实践

1. 使用 预编译，不自己拼接
2. 使用入参过滤替换函数

[使用Filter过滤器解决XSS跨脚本攻击和SQL注入问题](https://segmentfault.com/a/1190000039088447)

这个比较合理,替换一些关键的字符
```java
escapeXSS(String value){
   if (value == null || value.isEmpty()) {
       return value;
   }
   value = StringEscapeUtils.escapeXml(value);
   value = StringEscapeUtils.escapeJavaScript(value);
   value = StringEscapeUtils.escapeSql(value);
   value = value.replaceAll("<", "＜");
   value = value.replaceAll(">", "＞");
   value = value.replaceAll("'", "＇");
   value = value.replaceAll(";", "﹔");
   value = value.replaceAll("&", "＆");
   value = value.replaceAll("%", "﹪");
   value = value.replaceAll("#", "＃");
   value = value.replaceAll("sleep", " ");
   value = value.replaceAll("select", "select");// "c"→"ᴄ"
```

[Java SQL 注入学习笔记](https://b1ngz.github.io/java-sql-injection-note/)

Mybatis

因此 #{} 可以有效防止 SQL 注入，详细可参考 http://www.mybatis.org/mybatis-3/sqlmap-xml.html String Substitution 部分
而使用 ${} 语法时，MyBatis 会直接注入原始字符串，即相当于拼接字符串，因而会导致 SQL 注入，如

[SQL Injection in Java: Practices to Avoid](https://sec.okta.com/articles/2020/12/sql-injection-java-practices-avoid)

[Java anti-SQL injection Filter (Interceptor) code](https://topic.alibabacloud.com/a/java-anti-sql-injection-filter-interceptor-code_1_27_30008276.html)

sqlInjectStrList
             <param-value>‘|or|and|;|-|--|+|,|like|//|/|*|%|#</param-value>
doFilter

[SQL盲注、SQL注入 - SpringBoot配置SQL注入过滤器](https://www.cnblogs.com/cao-lei/p/13691468.html)

private Pattern sqlPattern = Pattern.compile(
			"(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)",

			Pattern.CASE_INSENSITIVE);

mybatis注解动态sql注入map和list（防sql注入攻击）
https://blog.csdn.net/daodfs111/article/details/105630711

## 过滤

在必须自己拼sql的时候，需要对他进行过滤

过滤集合
组件
Nacos是怎么作过滤的？或阿里的开源产生是怎么做的

https://github.com/alibaba/nacos/issues/3382

Yes, it is. But I think we have pre-check for the tenant and namesapceId, it can't include special characters except -,_.

and use PrepareStatement is better
https://github.com/alibaba/nacos/pull/3393/files/8d9ac590f0bbeac74eadcb29e64da4e80b8eedb8

```java
String sql = " SELECT COUNT(ID) FROM config_info where tenant_id like ?";
Integer result = databaseOperate.queryOne(sql, new Object[] {tenant}, Integer.class);
```

https://github.com/alibaba/nacos/pull/3393

config/src/main/java/com/alibaba/nacos/config/server/service/repository/embedded/EmbeddedStoragePersistServiceImpl.java

一些常见的，如
这可能是史上功能最全的Java权限认证框架！目前已集成——登录认证、权限认证、分布式Session会话、微服务网关鉴权、单点登录、OAuth2.0、踢人下线、Redis集成、前后台分离、记住我模式、模拟他人账号、临时身份切换、账号封禁、多账号认证体系、注解式鉴权、路由拦截式鉴权、花式token生成、自动续签、同端互斥登录、会话治理、密码加密、jwt集成、Spring集成、WebFlux集成...
https://github.com/dromara/Sa-Token

又是怎么做到的。

[Mybatis框架下SQL注入审计分析](https://www.freebuf.com/vuls/240578.html)

[Java安全编码之SQL注入](https://www.freebuf.com/articles/web/245851.html)

[某租车系统Java代码审计之后台注入漏洞分析](https://www.freebuf.com/vuls/238175.html)

[新手入门：显错型SQL注入](https://www.freebuf.com/vuls/237550.html)

[减轻对旧版Web应用程序的SQL注入攻击](https://www.anquanke.com/post/id/209772)

[Java命令注入原理并结合Java Instrument技术](https://www.freebuf.com/articles/web/236925.html)

[Java安全编码之sql注入](https://www.anquanke.com/post/id/212897)

## 漏洞实例
[Apache SkyWalking SQL注入漏洞（CVE-2020-9483）](http://www.nsfocus.net/vulndb/49473)
> 不影响，我们都是 8.0
[WordPress Email Subscribers & Newsletters SQL注入漏洞（CVE-2020-5768）](http://www.nsfocus.net/vulndb/49449)

[Mybatis 框架下 SQL 注入攻击的 3 种方式，真是防不胜防](https://segmentfault.com/a/1190000040272091)

2021年1月23日，蚂蚁安全非攻实验室 @fatansyC4t 向Apache官方报告了Apache Skywalking SQL注入与远程代码执行漏洞。2021年2月7日，阿里云应急响应中心监测到 Apache Skywalking 官方发布安全更新修复该漏洞。
漏洞详情：https://help.aliyun.com/noticelist/articleid/1060803348.html
详情
Apache SkyWalking是一款开源的应用性能监控系统，包括指标监控，分布式追踪，分布式系统性能诊断。Apache SkyWalking的某GraphQL功能存在SQL注入漏洞，攻击者可以构造恶意请求查询数据库敏感信息，或利用H2数据路特性进一步造成远程代码执行漏洞。阿里云应急响应中心提醒  Apache Skywalking 用户尽快采取安全措施阻止漏洞攻击。
​
修复建议
安全版本
Apache Skywalking < v8.4.0

安全建议
1、升级Apache Skywalking 到最新的 v8.4.0 版本。
2、将默认h2数据库替换为其它支持的数据库。

## NOSQL 注入

[CockpitCMS NoSQL注入漏洞分析](https://www.anquanke.com/post/id/241113)
[Nosqli：一款功能强大的NoSql注入命令行接口工具](https://www.freebuf.com/articles/database/256392.html)
[如何使用N1QLMap来利用N1QL注入漏洞并从Couchbase数据库中提取数据](https://www.freebuf.com/articles/database/257101.html)
[NOSQL注入|Rocket.Chat 远程命令执行漏洞分析](https://paper.seebug.org/1652/)
[Rocket.Chat 3.12.1 - NoSQL Injection to RCE (Unauthenticated) (2)](https://www.exploit-db.com/exploits/50108)
怎么注入NoSQL

## 相关

[命令注入](/doc/sec/sec.hack.web.inject.cmd.md)

[系统注入](/doc/sec/sec.hack.web.inject.sys.md)

Blind SQL Injection
https://owasp.org/www-community/attacks/Blind_SQL_Injection