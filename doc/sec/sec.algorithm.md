# 常见算法安全

## 概述

本文讨论现下常见算法的安全问题

### 范围

种类包括 对称加密/非对称加密/摘要/编码

标准包括 国际标准和国家标准

## 算法种类

对称算法（分组密码算法）：AES/DES/SM4

非对称算法（公钥密码算法）：RSA/SM2

摘要算法（杂凑算法）：MD5/SHA-I/SM3

编码 Base64

**SMx为国密算法**

## 不安全算法/用法和建议

### 不安全用法/禁止：

数据库存储用户密码明文或不安全算法加密的密文

日志文件中用户密码明文或不安全算法加密的密文

### 不安全算法
+ 明文
+ XOR 异或
+ MD5
+ SHA1 
+ Base64编码
+ DES/4DES
+ 私有算法等
+ AES 的非 HMAC 模式
  - CBC
  - OFB
  - CTR
  - ECB

### 建议

+ 采用基于 摘要算法和加入盐值（salt）方式安全存储口令信息
  + SHA2
  + bcrypt
  + JWT HS256/RS256
+ AES:128位,GCM 模式,NoPaddding `Cipher c = Cipher.getInstance("AES/GCM/NoPadding");`
+ RSA:2018位,OAEPWithMD5AndMGF1Padding `rsa = javax.crypto.Cipher.getInstance("RSA/ECB/OAEPWithMD5AndMGF1Padding");`
+ DSA：2048位

### 知名安全组织/工具不安全算法条目

#### mitre

CWE-327: Use of a Broken or Risky Cryptographic Algorithm
<http://cwe.mitre.org/data/definitions/327.html>

包括:
+ Reversible One-Way Hash 可逆单向散列,SHA1/MD5 -> SHA2 <http://cwe.mitre.org/data/definitions/328.html>
+ Use of RSA Algorithm without OAEP 无需 OAEP 的 RSA 算法的使用 <http://cwe.mitre.org/data/definitions/780.html>
 Optimal Asymmetric Encryption Padding (OAEP)
 BAD: rsa = javax.crypto.Cipher.getInstance("RSA/NONE/NoPadding");
 GOOD: rsa = javax.crypto.Cipher.getInstance("RSA/ECB/OAEPWithMD5AndMGF1Padding");
+	Use of Password Hash With Insufficient Computational Effort 计算量不足的密码散列的使用 <http://cwe.mitre.org/data/definitions/916.html>
+ Use of a Risky Cryptographic Primitive 使用非标准加密算法 <http://cwe.mitre.org/data/definitions/1240.html>
+ Missing Encryption of Sensitive Data 缺少敏感数据的加密 <http://cwe.mitre.org/data/definitions/311.html>
+ Reflection Attack in an Authentication Protocol 认证协议反射攻击 <http://cwe.mitre.org/data/definitions/301.html>

#### find-sec-bug安全算法相关

<https://find-sec-bugs.github.io/bugs.htm#STATIC_IV>
> 使用固定的IV,在对称算法(AES)用使用固定的IV(初始化向量)
> 建议：每次加密都使用不同的IV

<https://find-sec-bugs.github.io/bugs.htm#ECB_MODE>
> 使用 AES/ECB 即电子密码本模式，
> 建议使用 AES/GCM 伽罗华计数器模式
> [AES-GCM 加密简介](https://juejin.im/post/6844904122676690951)

<https://find-sec-bugs.github.io/bugs.htm#PADDING_ORACLE>
> 建议使用： NoPadding
> Cipher c = Cipher.getInstance("AES/GCM/NoPadding");

<https://find-sec-bugs.github.io/bugs.htm#CIPHER_INTEGRITY>
Cipher with no integrity 加密器没有完整性检查（签名）
基于哈希的加密讯息鑑别码(HMAC)以下AES模式都没有
- CBC
- OFB
- CTR
- ECB

建议：
GCM

<https://find-sec-bugs.github.io/bugs.htm#ESAPI_ENCRYPTOR>
> 使用 OWASP ESAPI 加密组件，<= 2.0.1 有漏洞，建议 2.1.0 以上 
>  MAC bypass (CVE-2013-5679).
版本：ESAPI 版本<=2.0.1 有漏洞
> 一些配置也会影响其安全性

```java
// BAD
Encryptor.CipherText.useMAC=false
Encryptor.EncryptionAlgorithm=AES
Encryptor.CipherTransformation=AES/CBC/PKCS5Padding
Encryptor.cipher_modes.additional_allowed=CBC
```

```java
// GOOD
Encryptor.CipherText.useMAC=true
#Needed to have a solid auth. encryption
Encryptor.EncryptionAlgorithm=AES
Encryptor.CipherTransformation=AES/GCM/NoPadding
#CBC mode should be removed to avoid padding oracle
Encryptor.cipher_modes.additional_allowed=
```

#### SonarQube算法安全相关

https://rules.sonarsource.com/java/RSPEC-4432
AES encryption algorithm should be used with secured mode

https://rules.sonarsource.com/java/RSPEC-2278
Neither DES (Data Encryption Standard) nor DESede (3DES) should be used

https://rules.sonarsource.com/java/RSPEC-5542
Encryption algorithms should be used with secure mode and padding scheme

https://rules.sonarsource.com/java/RSPEC-4787
Encrypting data is security-sensitive

https://rules.sonarsource.com/java/RSPEC-2277
Cryptographic RSA algorithms should always incorporate OAEP (Optimal Asymmetric Encryption Padding)

## 算法详解

### ESAPI

owasp提供的一套API级别的web应用解决方案

[ESAPI](https://owasp.org/www-project-enterprise-security-api/)

[ESAPI学习笔记](https://www.cnblogs.com/fishou/p/4177491.html)

### SHA2

[SHA256算法原理详解](https://blog.csdn.net/u011583927/article/details/80905740)

[SHA2算法加密计算器](https://www.jisuan.mobi/pbzmubBN3NzN1yJS.html)

### AES

AES: Advanced Encryption Standard DES 算法的替代者

[AES加密的安全问题](https://www.anquanke.com/post/id/173088)

1. 电码本模式（Electronic Codebook Book (ECB)）
2. 密码分组链接模式（Cipher Block Chaining (CBC)）
这种模式是先将明文切分成若干小段，然后每一小段与初始块或者上一段的密文段进行异或运算后，再与密钥进行加密。
3. 计算器模式（Counter (CTR)）
4. 密码反馈模式（Cipher FeedBack (CFB)）
5. 输出反馈模式（Output FeedBack (OFB)）

攻击方法：

+ 针对 ECB 的密文替换
+ 针对 CBC 的字节反转

ECB每一个明文块都会生成同样的密文

CTR 计数器模式解决了ECB模式中，相同的明文会得到相同的密文的问题。

CBC，CFB，OFB模式都能解决这个问题，但CTR的另两个优点是：

1）支持加解密并行计算，可事先进行加解密准备；

2）错误密文中的对应比特只会影响明文中的对应比特等优点。

缺点：

但CTR仍然不能提供密文消息完整性校验的功能。

现在安全的是 AES-GCM模式

[什么是 AES-GCM加密算法](https://blog.csdn.net/T0mato_/article/details/53160772)

[AES128和AES256主要区别和安全程度是多少](https://blog.csdn.net/WuLex/article/details/74052505)
> 结论： AES128已经足够用


### RSA

### 国密算法

参考： [浅谈国密算法](https://juejin.im/post/6844904114879463438)

[GmSSL](http://gmssl.org/)

GmSSL是一个开源的密码工具箱，支持SM2/SM3/SM4/SM9/ZUC等国密(国家商用密码)算法

https://github.com/guanzhi/GmSSL

### JWT



jwt 中常用的签名算法是

+ HS256 对称算法，密钥双方一样
+ RS256 非对称算法，分公钥和秘钥
+ **None** 注意有的组件会支持None，即不加密

**注意** 在 jwt 中，消息体是透明的，加密只是做为签名保证数据不被篡改，不要传递敏感数据

[深入理解JWT的使用场景和优劣](https://www.cnblogs.com/cokeking/p/10969579.html)

[JSON Web Token (JWT) 攻击技巧](https://xz.aliyun.com/t/2338)

理解JWT的使用场景和优劣
http://blog.didispace.com/learn-how-to-use-jwt-xjf/

JSON Web Token - 在Web应用间安全地传递信息
http://blog.didispace.com/json-web-token-web-security/

八幅漫画理解使用 JWT设计的单点登录系统
http://blog.didispace.com/user-authentication-with-jwt/

JSON Web Token 入门教程
https://www.ruanyifeng.com/blog/2018/07/json_web_token-tutorial.html

只要一行代码，实现五种 CSS 经典布局
http://www.ruanyifeng.com/blog/2020/08/five-css-layouts-in-one-line.html

### SSL/TLS

### OAuth 2.0

理解OAuth 2.0
https://www.ruanyifeng.com/blog/2014/05/oauth_2_0.html

### 异或运算

异或也叫半加运算，
其运算法则相当于不带进位的二进制加法：
  二进制下用1表示真，0表示假，则异或的运算法则为：0⊕0=0，1⊕0=1，0⊕1=1，1⊕1=0（同为0，异为1），
  这些法则与加法是相同的，只是不带进位，所以异或常被认作不进位加法。 
  程序中有三种演算子：XOR、xor、⊕。

异或算法有知其二必知其剩下一个数的特点，可以认为是最简单的加密算法

### Galois Field

有限域（英語：finite field）或伽罗瓦域 Galois field
在数学中，有限域（英語：finite field）或伽罗瓦域（英語：Galois field，为纪念埃瓦里斯特·伽罗瓦命名）是包含有限个元素的域。 
与其他域一样，有限域是进行加减乘除运算都有定义并且满足特定规则的集合。 
有限域最常见的例子是当p 为素数时，整数对 p 取模。 有限域的元素个数称为它的阶。

[伽罗华域（Galois Field）上的四则运算](http://abcdxyzk.github.io/blog/2018/04/16/isal-erase-3/)

### APP安全

[android](/doc\sec\sec.app.android.md)



## ruby + AES/GCM/NoPadding



在线加密解密 ： https://www.ssleye.com/aes_aead_cipher.html

[Ruby OpenSSL Library - IV Reuse in GCM Mode](https://hackerone.com/reports/170548)
> 安全问题，大概是老的gems 会生成一样的IV，已经修复


```Ruby
def encrypt(plaintext)
    cipher = OpenSSL::Cipher.new('aes-256-gcm')
    cipher.encrypt
    iv = cipher.random_iv # Notice here the IV is set before the key
    cipher.key = '11111111111111111111111111111111'
    cipher.auth_data = ""
    ciphertext = cipher.update(plaintext) + cipher.final
    tag = cipher.auth_tag

    puts "[+] Encrypting: #{plaintext}"
    puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
#{bin2hex(tag)} | #{bin2hex(ciphertext)}"
end

# 列出支持的算法模式
puts OpenSSL::Cipher.ciphers
```

### auth_data 问题
可以看这个：
[AES-GCM 加密简介](https://juejin.cn/post/6844904122676690951)
来理解算法和 auth_data auth_tag,他们是用来保证如果完整性的



https://docs.ruby-lang.org/en/master/OpenSSL/Cipher.html#method-i-auth_data-3D

auth_data = string → string
Sets the cipher's additional authenticated data. 
This field must be set when using AEAD cipher modes such as GCM or CCM. 
If no associated data shall be used, this method must still be called with a value of “”. 
The contents of this field should be non-sensitive data which will be added to the ciphertext 
  to generate the authentication tag which validates the contents of the ciphertext.

The AAD must be set prior to encryption or decryption. 
In encryption mode, it must be set after calling Cipher#encrypt and setting Cipher#key= and Cipher#iv=. 
When decrypting, the authenticated data must be set after key, iv and especially after the authentication tag has been set. 
I.e. set it only after calling Cipher#decrypt, Cipher#key=, Cipher#iv= and Cipher#auth_tag= first.

1 Answer. The authentication tag is defined as an output parameter in GCM (see section 7, step 7 of NIST SP 800-38D). ... 
The name "tag" of course kind of indicates that it should be tagged to the ciphertext and that may well mean direct concatenation. 
The tag is often considered part of the ciphertext within an API.

[【RUBY】AES](https://www.796t.com/post/Nmhrbnk=.html)
关于 auth_tag 不完整的问题
英文原帖：https://stackoverflow.com/questions/38293211/aes-128-gcm-does-not-seem-to-check-for-authentication

如果我正確理解gcm模式，它不僅應該提供加密，而且還應該提供密文的身份驗證。
然而，當我使用ruby的openssl實現以AES-256-GCM模式加密資料時，即使我篡改了auth_tag，它也會很高興地解密資料。
我是在這裡遺漏了什麼，還是實現確實中斷了？

[官方解决这个问题](https://github.com/ruby/openssl/issues/63)
经实验，还是有这个问题，只是比如减到-17，就会开始报错

auth_data和auth_tag 有什么用，不用安全不安全？看下面：
https://crypto.stackexchange.com/questions/17999/aes256-gcm-can-someone-explain-how-to-use-it-securely-ruby
https://crypto.stackexchange.com/questions/15699/leaving-authentication-data-blank-less-secure-for-aes-gcm?lq=1


auth_tag(tag_len = 16) → String
Gets the authentication tag generated by Authenticated Encryption Cipher modes (GCM for example). 
This tag may be stored along with the ciphertext, then set on the decryption cipher to authenticate the contents of the ciphertext against changes. 
If the optional integer parameter tag_len is given, the returned tag will be tag_len bytes long. 
If the parameter is omitted, the default length of 16 bytes or the length previously set by auth_tag_len= will be used. 
For maximum security, the longest possible should be chosen.
The tag may only be retrieved after calling Cipher#final.

###　padding问题
https://stackoverflow.com/questions/13241489/how-to-set-padding-mode-with-ruby-openssl-decryption-encryption
默认padding 为 PKCS7 

https://docs.ruby-lang.org/en/master/OpenSSL/Cipher.html#method-i-padding-3D
padding = integer → integer
Enables or disables padding.
 By default encryption operations are padded using standard block padding and the padding is checked and removed when decrypting. 
 If the pad parameter is zero then no padding is performed, the total amount of data encrypted or decrypted must then be a multiple of the block size or an error will occur.
See EVP_CIPHER_CTX_set_padding for further information.


Ruby AES-128-ECB encryption / decryption example. This was written to interface with a 3rd party that required string parameters to be encrypted the following way: Rinndael cipher, Electronic Code Block mode (ECB), no padding, encrypted buffer should be padded with spaces such that its length is divisible by 32.
https://gist.github.com/tcaddy/c2282fb795581d560fb7a42ff1f5e8d6

[PKCS7 / PKCS5 填充算法](https://segmentfault.com/a/1190000019793040)

[Web狗要懂的Padding Oracle攻击](https://www.jianshu.com/p/ad8bdd87e131)
Ruby 对AES/CBC/PKCS7 的攻击

[padding oracle 原理深度解析 & CBC 字节翻转攻击原理解析](https://paper.seebug.org/1123/)

[我对Padding Oracle攻击的分析和思考（详细）](https://www.freebuf.com/articles/web/15504.html)

[侧信道攻击研究——PADDING ORACLE](https://www.anquanke.com/post/id/203808)

[Padding Oracle Attack¶](https://ctf-wiki.org/crypto/blockcipher/mode/padding-oracle-attack/#padding-oracle-attack)

[padding oracle和cbc翻转攻击](https://skysec.top/2017/12/13/padding-oracle%E5%92%8Ccbc%E7%BF%BB%E8%BD%AC%E6%94%BB%E5%87%BB/)

https://github.com/chillfox/Crystal-encryption-example/blob/master/src/crystal_encryption.cr

https://forum.crystal-lang.org/t/how-to-encrypt-decrypt-data/2474

[使用身份验证TAG的openssl aes gcm加密；命令行](https://www.codenong.com/51509530/)

openssl enc -aes-256-gcm -p -iv 000000000000000000000000 -K 00000000000000000000000000000000000000000000000000000000000000 -nosalt -in file.raw -out file.enc

### 关于 iV存储

[如何存储iv，salt和密文？](https://stackoom.com/question/2FeSZ/%E5%A6%82%E4%BD%95%E5%AD%98%E5%82%A8iv-salt%E5%92%8C%E5%AF%86%E6%96%87)


[AES加密-密钥与IV](https://cn.ourladylakes.org/853052-aes-encryption-key-versus-iv-UDFQCR)

总结： IV 在CBC 模式下，其实就是和密文放在一起的

#### Golang

#### java
Java AES encryption and decryption
https://mkyong.com/java/java-aes-encryption-and-decryption/

openssl aes-256-gcm
https://docs.ruby-lang.org/en/master/OpenSSL/Cipher.html
https://security.stackexchange.com/questions/30344/why-does-openssl-not-include-aes-256-gcm
https://github.com/aws/aws-sdk-ruby/issues/1037
Aws::S3::Encryption: AES/GCM/NoPadding encryption not supported #1037

问题:AES128和AES256主要区别和安全程度是多少?他们对于机器的消耗是怎样的?两者性能如何?实际开发如何选择?
https://www.zhihu.com/question/29925026
在这种绝对安全之下，没有任何必要使用AES256。AES256一共有14轮轮运算，因此效率是只具有10轮轮运算的AES128的70%。
然而，NIST要求绝密级文件必须使用AES192或者256。
这是因为量子计算技术。
AES128在量子算法看来，只提供64位的安全性，等于2^8个 DES。

https://blog.csdn.net/newizan/article/details/45461347
AES128和AES256主要区别是密钥长度不同（分别是128bits,256bits)、加密处理轮数不同（分别是10轮，14轮），后者强度高于前者。 ... 非对称加密算法的资源消耗大于对称加密。 一般是进行混合加密处理，例如使用RSA进行密钥分发、协商，使用AES进行业务数据的加解密。2015年5月3日

https://noknow.info/it/ruby/implement_encryption_decryption_by_aes_gcm

## [命令行加密](\doc\sec\sec.enc.cmp.md)


密码学家的工具箱
https://segmentfault.com/a/1190000011980397