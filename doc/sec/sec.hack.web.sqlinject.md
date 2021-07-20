# sql 注入

风险分析：所谓SQL注入，就是通过把SQL命令插入到Web表单提交或输入域名或页面请求的查询字符串，最终达到欺骗服务器执行恶意的SQL命令。
具体来说，它是利用现有应用程序，将（恶意）SQL命令注入到后台数据库引擎执行的能力，它可以通过在Web表单中输入（恶意）SQL语句得到一个存在安全漏洞的网站上的数据库，而不是按照设计者意图去执行SQL语句。 

造成SQL注入漏洞原因有两个：一个是没有对输入的数据进行过滤（过滤输入），还有一个是没有对发送到数据库的数据进行转义（转义输出）。

修复方案：SQL注入的主要原因是程序没有严格过滤用户输入的数据，导致非法数据侵入系统。
对用户输入的特殊字符进行严格过滤，如’、”、<、>、/、*、;、+、-、&、|、(、)、and、or、select、union。
使用参数化查询（PreparedStatement），避免将未经过滤的输入直接拼接到SQL查询语句中。

Web应用中用于连接数据库的用户与数据库的系统管理员用户的权限有严格的区分（如不能执行drop等），
并设置Web应用中用于连接数据库的用户不允许操作其他数据库。
设置Web应用中用于连接数据库的用户对Web目录不允许有写权限。

## 处理 最佳实践

１ 使用 预编译，不自己拼接


使用Filter过滤器解决XSS跨脚本攻击和SQL注入问题
https://segmentfault.com/a/1190000039088447
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

Java SQL 注入学习笔记
https://b1ngz.github.io/java-sql-injection-note/
Mybatis
因此 #{} 可以有效防止 SQL 注入，详细可参考 http://www.mybatis.org/mybatis-3/sqlmap-xml.html String Substitution 部分
而使用 ${} 语法时，MyBatis 会直接注入原始字符串，即相当于拼接字符串，因而会导致 SQL 注入，如

https://sec.okta.com/articles/2020/12/sql-injection-java-practices-avoid
SQL Injection in Java: Practices to Avoid

Java anti-SQL injection Filter (Interceptor) code
https://topic.alibabacloud.com/a/java-anti-sql-injection-filter-interceptor-code_1_27_30008276.html
sqlInjectStrList
             <param-value>‘|or|and|;|-|--|+|,|like|//|/|*|%|#</param-value>
doFilter

SQL盲注、SQL注入 - SpringBoot配置SQL注入过滤器
https://www.cnblogs.com/cao-lei/p/13691468.html

private Pattern sqlPattern = Pattern.compile(
			"(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)",

			Pattern.CASE_INSENSITIVE);

mybatis注解动态sql注入map和list（防sql注入攻击）
https://blog.csdn.net/daodfs111/article/details/105630711

## 上有对策,下有绕过

SQL注入一些过滤及绕过总结
https://blog.csdn.net/devil8123665/article/details/108746947
1.绕过空格（注释符/* */，%a0）：
9.绕过union，select，where等：
U/**/NION/**/SE/**/LECT/**/user，pwd from user



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