# linux 漏洞

## [Sudo缓冲区溢出漏洞（CVE-2021-3156）](http://www.nsfocus.net/vulndb/52555)

Sudo 1.8.2-1.8.31p2和1.9.0-1.9.5p1版本存在缓冲区溢出漏洞。
攻击者可通过“sudoedit -s”和以单个反斜杠字符结尾的命令行参数利用该漏洞获得系统root权限。


【安全通报】Sudo 堆缓冲区溢出漏洞 （CVE-2021-3156）
https://nosec.org/home/detail/4664.html
解决办法

https://www.freebuf.com/news/262127.html
不用密码就能获取root权限？sudo被曝新漏洞
视频显示
[源出处](https://blog.qualys.com/vulnerabilities-research/2021/01/26/cve-2021-3156-heap-based-buffer-overflow-in-sudo-baron-samedit)

[官方](https://www.sudo.ws/alerts/unescape_overflow.html)

https://www.bleepingcomputer.com/news/security/new-linux-sudo-flaw-lets-local-users-gain-root-privileges/?__cf_chl_jschl_tk__=073b83221ce6b0adf53639e243dbe62bce58b9d8-1611803373-0-AXfuVO-U9sJULEAJI5XCkv4BpM-i01ahPBVlfZ2KMm0u4-hSZQpj6MxQkk44Zmdj4eZQE6lipHD6aG7A13UTcagI2kZatNsdWcpaZLdLYZWkt5aordz8U-jLb3SEgu0VKifxedqoScY0b8U-eW4eBofOq3L8-rib_8GoBaV2htAAGi35n5n4XMGNN7T8Gy3Q6-k8wWuYoJ5Zz8BWM3k9iFtXGboM77gB5ZHIOM-FRyADZmxn5OGtoNASG0A3ry1c9dGBCXxnD9FIyJGr9Vel46sxjMAF1HRSk0IinfmySRFYhyvigWh58tGFENjUOg_5ygTJgWe5FY512lvcGrM7NP06xdz1zP0R5oB0LGY2VqLnrca0qFBMZOEAL24megn7P1L_GPJ-P0rQXosLTl4ptYU

[cve-2021-3156-sudo堆溢出简单分析 ](https://bbs.pediy.com/thread-265669.htm)
https://github.com/sudo-project/sudo/archive/SUDO_1_9_5p1.tar.gz
https://github.com/sudo-project/sudo/archive/SUDO_1_8_27.tar.gz
现在版本:
Sudo version 1.8.27
Sudo version 1.8.21p2

sudoedit -s '\' 112233445566
env -i 'AA=a\' 'B=b\' 'C=c\' 'D=d\' 'E=e\' 'F=f' sudoedit -s '1234567890123456789012\' 

阿里的 sudo 漏洞居然没有
但 https://www.exploit-db.com/ 有POC

Sudo 1.8.25p - 'pwfeedback' Buffer Overflow
https://www.exploit-db.com/exploits/48052
sudo 1.8.27 - Security Bypass
https://www.exploit-db.com/exploits/47502
ptrace - Sudo Token Privilege Escalation (Metasploit)
https://www.exploit-db.com/exploits/47345

这个不知道能不能? 好像不行,回头看看是干什么的?
https://github.com/TH3xACE/SUDO_KILLER
https://github.com/TH3xACE/SUDO_KILLER/blob/6327a45cfb028d6140e10a6e799ac54af0711d14/SUDO_KILLERv2.0.6.sh

https://github.com/Mr-xn/Penetration_Testing_POC
这个只有两个可执行文件,好像不行
https://github.com/mr-r3b00t/CVE-2021-3156
这个只有一个1.c
https://github.com/reverse-ex/CVE-2021-3156
git@github.com:reverse-ex/CVE-2021-3156.git

修复 ansible
https://github.com/ymrsmns/CVE-2021-3156

https://github.com/kernelzeroday/CVE-2021-3156-Baron-Samedit
https://github.com/elbee-cyber/CVE-2021-3156-PATCHER
la.c
https://github.com/Serpentiel/CVE-2021-3156

不行,这哥们没有搞出来..
https://github.com/baka9moe/CVE-2021-3156-Exp
搞笑的
