# 安卓应用安全

[渗透圣经](https://github.com/blaCCkHatHacEEkr/PENTESTING-BIBLE)
+ android
+ ios
+ app
这个项目有3个G...

https://source.android.com/security
https://www.hackinn.com/search/?keyword=app
https://github.com/ashishb/android-security-awesome

[Android应用程序渗透测试](https://book.hacktricks.xyz/mobile-apps-pentesting/android-app-pentesting)

## owasp

https://owasp.org/www-project-mobile-top-10/
M1: Improper Platform Usage  
M2: Insecure Data Storage     
M3: Insecure Communication    
M4: Insecure Authentication    
M5: Insufficient Cryptography  
M6: Insecure Authorization     
M7: Client Code Quality         
M8: Code Tampering              
M9: Reverse Engineering         
M10: Extraneous Functionality   

M1：平台使用不当
  请求太多权限
  解决： Secure coding and configuration practices must be used on server-side of the mobile application. 
  移动端对应的服务端必须使用安全的编码和配置实践
  例子：把密钥或密钥存在本地而不是傅 keychain, 这些数据如果不加密，可以用 itunes 直接读到
  必须结合服务器端的
  web TOP 10
  cloud top 10
  常见漏洞类型
  逻辑缺陷
    [Testing for business logic flaws](https://www.owasp.org/index.php/Testing_for_business_logic_(OWASP-BL-001))
    [Business] Logic Security Cheat Sheet](https://www.owasp.org/index.php/Business_Logic_Security_Cheat_Sheet)
  弱认证
    [OWASP Top Ten Broken Authentication Section](https://www.owasp.org/index.php/Top_10_2013-A2-Broken_Authentication_and_Session_Management)
    [Authentication Cheat Sheet](https://www.owasp.org/index.php/Authentication_Cheat_Sheet)
    [Developers Guide for Authentication](https://www.owasp.org/index.php/Guide_to_Authentication)
    [Testing for Authentication ](https://www.owasp.org/index.php/Testing_for_authentication)
  没有或是弱会话管理 Weak or no session management 
  会话固定 Session fixation
  使用GET方法传输敏感数据 Sensitive data transmitted using GET method
  不安全的web服务器配置 Insecure web server configurations
    默认配置 Default content
    管理员界面 Administrative interfaces
  SQL XSS 命令注入 web服务和移动端服务 Injection (SQL, XSS, Command) on both web services and mobile-enabled websites
  认证缺陷 Authentication flaws
  会话管理缺陷 Session Management flaws
  访问控制漏洞 Access control vulnerabilities
  本地和远程文件 Local and Remote File Includes ？这个是什么？
[M2：数据存储不安全](https://owasp.org/www-project-mobile-top-10/2016-risks/m2-insecure-data-storage)
  当攻击者拿到丢失或被偷的设备，可以在设备上安装恶意软件或是重打包软件。
  使用计算机联接设备拿到第三方应用的目录，可以获取相关的敏感信息
  Rooting或jailbreaking会让这些数据更脆弱
  开发者应该意识到攻击者会能拿到这些数据
  身份盗窃；
  侵犯隐私；
  欺诈；
  声誉受损；
  外部策略违规(PCI)；或者
  物质损失。
  业务影响
  特定应用/业务

  不安全的数据存储包括
  SQL databases;
  Log files;
  XML data stores ou manifest files;
  Binary data stores;
  Cookie stores;
  SD card;
  Cloud synced.
  意外的数据泄露包括
  The OS;
  Frameworks;
  Compiler environment;
  New hardware.
  Rooted or Jailbroken devices
  移动开发通常不注意或不明确规定的
  The way the OS caches data, images, key-presses, logging, and buffers;
  The way the development framework caches data, images, key-presses, logging, and buffers;
  The way or amount of data ad, analytic, social, or enablement frameworks cache data, images, key-presses, logging, and buffers.
  解决：
  对移动应用，OS，平台，框架进行威胁建模，以了解他们怎么处理这些 资产
  最重要的是要了解下面这些是怎么处理的：
    URL caching (both request and response);
    Keyboard press caching;
    Copy/Paste buffer caching;
    Application backgrounding;
    中间数据 Intermediate data
    Logging;
    HTML5 data storage;
    Browser cookie objects;
    Analytics data sent to 3rd parties.

    [igoat](https://github.com/OWASP/igoat) | 故意做成有这些问题的app
    [iGoat](https://github.com/OWASP/iGoat-Swift)
    OWASP iGoat（Swift） - 一个适用于iOS的骇人听闻的Swift应用程序.zip,OWASP iGoat (Swift) - A Damn Vulnerable Swift Application for iOS
    [iGoat – 故意不安全的iOS应用程序](http://www.secwk.com/2020/08/03/18801/)
  
  [OWASP OWASP iOS Developer Cheat Sheet](https://wiki.owasp.org/index.php/IOS_Developer_Cheat_Sheet)
  [External](https://owasp.org/www-project-mobile-top-10/2016-risks/m2-insecure-data-storage)
    Google Androids Developer Security Topics 1
    Google Androids Developer Security Topics 2
    Apple’s Introduction to Secure Coding
    Fortify On Demand Blog - Exploring The OWASP Mobile Top 10: Insecure Data Storage
M3：通信不安全
M4：不安全的身份验证
M5：加密不足
M6：不安全授权
M7：客户端代码质量
M8：代码篡改
M9：逆向工程
M10：无关功能

Top 10 Mobile Risks - Final List 2014
M1: Weak Server Side Controls
M2: Insecure Data Storage
M3: Insufficient Transport Layer Protection
M4: Unintended Data Leakage
M5: Poor Authorization and Authentication
M6: Broken Cryptography
M7: Client Side Injection
M8: Security Decisions Via Untrusted Inputs
M9: Improper Session Handling
M10: Lack of Binary Protections
M1：服务器端控制薄弱
M2：数据存储不安全
M3：输送层保护不足
M4：意外数据泄漏
M5：授权和身份验证不好
M6：密码系统损坏
M7：客户端注入
M8：通过不可信输入进行安全决策
M9：会话处理不当
M10：缺少二进制保护

https://owasp.org/www-project-mobile-security-testing-guide/

[通过Metasploit远程控制Android设备](https://www.freebuf.com/articles/network/247629.html)

[CVE-2020-6514](https://googleprojectzero.blogspot.com/2020/08/exploiting-android-messengers-part-3.html?m=1)

移动安全框架（MobSF）是一种自动、一体化的移动应用（Android / iOS / Windows）静态和动态分析的测试，恶意软件分析和安全评估框架。
https://mobsf.github.io/docs/#/zh-cn/
https://github.com/MobSF/Mobile-Security-Framework-MobSF

A curated list of Android Security materials and resources For Pentesters and Bug Hunters
https://github.com/saeidshirazi/awesome-android-security

doc\sec\sec.algorithm.md
Conceal是面向Android平台的一组简单的Java API，能够对SD卡等公共存储设备中的大文件进行快速加密和认证。
Conceal由Facebook设计，开发者可利用Conceal开发出能适用于老版本Android的内存和处理器开销较低的加密算法。
https://github.com/facebook/conceal

[2019年Android 恶意软件专题报告](https://cert.360.cn/report/detail?id=0d66c8ba239680d6674f2dba9f2be5f7)

[扩大Android攻击面：React Native Android应用程序分析](https://www.freebuf.com/articles/terminal/226947.html)

Find Security Bugs——Find Security Bugs是一款用于审计Java Web应用程序和Android应用FindBugs插件。

[Projectsandcastle：一款针对iPhone的AndroidLinux支持工具](https://www.freebuf.com/sectool/229967.html)

[android企业安全白皮书](https://static.googleusercontent.com/media/www.android.com/en//static/2016/pdfs/enterprise/Android_Enterprise_Security_White_Paper_2019.pdf)

[Android——Keymaster安全检测](https://blog.csdn.net/a282255307/article/details/83865474)


[惊人的测试结果：1780个流行的Android应用程序全都违反加密规则](https://www.freebuf.com/news/249192.html)

[Crylogger](https://github.com/lucapiccolboni/crylogger) 
一开源代码动态分析工具Crylogger，可以用来检测哪些Android应用程序存在加密漏洞。

2007的一个paper, [26条加密规则](https://arxiv.org/abs/2007.01061) 

badly derived 严重的派生

```
R-01 Don’t use broken hash functions (SHA1, MD2, MD5, ..) [8]
R-02 Don’t use broken encryption alg. (RC2, DES, IDEA ..) [8]
R-03 Don’t use the operation mode ECB with > 1 data block [5]
R-04 † Don’t use the operation mode CBC (client/server scenarios) [12]
R-05 Don’t use a static (= constant) key for encryption [5]
R-06 † Don’t use a “badly-derived” key for encryption [5]
R-07 Don’t use a static (= constant) initialization vector (IV) [5]
R-08 † Don’t use a “badly-derived” initialization vector (IV) [5]
R-09 † Don’t reuse the initialization vector (IV) and key pairs [46]
R-10 Don’t use a static (= constant) salt for key derivation [5]
R-11 † Don’t use a short salt (< 64 bits) for key derivation [14]
R-12 † Don’t use the same salt for different purposes [46]
R-13 Don’t use < 1000 iterations(迭代) for key derivation(派生) [14]
ID Rule Description Ref.
R-14 † Don’t use a weak password (score < 3) [47]
R-15 † Don’t use a NIST-black-listed password [48]
R-16 Don’t reuse a password multiple times [48]
R-17 Don’t use a static (= constant) seed for PRNG [49]
R-18 Don’t use an unsafe PRNG (java.util.Random) [49]
R-19 Don’t use a short key (< 2048 bits) for RSA [13]
R-20 † Don’t use the textbook (raw) algorithm for RSA [50]
R-21 † Don’t use the padding PKCS1-v1.5 for RSA [51]
R-22 Don’t use HTTP URL connections (use HTTPS) [16]
R-23 Don’t use a static (= constant) password for store [48]
R-24 Don’t verify host names in SSL in trivial ways [16]
R-25 Don’t verify certificates in SSL in trivial ways(微不足道的方式) [16]
R-26 Don’t manually change the hostname verifier [16]
```