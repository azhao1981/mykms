# vuls openssh

https://www.openssh.com/security.html

https://www.cvedetails.com/vulnerability-list/vendor_id-97/product_id-585/Openbsd-Openssh.html

### [OpenSSH 安全漏洞 CVE-2020-12062](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-078)

范围：The scp client in OpenSSH 8.2

OpenSSH 8.2版本中存在安全漏洞，该漏洞源于在utimes系统调用失败时，scp客户端错误地向服务器发送了重复的响应。
攻击者可通过在远程服务器上创建子目录利用该漏洞覆盖客户端下载目录中的任意文件。

分类为致命的漏洞已在 OpenSSH 8.2中发现。 
此漏洞会影响某些未知进程的组件scp Client。 
手动调试的不合法输入可导致 权限升级。 

[OpenSSH 输入验证错误漏洞(CVE-2020-12062)漏洞修复(本人亲测)](https://blog.csdn.net/qq_26963433/article/details/108494310)


### [OpenSSH 安全漏洞 CVE-2020-14145](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-1822)

范围：5.7版本至8.3版本客户端

OpenSSH 5.7版本至8.3版本的客户端中存在信息泄露漏洞。攻击者可利用该漏洞获取信息。

### [OpenSSH 命令注入漏洞（CVE-2020-15778）](http://www.nsfocus.net/vulndb/47482)

范围：全部

  官方不认为这是个漏洞，因为有scp权限的人，本来就有执行命令的权限
  而很少有只允许用户scp的情况

[OpenSSH 命令注入漏洞（CVE-2020-15778）](https://www.4hou.com/posts/vD70)

[Write up for CVE id CVE-2020-15778.](https://github.com/cpandya2909/CVE-2020-15778/)

```bash
scp  ./abc remoteserver:'`touch /tmp/exploit.sh`/abc'

ssh -V
OpenSSH_7.6p1 Ubuntu-4ubuntu0.4, OpenSSL 1.0.2n  7 Dec 2017
也有这个问题
```

[openssh 源码分析权限维持](https://www.anquanke.com/post/id/237497)
