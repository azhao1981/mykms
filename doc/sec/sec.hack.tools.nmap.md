# nmap

NmapCheatSheetv1.1.pdf
https://github.com/The-Art-of-Hacking/h4cker

## 下载和安装

https://nmap.org/download.html
https://nmap.org/book/inst-source.html

bzip2 -cd nmap-7.91.tar.bz2 | tar xvf -
cd nmap-7.91
./configure
make
su root
make install

## 版本探测

```bash
SERVICE/VERSION DETECTION:
  -sV: Probe open ports to determine service/version info
  --version-intensity <level>: Set from 0 (light) to 9 (try all probes)
  --version-light: Limit to most likely probes (intensity 2)
  --version-all: Try every single probe (intensity 9)
  --version-trace: Show detailed version scan activity (for debugging)

sudo nmap -Pn -sV version-all --version-trace -O $ip -p 8080,8443,22
```

-O 需要 sudo

扫描会提示：

Nmap scan report for bogon (192.168.223.133)
Read from /usr/bin/../share/nmap: nmap-payloads nmap-service-probes nmap-services.

[讲原理的：nmap服务识别和操作系统探测](https://segmentfault.com/a/1190000011871145)

当我们指定 -sV 选项运行 nmap 时，它会根据 nmap-services-probes 文件里面存储的是服务类型特征数据去判断具体扫描到的是哪种服务。

[讲使用：[Nmap渗透测试指南]第四章(指纹识别与探测)](https://blog.csdn.net/nzjdsds/article/details/72862765)

[服务和版本探测](https://nmap.org/man/zh/man-version-detection.html)

https://nmap.org/book/vscan.html

### [端口和识别列表](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)

nmap top 1000 包括哪些端口
https://nullsec.us/top-1-000-tcp-and-udp-ports-nmap-default/
https://github.com/danielmiessler/SecLists/blob/master/Discovery/Infrastructure/nmap-ports-top1000.txt

Nmap流量特征修改
https://www.freebuf.com/articles/others-articles/250028.html

https://github.com/SpiderLabs/Nmap-Tools

O.G. AUTO-RECON：一款功能强大的基于Nmap结果的目标枚举工具
https://www.freebuf.com/sectool/243589.html

学习Nmap脚本引擎(NSE)的基础知识，并开始构建自己的NSE脚本
ref https://www.udemy.com/course/network_and_vulnerability_scan_by_nmap_nessus/

Web网站安全测试（Penetration Testing）- 从初学到精通
渗透测试 / Website Hacking 学习如何保护他们免受黑客攻击
https://www.udemy.com/course/security-testing-china/

最常用法：
nmap -T4 -A -v $IP
nmap -T4 -A -Pn -v $IP

### zenmap
apt-get install alien dpkg-dev debhelper build-essential -y
alien xxx.rpm
dpkg -i xxx.deb

每天学习一个命令：nmap 扫描开放端口
http://einverne.github.io/post/2017/01/nmap.html

状态：
Open（开放的）意味着目标机器上的应用程序正在该端口监听连接 / 报文。
filtered（被过滤的） 意味着防火墙，过滤器或者其它网络障碍阻止了该端口被访问，Nmap 无法得知 它是 open（开放的） 还是 closed（关闭的）。 
closed（关闭的） 端口没有应用程序在它上面监听，但是他们随时可能开放。
unfiltered（未被过滤的）当端口对 Nmap 的探测做出响应，但是 Nmap 无法确定它们是关闭还是开放时

功能：
反向域名，操作系统猜测，设备类型，和 MAC 地址

扫描类型
-sT    TCP connect() 扫描，这是最基本的 TCP 扫描方式。这种扫描很容易被检测到，在目标主机的日志中会记录大批的连接请求以及错误信息。    
-sS    TCP 同步扫描 (TCP SYN)，因为不必全部打开一个 TCP 连接，所以这项技术通常称为半开扫描 (half-open)。这项技术最大的好处是，很少有系统能够把这记入系统日志。不过，你需要 root 权限来定制 SYN 数据包。    
-sF,-sX,-sN    秘密 FIN 数据包扫描、圣诞树 (Xmas Tree)、空 (Null) 扫描模式。这些扫描方式的理论依据是：关闭的端口需要对你的探测包回应 RST 包，而打开的端口必需忽略有问题的包（参考 RFC 793 第 64 页）。    
-sP    ping 扫描，用 ping 方式检查网络上哪些主机正在运行。当主机阻塞 ICMP echo 请求包是 ping 扫描是无效的。nmap 在任何情况下都会进行 ping 扫描，只有目标主机处于运行状态，才会进行后续的扫描。    
-sU    UDP 的数据包进行扫描，如果你想知道在某台主机上提供哪些 UDP（用户数据报协议，RFC768) 服务，可以使用此选项。    
-sA    ACK 扫描，这项高级的扫描方法通常可以用来穿过防火墙。    
-sW    滑动窗口扫描，非常类似于 ACK 的扫描。    
-sR    RPC 扫描，和其它不同的端口扫描方法结合使用。    
-b    FTP 反弹攻击 (bounce attack)，连接到防火墙后面的一台 FTP 服务器做代理，接着进行端口扫描。

通用选项
-P0    在扫描之前，不 ping 主机。    
-PT    扫描之前，使用 TCP ping 确定哪些主机正在运行。    
-PS    对于 root 用户，这个选项让 nmap 使用 SYN 包而不是 ACK 包来对目标主机进行扫描。    
-PI    设置这个选项，让 nmap 使用真正的 ping(ICMP echo 请求）来扫描目标主机是否正在运行。    
-PB    这是默认的 ping 扫描选项。它使用 ACK(-PT) 和 ICMP(-PI) 两种扫描类型并行扫描。如果防火墙能够过滤其中一种包，使用这种方法，你就能够穿过防火墙。    
-O    这个选项激活对 TCP/IP 指纹特征 (fingerprinting) 的扫描，获得远程主机的标志，也就是操作系统类型。    
-I    打开 nmap 的反向标志扫描功能。    
-f    使用碎片 IP 数据包发送 SYN、FIN、XMAS、NULL。包增加包过滤、入侵检测系统的难度，使其无法知道你的企图。    
-v    冗余模式。强烈推荐使用这个选项，它会给出扫描过程中的详细信息。    
-S <IP>    在一些情况下，nmap 可能无法确定你的源地址 (nmap 会告诉你）。在这种情况使用这个选项给出你的 IP 地址。    
-g port    设置扫描的源端口。一些天真的防火墙和包过滤器的规则集允许源端口为 DNS(53) 或者 FTP-DATA(20) 的包通过和实现连接。显然，如果攻击者把源端口修改为 20 或者 53，就可以摧毁防火墙的防护。    
-oN    把扫描结果重定向到一个可读的文件 logfilename 中。    
-oS    扫描结果输出到标准输出。    
--host_timeout    设置扫描一台主机的时间，以毫秒为单位。默认的情况下，没有超时限制。    
--max_rtt_timeout    设置对每次探测的等待时间，以毫秒为单位。如果超过这个时间限制就重传或者超时。默认值是大约 9000 毫秒。    
--min_rtt_timeout    设置 nmap 对每次探测至少等待你指定的时间，以毫秒为单位。    
-M count    置进行 TCP connect() 扫描时，最多使用多少个套接字进行并行的扫描。

[从 Masscan, Zmap 源码分析到开发实践](https://paper.seebug.org/1052/)

## TIPS
### nmap 如何探测一个服务的指纹

发某个机器的探测

nmap -T4 -A -Pn -vvv xx.ip -p 80

返回：

```
GetRequest
X-Powered-By: ASP.NET
<h2>Object moved to <a href="http://一个转接的内网ip/op/generate.aspx">here</a>.</h2>
```

发现返回很详细，但直接 `curl -vvv "xx.ip"` 并没有发现找到这些内网ip

Q：是什么请求暴漏了这个服务的内网ip

标准说法是：[Internal IP Address Disclosure ](https://portswigger.net/kb/issues/00600300_private-ip-addresses-disclosed)

https://serverfault.com/questions/931281/how-to-prevent-nmap-from-fingerprinting-haproxy
 Nmap identifies HAProxy based on what versions added which headers to the response. 
 The match lines are in the nmap-service-probes file in the Nmap source. 
 Here are some selected comments from the file to illustrate how this was accomplished:

https://github.com/nmap/nmap/blob/master/CHANGELOG
IIS 相关

https://resources.infosecinstitute.com/topic/nmap-cheat-sheet-part-4/
绕过防火墙

试试把nmap加到burpsuite看下发的payload是什么
https://nmap.org/book/ncat-man-proxy-options.html

```bash
跑不通
nmap -T4 -A -Pn -v xxx -p 80 --proxy socks5://127.0.0.1:2080
跑通，但不能返回有问题的结果
nmap -T4 -A -Pn -v xxx -p 80 --proxy socks4://127.0.0.1:2080
nmap -T4 -A -Pn -v xxx -p 80 --proxy http://127.0.0.1:2080
```

https://security.stackexchange.com/questions/120708/nmap-through-proxy/120723#120723

https://stackoom.com/question/3dO4f/%E5%A6%82%E4%BD%95%E4%BD%BF%E7%94%A8Openvas-proxychains%E6%88%96Nmap-proxychains-%E9%80%9A%E8%BF%87socks-%E8%80%8C%E9%9D%9Esocks

如何使用Openvas + proxychains或Nmap + proxychains（通过socks5而非socks4）？
https://www.shellhacks.com/anonymous-port-scanning-nmap-tor-proxychains/#comments


Asp.net安全架构之4：Brute force（爆破）
https://www.cnblogs.com/luminji/archive/2012/06/13/2531052.html

curl "http://xxx/sso/ValidateUser.aspx " -vvv -X POST -d "loginId=luminji&password=123456"


但这好像有解决之法
https://serverfault.com/questions/122791/iis-reveals-internal-ip-address-in-content-location-field

SERVER RESPONSE: 302 Object moved RSS
https://forums.iis.net/t/1153986.aspx

” For example, if you configure an HTTP redirect that results in an HTTP 302 response being sent, and your redirect code uses the server’s IP address, then the IP address may appear in the Content-Location or Location header of the response.  To work around this issue, do not use the server’s IP address in the redirect logic; instead, use its host name or fully qualified machine name.  A similar type of behavior can occur if you configure custom error pages to perform a redirect, and you use the IIS Manager to set the redirect target as a URL instead of a File.  In this scenario, specifying the File instead of URL will keep the IP address hidden.”( by  Mike Laing)

You should check your pages’ code to see if it performs redirection with the site’s private IP. Also please note the IIS forum doesn’t cover questions about SMTP.

这应该是漏洞正主：
A: 不是，没有发现空Host的问题

https://github.com/curl/curl/issues/2357
curl -v -H 'Host:' -H 'Host;'  http://xxx

server is revealed if an HTTP Request that does not have a Host header or has a NULL Host header is sent to the server

https://support.microsoft.com/en-us/topic/fix-the-internal-ip-address-of-an-iis-7-0-server-is-revealed-if-an-http-request-that-does-not-have-a-host-header-or-has-a-null-host-header-is-sent-to-the-server-c493e9bc-dfd3-0d9b-941c-b2d93a957d9e

这是这个漏洞重现的方法：
https://support.kemptechnologies.com/hc/en-us/articles/203522429-How-to-Mitigate-Against-Internal-IP-Address-Domain-Name-Disclosure-In-Real-Server-Redirects
kemptech@LC-161:~$ curl http://www.domain.com -v -l --http1.0 --Header 'Host: '

但在本例中，如果这么发，SLB 会直接拒绝 < Via: HTTP/1.0 SLB.24

参考：

https://portswigger.net/web-security/host-header/exploiting#top
How to identify and exploit HTTP Host header vulnerabilities
如何识别和利用HTTP主机报头漏洞

这个才是正主
CVE-2000-0649

https://www.securityfocus.com/bid/1499
到 2009 年才修复
https://www.cvedetails.com/cve/CVE-2000-0649/

通过metasploit可以复现：

msf > use auxiliary/scanner/http/iis_internal_ip
msf6 auxiliary(scanner/http/iis_internal_ip) > set RHOST x.x.x.x
msf6 auxiliary(scanner/http/iis_internal_ip) > exploit
[+] Location Header: http://10.12.154.202/op/generate.aspx
[+] Result for x.x.x.x found Internal IP:  10.12.x.x
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf6 auxiliary(scanner/http/iis_internal_ip) > info

