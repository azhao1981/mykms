# 验证和授权最佳实践

本文讨论多应用系统下的验证和授权控制的最佳实践

Authenticate 验证，回答是不是本系统用户问题

Authorize 授权，回答本系统用户U-1能不能使用模块M-1的问题

参考： [IEEE 安全设计模型](https://cybersecurity.ieee.org/blog/2016/06/02/design-best-practices-for-an-authentication-system/)

## authentication 验证

1. 能导出资源列表
2. 显示表明哪些是不需要验证就能访问的 whitelist
3. 默认应该是都需要验证的
4. filter 模式下必须手动开启 whitelist，并且应该有版本控制和操作日志
5. 不能被绕过或篡改
6. 使用或支持权威第三方认证
7. 敏感数据需要再次验证
8. 需要有不操作过期时间，如果业务需要，可以手动取消
9. 记录所有身份认证相关日志

常见现成验证标准：

Security Assertion Markup Language (SAML 美国安全断言标记语言协会)
    https://en.wikipedia.org/wiki/ Security_Assertion_Markup_Language
OpenID (http://openid.net/)
Kerberos https://en.wikipedia.org/wiki/Kerberos_(protocol)
Fast IDentity Online FIDO 在线快速身份认证
    (FIDO;https://fidoalliance.org/).

认证框架评估
1. 交换有效用户数据
2. 正确的会话管理 https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html
3. 双因素认证
4. cookie应该是httpOnly
5. csrf 保护
6. 支持 token-based 认证机制如 Oauth
7. 正常加密存储密码
8. 与权威第三方验证集成
9. 记录所有身份验证日志
10. 良好的安全响应，披露和修复记录
11. 永远不要暴露凭据明文。 用户界面，url，存储，日志都不要保存 “凭据” credentials
12. 凭据要足够复杂
13. 防暴力破解
14. 防会话固定攻击

## Authorize 授权

access control policy

授权 Authorize
+ 所有授权的检查和阻断都必须在服务器端
+ 应该使用应用程序术语来描述 授权，而不是http请求，如 grant joe url1 get,正确： grant joe 员工管理 (查看，修改)
+ 以角色为基础访问控制 如 cancan
+ 基于属性的授权
  + 动态角色映射
  + 动态用户属性
+ 集中授权
+ adaptive 自适应授权，转账等操作，需要再次时实确认

授权框架评估
+ 支持基于供应者的模型，允许你配置可选授权和角色映射的 供应者
+ 支持授权委托和角色映射供应器，允许一个请求中匹配多个类型的策略
+ 支持动态角色评估，在权限变更后应实时响应
+ 支持权限列表查询，能查询用户x是否能访问资源y，和资源y能被谁访问
+ 不要只提供http来修改权限
+ 为所有组件提供PEP
+ 可伸缩和低延迟

严格分离数据和控制指令
永远不执行不可信来源的控制指令

xss
  只使用 html 标记/模板系统生成编码后的html

sql injection
command injection
序列化和反序列化
不安全反射  reflection

https://swoopnow.com/web-application-authentication-best-practices/
Create a web application authentication checklist. 创建一个 web 应用程序认证检查表
Explore various web application authentication methods. 探索各种 web 应用程序认证方法
Store sensitive data separate from regular data. 将敏感数据与常规数据分开存储
    3 Restricted data. 限制数据。 基本上只有在需要知道时被告之
    sensitive information that could put the company and its users at a high risk.
    This information should be made available on a need-to-know basic.
    2 confidential data. 机密数据
    information that is still sensitive but a larger group of the business needs access to the data.
    1 public data 公共数据
    Non-sensitive data that everyone in the business and sometimes the public has access to.
Test your process with low-privileged accounts. 使用低特权帐户测试您的流程
Use a firewall to boost your web application authentication. 使用防火墙来提高你的 web 应用程序认证

https://apifriends.com/api-security/api-authentication-best-practices/

https://www.cqlcorp.com/insights/best-practices-for-securing-your-rest-api-authentication-options/

[服务治理最佳实践：如何快速依据请求参数值进行服务路由、鉴权、限流？](https://www.jianshu.com/p/fea1ba609edc)
[微服务之用户鉴权中心](https://zhuanlan.zhihu.com/p/107814066)
[微服务认证鉴权与API权限控制](http://www.mobabel.net/%E6%80%BB%E7%BB%93%E5%BE%AE%E6%9C%8D%E5%8A%A1%E8%AE%A4%E8%AF%81%E9%89%B4%E6%9D%83%E4%B8%8Eapi%E6%9D%83%E9%99%90%E6%8E%A7%E5%88%B6/)
https://cloud.google.com/blog/products/gcp/12-best-practices-for-user-account
https://techblog.bozho.net/user-authentication-best-practices-checklist/

Store passwords with bcrypt/scrypt/PBKDF2. No MD5 or SHA, as they are not good for password storing. Long salt (per user) is mandatory (the aforementioned algorithms have it built in). If you don’t and someone gets hold of your database, they’ll be able to extract the passwords of all your users. And then try these passwords on other websites.
Use HTTPS. Period. (Otherwise user credentials can leak through unprotected networks). Force HTTPS if user opens a plain-text version. And make sure you use only the latest protocol (TLS 1.2 at the moment; TLS 1.1 doesn’t seem to have vulnerabilities, so it can also be supported). You can do a Qualys Scan to check whether your supported protocol versions are OK.
Mark cookies as secure. Makes cookie theft harder.
Use CSRF protection (e.g. CSRF one-time tokens that are verified with each request). Frameworks have such functionality built-in.
Disallow framing (X-Frame-Options: DENY). Otherwise your website may be included in another website in a hidden iframe and “abused” through javascript.
Have a same-origin policy
Logout – let your users logout by deleting all cookies and invalidating the session. This makes usage of shared computers safer (yes, users should ideally use private browsing sessions, but not all of them are that savvy)
Session expiry – don’t have forever-lasting sessions. If the user closes your website, their session should expire after a while. “A while” may still be a big number depending on the service provided. For ajax-heavy website you can have regular ajax-polling that keeps the session alive while the page stays open.
Remember me – implementing “remember me” (on this machine) functionality is actually hard due to the risks of a stolen persistent cookie. Spring-security uses this approach, which I think should be followed if you wish to implement more persistent logins.
Forgotten password flow – the forgotten password flow should rely on sending a one-time (or expiring) link to the user and asking for a new password when it’s opened. 0Auth explain it in this post and Postmark gives some best pracitces. How the link is formed is a separate discussion and there are several approaches. Store a password-reset token in the user profile table and then send it as parameter in the link. Or do not store anything in the database, but send a few params: userId:expiresTimestamp:hmac(userId+expiresTimestamp). That way you have expiring links (rather than one-time links). The HMAC relies on a secret key, so the links can’t be spoofed. It seems, however, that there’s no consensus on this topic, as the OWASP guide has a bit different approach
One-time login links – this is an option used by Slack, which sends one-time login links instead of asking users for passwords. It relies on the fact that your email is well guarded and you have access to it all the time. If your service is not accessed to often, you can have that approach instead of (rather than in addition to) passwords.
Limit login attempts – brute-force through a web UI should not be possible; therefore you should block login attempts if they become too many. One approach is to just block them based on IP. The other one is to block them based on account attempted. (Spring example here). Which one is better – I don’t know. Both can actually be combined. Instead of fully blocking the attempts, you may add a captcha after, say, the 5th attempt. But don’t add the captcha for the first attempt – it is bad user experience.
Don’t leak information through error messages – you shouldn’t allow attackers to figure out if an email is registered or not. If an email is not found, upon login report just “Incorrect credentials”. On passwords reset, it may be something like “If your email is registered, you should have received a password reset email”. This is often at odds with usability – people don’t often remember the email they used to register, and the ability to check a number of them before getting in might be important. So this rule is not absolute, though it’s desirable, especially for more critical systems.
Make sure you use JWT only if it’s really necessary and be careful of the pitfalls.
Consider using a 3rd party authentication – OpenID Connect, OAuth by Google/Facebook/Twitter (but be careful with OAuth flaws as well). There’s an associated risk with relying on a 3rd party identity provider, and you still have to manage cookies, logout, etc., but some of the authentication aspects are simplified.
For high-risk or sensitive applications use 2-factor authentication. There’s a caveat with Google Authenticator though – if you lose your phone, you lose your accounts (unless there’s a manual process to restore it). That’s why Authy seems like a good solution for storing 2FA keys.