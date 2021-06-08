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

+ [ ] OWASP API Security Top 10 2019
  + [ ] 对象越权 Broken Object level authorization
    + [ ] 改变参数中的id 为权限外的id，看是否调用成功
    + [ ] 避免使用特有的资源 id。使用 /me/orders 替代 /user/654321/orders。
    + [ ] 使用 UUID 代替自增长的 id。
  + [ ] 签名漏洞 Broken Authentication
    + [ ] 重放
    + [ ] 过期时间
    + [ ] 不要使用 Basic Auth，用 JWT，OAuth
      + [ ] JWT: 使用随机复杂的密钥（JWT Secret）以增加暴力破解的难度。
      + [ ] JWT: 不要在请求体中直接提取数据，要对数据进行加密（HS256 或 RS256）。
      + [ ] JWT: 使 token 的过期时间尽量的短（TTL，RTTL）。
      + [ ] JWT: 不要在 JWT 的请求体中存放敏感数据，因为它是可解码的。
      + [ ] OAUTH: 始终在后台验证 redirect_uri，只允许白名单的 URL。
      + [ ] OAUTH: 始终在授权时使用有效期较短的授权码（code）而不是令牌（access_token）（不允许 response_type=token）。
      + [ ] OAUTH: 使用随机哈希数的 state 参数来防止跨站请求伪造（CSRF）。
      + [ ] OAUTH: 对不同的应用分别定义默认的作用域和各自有效的作用域参数。
    + [ ] 限制密码错误尝试次数，并且增加账号冻结功能.
    + [ ] 检查是否所有的接口都包含必要都身份认证，以避免被破坏了的认证体系。(无后门接口)
  + [ ] 冗余敏感数据   Exessive Data Exposure
    + [ ] 返回中是否有
    + [ ] 加密所有的敏感数据.
    + [ ]  不要在 URL 中使用任何敏感的数据（credentials，Passwords，security tokens，or API keys），而是使用标准的认证请求头。
    + [ ] 不要返回敏感的数据，如 credentials，Passwords，security tokens。
  + [ ] 缺乏资源和调用频率限制 Lack of Resource and rate limitting
    + [ ]  限制流量来防止 DDoS 攻击和暴力攻击。
    + [ ]   使用一个 API Gateway 服务来启用缓存、限制访问速率（如 Quota，Spike Arrest，Concurrent Rate Limit）以及动态地部署 APIs resources。
  + [ ] 功能越权 Broken Function leve authoriztion
    + [ ] 调用权限外的接口，是否调用成功
    + [ ] 使用与操作相符的 HTTP 操作函数，GET（读取)，POST（创建），PUT（替换/更新） 以及 DELETE（删除记录），如果请求的方法不适用于请求的资源则返回 405 Method Not Allowed。
  + [ ] 批量修改缺乏限制 Mass Assignment
    + [ ] 批量修改中加入权限外的id
    + [ ] 大数据修改中加入非显示权限，如修改用户数据中，加入角色修改
    + [ ]  如果数据处理量很大，尽可能使用队列或者 Workers 在后台处理来避免阻塞请求，从而快速响应客户端。
  + [ ] Security Misconfingure 
    + [ ] headers
    + [ ] cors 跨域设置
    + [ ] 在服务端使用 HTTPS 协议来防止 MITM （中间人攻击）。
    + [ ] 使用 HSTS 协议防止 SSL Strip 攻击。
    + [ ] 在请求头中的 content-type 字段使用内容验证来只允许支持的格式（如 application/xml，application/json 等等）并在不满足条件的时候返回 406 Not Acceptable。
    + [ ] 验证 content-type 中申明的编码和你收到正文编码一致（如 application/x-www-form-urlencoded，multipart/form-data，application/json 等等）。
    + [ ]  增加请求返回头 X-Content-Type-Options: nosniff。
    + [ ] 增加请求返回头 X-Frame-Options: deny。
    + [ ] 增加请求返回头 Content-Security-Policy: default-src 'none'。
    + [ ] 删除请求返回中的指纹头 - X-Powered-By，Server，X-AspNet-Version 等等。
    + [ ] 在响应中遵循请求的 content-type，如果你的请求类型是 application/json 那么你返回的 content-type 就是 application/json。
    + [ ] 给请求返回使用合理的 HTTP 响应代码。（如 200 OK，400 Bad Request，401 Unauthorized，405 Method Not Allowed 等等）。
  + [ ] Injection
    + [ ] xss
    + [ ] sql 注入
    + [ ] 远程代码执行
    + [ ] 如果需要解析 XML 文件，确保实体解析（entity parsing）是关闭的以避免 XXE 攻击。
    + [ ] 如果需要解析 XML 文件，确保实体扩展（entity expansion）是关闭的以避免通过指数实体扩展攻击实现的 Billion Laughs/XML bomb。
    + [ ]  在文件上传中使用 CDN。？
  + [ ] Imporer Asset Management
    + [ ] 是否有老的文档和接口
  + [ ] Insuffusion Logging and Monitting
    + [ ] 是否加入日志和监控
    + [ ] 是否有错误登录和调用的监控指标
    + [ ]  不要忘了把 DEBUG 模式关掉。
  + [ ]  持续集成和持续部署
    + [ ] 使用单元测试以及集成测试的覆盖率来保障你的设计和实现。
    + [ ] 引入代码审查流程，禁止私自合并代码。
    + [ ] 在推送到生产环境之前确保服务的所有组件都用杀毒软件静态地扫描过，包括第三方库和其它依赖。
    + [ ] 为部署设计一个回滚方案。

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