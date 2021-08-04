# sql 注入

## 内容
做为 [OWASP TOP10-A1](https://owasp.org/www-project-top-ten/2017/A1_2017-Injection) 第一个介绍的漏洞风险，特别需要我们关注。

是什么
    所谓SQL注入，就是通过把SQL命令插入到Web表单提交或输入域名或页面请求的查询字符串，最终达到欺骗服务器执行恶意的SQL命令。
产生原因
    - 一个是没有对输入的数据进行过滤（过滤输入）
    - 二是没有对发送到数据库的数据进行转义（转义输出）
发现漏洞(测试)
    手动
        万能钥匙
        https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05-Testing_for_SQL_Injection.html
    工具扫描 sqlmap
        sqlmap -u http://xxxx/?username=xxx
    代码静态扫描
        soanrqube
        fortify
    代码评审
如何防御
    预编译
        使用参数化查询（PreparedStatement），避免将未经过滤的输入直接拼接到SQL查询语句中。
    入参过滤
        对用户输入的特殊字符进行严格过滤，如’、”、<、>、/、*、;、+、-、&、|、(、)、and、or、select、union。
        替换和过滤
        OWASP 组件
    嵌入式应用层防火墙RASP
        嵌入spring boot
        嵌入 容器Tomcat 或 jetty
    [WAF 开源 waf](/doc/sec/sec.arch.oswaf.md)
攻防实验室
    靶场
    [metasploitable2](https://docs.rapid7.com/metasploit/metasploitable-2/)
    [metasploitable2-手册](https://docs.rapid7.com/metasploit/metasploitable-2-exploitability-guide)
    [下载地址](https://sourceforge.net/projects/metasploitable/files/Metasploitable2/)
    msfadmin:msfadmin
    vbox ->管理->虚拟介质管理->注册,把解压的 VMware 虚拟盘文件注册到vbox
    vbox ->新建虚拟机->linux -> 使用现有介质,选择上面的介质
    vbox -> metasploitable虚拟机 -> 设置 -> 网络 -> 添加网卡 仅主机 (host only)

    sudo dbclient
    sudo ifconfig eth1 up

    http://192.168.56.116/dvwa
    user: admin
    password: password

    [python](/dev/python/python.install.md)

    [sqlmap](/doc/sec/sec.scan.sqlmap.md)

    [burp suite ce](https://portswigger.net/burp/communitydownload)

    java

    [Amazon Corretto | 开放 Java 开发工具包 (OpenJDK) 的免费、多平台、生产就绪型发行版 | 推荐](https://aws.amazon.com/cn/corretto/)

    最简单的例子
    1 万能“钥匙” `11' or '1'='1`
    ![](images/2021-08-03-14-15-23.png)

防御
    java SQL预编译
    java 组件过滤
    引入RASp
    引入开源WAF

加固:
    Web应用中用于连接数据库的用户与数据库的系统管理员用户的权限有严格的区分（如不能执行drop等），
    并设置Web应用中用于连接数据库的用户不允许操作其他数据库。
    设置Web应用中用于连接数据库的用户对Web目录不允许有写权限。

## 发现、测试和工具

[高级的MSSQL注入技巧](https://xz.aliyun.com/t/8513)
[数据库：从注入到提权的全家桶套餐](https://www.freebuf.com/articles/database/270106.html)
[Mssql手工注入执行命令小记](https://www.anquanke.com/post/id/237031)
[SQL注入漏洞详解](https://www.anquanke.com/post/id/235970)
[梨子带你刷burpsuite官方网络安全学院靶场(练兵场)系列之服务器端漏洞篇 - Sql注入专题](https://www.anquanke.com/post/id/245532)

### [SQLmap](./sec.scan.sqlmap.md)

## 高级hack技术 上有对策,下有绕过

[记一次Fuzz绕WAF实现SQL 注入](https://www.freebuf.com/articles/web/274492.html)

[SQL注入一些过滤及绕过总结](https://blog.csdn.net/devil8123665/article/details/108746947)

1.绕过空格（注释符/* */，%a0）：
9.绕过union，select，where等：
U/**/NION/**/SE/**/LECT/**/user，pwd from user

## 处理 最佳实践

https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html

Option 1: Use of Prepared Statements (with Parameterized Queries) 使用**预处理**语句(使用参数化查询)
Option 2: Use of Stored Procedures 使用**存储过程**
Option 3: Allow-list Input Validation 白名单列表输入验证 (输入白名单)
Option 4: Escaping All User Supplied Input 转义所有用户输入 (输入转义) https://owasp.org/www-project-enterprise-security-api/
    https://github.com/ESAPI/esapi-java
    https://mvnrepository.com/artifact/org.owasp.esapi/esapi
Also: Enforcing Least Privilege 强制最小权限
Also: Performing Allow-list Input Validation as a Secondary Defense 执行允许列表输入验证作为辅助防御


[MySQL 存储过程](https://www.runoob.com/w3cnote/mysql-stored-procedure.html)

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
有漏洞的java的例子
Set Up the Exploitable Java Application
git clone https://github.com/gauravkohli/sqlinjection.git

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

## Ruby 代码审计

Where(" name = #{name} ")

https://rails-sqli.org/
https://www.stackhawk.com/blog/sql-injection-prevention-rails/

## golang 代码审计

https://astaxie.gitbooks.io/build-web-application-with-golang/content/en/09.4.html
https://stackoverflow.com/questions/26345318/how-can-i-prevent-sql-injection-attacks-in-go-while-using-database-sql
https://www.calhoun.io/what-is-sql-injection-and-how-do-i-avoid-it-in-go/

## java 代码审计

[Mybatis框架下SQL注入审计分析](https://www.freebuf.com/vuls/240578.html)

[Java安全编码之SQL注入](https://www.freebuf.com/articles/web/245851.html)

[某租车系统Java代码审计之后台注入漏洞分析](https://www.freebuf.com/vuls/238175.html)

## 参考

[新手入门：显错型SQL注入](https://www.freebuf.com/vuls/237550.html)

[减轻对旧版Web应用程序的SQL注入攻击|过期,SQLBlock已经不在了](https://www.anquanke.com/post/id/209772)

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

Nacos

https://github.com/alibaba/nacos/issues/3382

Yes, it is. But I think we have pre-check for the tenant and namesapceId, it can't include special characters except -,_.

and use PrepareStatement is better
https://github.com/alibaba/nacos/pull/3393/files/8d9ac590f0bbeac74eadcb29e64da4e80b8eedb8

```java
// String sql = " SELECT COUNT(ID) FROM config_info where tenant_id like '" + tenant + "'";
String sql = " SELECT COUNT(ID) FROM config_info where tenant_id like ?";
Integer result = databaseOperate.queryOne(sql, new Object[] {tenant}, Integer.class);
```

https://github.com/alibaba/nacos/pull/3393

config/src/main/java/com/alibaba/nacos/config/server/service/repository/embedded/EmbeddedStoragePersistServiceImpl.java

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

[Blind SQL Injection](https://owasp.org/www-community/attacks/Blind_SQL_Injection)

https://resources.infosecinstitute.com/topic/dumping-a-database-using-sql-injection/

利用WebSocket接口中转注入渗透实战
https://www.freebuf.com/articles/web/281451.html