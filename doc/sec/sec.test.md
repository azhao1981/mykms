# 安全测试

## 开源工具

[八款免费开发安全测试工具](https://www.freebuf.com/sectool/240588.html)

### Secrets Detection（机密信息检测）

https://gitguardian.com/ 平台
API 服务最佳实践
https://github.com/GitGuardian/APISecurityBestPractices
https://github.com/GitGuardian

### 依赖扫描

https://snyk.io/ 平台类

https://www.whitesourcesoftware.com/ 平台类

对开发者,开源免费

### DAST 动态应用安全测试,黑盒测试

[OWASP ZAP](https://www.zaproxy.org/)

插件形式
https://www.zaproxy.org/addons/
https://github.com/zaproxy/zaproxy
https://github.com/zaproxy/zap-hud

[OWASP ZAP使用教程](https://www.cnblogs.com/zeussbook/p/10931092.html)

### IAST

交互式应用安全测试,灰盒测试
Contrast Security - Community
https://www.contrastsecurity.com/contrast-community-edition

[RASP](./sec.sdl.OpenRASP.md)

### SAST - 静态应用安全测试

类型： 白盒测试

#### ApplicationInspector

https://github.com/microsoft/ApplicationInspector

#### [NodeJsScan] (sec.test.sast.nodejsscan.md)

#### [SonarQube](sec.test.sonarqube.md)

  最好用的免费自动化代码审计工具之一
  具备上千种自动化静态代码分析规则
  支持27种开发语言，能够很好地覆盖整个开发项目的发展。

#### Fuzz

漏洞挖掘和FUZZ技术
https://www.freebuf.com/vuls/244250.html

### DAST - 动态应用安全测试 黑盒测试
#### DAST可以发现SQL注入、跨站脚本等常见的安全漏洞，
    识别应用程序运行时的安全风险，
        如身份验证和服务器配置问题，以及只有在已知用户登录时才有可能发现的安全问题
#### xray

https://github.com/chaitin/xray/releases

#### OWASP ZAP
        功能非常全面
        开源DAST工具
        能够自动进行漏扫，
        协助测试人员完成web应用的渗透测试
        ZAP的漏洞库也非常丰富
### IAST - 交互式应用安全测试 灰盒测试
    是一种综合了SAST和DAST的检测技术
    一般会在测试环境中以agent的形式（例如针对Java虚拟机或.NET CLR的插桩技术）监测运营与攻击情况，从而发现风险点。
#### Contrast Security - Community
        是一个声称“开发者至上”的产品，能更深入地发现漏洞。
        应用程序运行时的上下文信息对于其它的SAST和DAST工具完全是盲区
            如控制器、业务逻辑、数据层、视图，用户库，开源组件和应用程序服务器。
#### RASP，运行时应用程序自我保护，一般部署在某个服务器上，当应用运行时即开始工作，能够实时发现目标应用中的攻击活动。
        应用程序一旦开始运行，RASP就会分析应用的行为和上下文信息，防止恶意输入或恶意行为的发生。
        通过对应用行为的持续监控，不用人为干预就可以发现攻击活动并且做到及时修复。
#### Sqreen的RASP可通过请求的完整执行上下文信息来发现应用上线后的漏洞利用和攻击活动，覆盖OWASP十大安全漏洞，如SQL注入、XSS和SSRF等。
        它的强大之处在于能够根据请求的执行逻辑进行攻击拦截，比其它解决方案的误报率低得多。
        Sqreen还能自动适配不同的应用程序技术栈，无需重新部署或配置。


### RASP - 运行时应用自我保护
### 依赖项安全扫描
### Secrets Detection（机密信息检测）
