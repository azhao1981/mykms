# 红队

[红队测试之邮箱打点](https://www.freebuf.com/articles/network/250134.html)
MX记录域名找到他的真实ip地址
针对这个ip地址的c段进行扫描（25、109、110、143、465、995、993端口）
web渗透测试系列 之 扫描（4）
https://zhuanlan.zhihu.com/p/113890295
C段渗透攻击必看的技术知识
https://www.qxzxp.com/4859.html
https://cloud.tencent.com/developer/article/1508162
1.11 C段入侵 即同C段下服务器入侵。如目标ip为192.168.180.253 入侵192.168.180.*的任意一台机器，然后利用一些黑客工具嗅探获取在网络上传输的各种信息。常用的工具有：在windows下有Cain，在UNIX环境下有Sniffit, Snoop, Tcpdump, Dsniff 等。
这里扫描子域名的工具有很多，如Sublist3r、TeeMO、LangSrcCurise、挖掘机等不一一举例。

（3）通过搜索引擎爬取

Google hack 搜索；

百度、搜狗、360、bing。

site:target.com intitle:"Outlook Web App"

site:target.com intitle:"mail"

site:target.com intitle:"webmail"

Shodan、fofa、zoomeye搜索等。

攻防演练之柳暗花明又一村
https://www.freebuf.com/articles/network/249377.html

+ [ ] guest wifi
+ [ ] 是不是能访问内部
  + [ ] 不能试一下有没有私人的wifi
  + [ ] **wifi密码探测软件**
  + [ ] 雷达型use无线网卡 Netsys
+ [ ]  找 pc 开 445 或 远程桌面。
  + [ ]  先用一个top1000的字典跑远程桌面
  + [ ]  永恒之蓝漏洞
  + [ ]  杜工： 计算机名-》真名
  + [ ]  利用他的手机号得到了邮箱和身份证信息。通过我们收集到的信息，组了个字典，再次去爆破远程桌面。
  + [ ]  发现他的浏览器中保存了他们单位多个系统的密码，好几个系统都是用的他的电话号码或者和电脑的密码相同。
  + [ ]  发现该pc安装了TeamViewer，终于不需要再躲在厕所了，记下远程链接密码就回酒店去了
+ [ ] 直接连上了那台pc的TeamViewer
  + [ ] 从他浏览器的页面发现，他们内网的业务系统都在172.30.0.*段上面
  + [ ] 开始对这个段做个详细的探测
  + [ ] 开着445端口的服务器，但都不存在ms-17-010漏洞，爆破也就发现几个ftp弱口令。
  + [ ] 对信息收集得到几个web页面进行渗透，发现电子病历查询系统中存在SQL注入，判断后得出该注入权限过低，无法直接写shell，放弃该系统。
  + [ ] 收集的信息中有一个oa系统，发现可以爆破
    + [ ] 但发现存在越权漏洞，可以直接访问到管理员的配置页面。
    + [ ] 发现数据库都为sa权限，思考了一下，是否可以通过数据库提权，利用获取到的用户名和密码成功连接到数据库，数据库中泄露了不少个人信息
    + [ ] 通过XP_CMDSHELL用来执行CMD命令，使用以下命令把xp_cmdshell顺利打开，接下来就是执行cmd命令了
  + [ ] 在跳板pc上发现一个护理病历系统，并且发现是登录状态，猜测这个软件应该很多员工都安装了，于是想到从这个软件下手
    + [ ] 如果可逆向，在软件中去种马，诱导工作人员去安装，这部分过于敏感就简单的描述一下
  + [ ] 登录邮件后在通讯录里面找到大量员工邮箱地址，接下来构造一封邮件，诱导员工下载更新该带有后门的软件，等到隔天晚上2点查看结果，上线了不少用户（由于他们的用户名很容易被逆向分析出目标单位
+ [ ] FTP 找出源码
  + [ ] 查找 0day 漏洞
  + [ ] 利用T-sql语言的运算符执行优先级达到的注入效果
  + [ ] 来到后台先找上传功能
  + [ ] 发现域控服务器也在列表中，立马登录172.30.0.1，但是登录不上，这就奇怪了，尝试登录其他服务器，可以成功登录，随意登录了2台，后面就不一一登录了。
  + [ ] 抓了一下系统用户哈希，可能会暴露目标名称，打码。
  + [ ] 利用该密码去跑了一遍开了3389的服务器，得出如下结果。
  + [ ] 我们的目标是域控，域控ip能ping通但是远程桌面连不上，扫了一下端口开放了3389，为什么爆破能爆破到，但是登录的时候登录不上，思考了一下忽略了一个细节，我爆破时候，是在172.30.0.52这台服务器爆破的，不是在pc跳板机上面爆破的，因此猜想域控服务器只能通过172.30.0.*段服务器做跳板连接，因此我随意选了一台服务器172.30.0.104成功登录了域控服务器。

该0day整个的利用链

1.后台万能密码登录

2.找到上传白名单功能添加php空格可上传后缀文件

3.前台个人头像处上传文件

4.利用前台用户修改功能修改自己的信息来篡改缓存头像地址

5.在访问前台上传头像功能 会删除用户的缩略图

通过0day成功拿到了webshell，终于撕开了一个口子

提权过程也很顺利，直接利用ms15-051添加用户得到服务器权限


红队


分享 | 红队和蓝队资料汇总
https://www.freebuf.com/sectool/245234.html
国外红队常用的21种资源
https://www.freebuf.com/geek/226811.html

## [cobaltStrike](https://www.cobaltstrike.com/) 深蓝打击

一键辅助抓取360安全浏览器密码的CobaltStrike脚本
https://github.com/hayasec/360SafeBrowsergetpass
MSF sleep与CobaltStrike sleep
https://www.anquanke.com/post/id/216363
内网渗透实验：基于Cobaltstrike的一系列实验
https://www.freebuf.com/vuls/224507.html

Cobalt Strike is software for Adversary Simulations and **Red Team** Operations.
CobaltStrike's source code
https://github.com/Freakboy/CobaltStrike

红队测试从0到1 - PART 1
https://xz.aliyun.com/t/2742

CobaltStrike：红队作战的最佳框架。有很多令人惊叹的功能，你在其他任何地方都找不到。向创造这个高超工具的rsmudge致敬！当然，好的东西通常都不是免费的，它的价格为3500美元/年。
powershell Empire：这是另一个伟大的工具，可用于创建有效载荷和后期利用。Empire是一个纯粹的powershell后利用代理，建立在加密安全通信和灵活的架构之上。并且它是开源的，完全免费！感谢@ harmj0y，@ sixdub，@ enigma0x3等人创造了这么棒的工具。
