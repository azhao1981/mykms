# api 渗透测试

[awesome](https://github.com/arainho/awesome-api-security)

## 原理

[OWASP API Security Top 10](https://github.com/OWASP/API-Security)

https://owasp.org/www-project-api-security/

OADLF MCIAL
https://owasp.org/www-community/attacks/Credential_stuffing
https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html

## checklists

[中文checklists](https://github.com/shieldfy/API-Security-Checklist/blob/master/README-zh.md)

## 工具等

https://editor.swagger.io/
burpsuite
postman

## 用例

https://blog.securelayer7.net/api-penetration-testing-with-owasp-2017-test-cases/
Observe each parameter in every module of API, understand how the data is transferred from source to destination. 
Try to play with the parameter by tampering them.
1   观察API的每个模块中的每个参数，了解数据是如何从源传输到目标的。试着通过改变它们来改变参数。
Identify if the API has any authorization token if it is having then remove that authorization token and see application response. 
In some cases, if authorization is not implemented correctly then API might give you access to forbidden assets of application.
2 删除token或相关参数，看服务器响应，如果能正常响应，说明没有正确处理

Analyze and check each module with a different access level of user ex: admin, moderator, normal user.
3 分析和检查用户(管理员、版主、普通用户)不同访问级别的各个模块。
Check whether admin modules can be accessed via the restricted user.
4 检查管理员模块是否可以通过受限制的用户访问
Identify the parameters which may vulnerable to IDOR type vulnerabilities such as id=1234 and also look at the cookies for manipulating the Ids.
5 识别可能容易受到IDOR类型漏洞(如id=1234)攻击的参数，并查看操作id的cookie。
[Insecure direct object references (IDOR)](https://portswigger.net/web-security/access-control/idor)

Check injection vulnerabilities by inserting special characters in all parameters in a request and check the response from the server. 
If you find any stack traces then use the information for further exploitation.
6 通过在请求的所有参数中插入特殊字符来检查注入漏洞，并检查来自服务器的响应。
如果发现任何堆栈跟踪，则使用该信息进行进一步开发。

Insert greater than, less than (<,>) characters in all parameters and see response whether the application encoding them as > and <. If an application doesn’t escape any special characters then the application may be vulnerable to client-side attacks such as XSS (cross-site scripting).
7 在所有参数中插入大于、小于(<，>)字符，查看应用程序是否将它们编码为>和<。
如果应用程序没有转义任何特殊字符，那么该应用程序可能容易受到客户端攻击，如XSS(跨站点脚本)。

Modify the content-type server header for understanding the XML entity injection attack. Example: change content Application/JSON to application/XML and insert the XML entity payload to find the XML entity injection.
8 修改内容类型的服务器头以理解XML实体注入攻击。例如:将内容Application/JSON更改为Application/ XML，并插入XML实体有效负载以找到XML实体注入。


API Security Testing
https://medium.com/@SphericalDefense/api-security-testing-34c979687762
原则：
1. Inputs of an incorrect type must be rejected.
2. Inputs of an incorrect size must be rejected.
3. For a given input value, the API must provide the expected output.
4. Input values outside the expected domain must be rejected.
5. For a given user, the API must provide only the data that they are authorized to access.

## TODO_LIST

这个其实可以算在用例上
https://github.com/inonshk/31-days-of-API-Security-Tips
Testing a Ruby on Rails App & noticed an HTTP parameter containing a URL? 
Developers sometimes use "Kernel#open" function to access URLs == Game Over. Just send a pipe as the first character and then a shell command (Command Injection by design)


## 参考

gaboesquivel/Node.js Security Checklist
https://gist.github.com/gaboesquivel/0421d1550817ff1c88a3

https://cheatsheetseries.owasp.org/cheatsheets/GraphQL_Cheat_Sheet.html
https://github.com/sderosiaux/checklists

https://www.whiteoaksecurity.com/how-to-prepare-for-an-api-pentest-curl/

https://securityboulevard.com/2019/06/better-api-penetration-testing-with-postman-part-4/

培训
https://application.security/free/owasp-top-10-API

一个"漏洞" 例子
vAPI is Vulnerable Adversely Programmed Interface which is Self-Hostable PHP Interface that mimics OWASP API Top 10 scenarios in the means of Exercises.
https://github.com/roottusk/vapi

用BurpSuit的Brida自定义插件搞定加密签名算法	
https://cloud.tencent.com/developer/article/1652407