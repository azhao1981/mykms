# sqlmap

[main](http://sqlmap.org/) | [github](https://github.com/sqlmapproject/sqlmap) | [gitee 镜像](https://gitee.com/azhao-1981/sqlmap) | [中文](https://github.com/sqlmapproject/sqlmap/blob/master/doc/translations/README-zh-CN.md) | [官方:详细用法](https://github.com/sqlmapproject/sqlmap/wiki/Usage)

##　

#### 获取

1 安装 [python](/dev/python/python.install.md)
2 下载

```bash
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
git clone https://gitee.com/azhao-1981/sqlmap.git
python ./sqlmap.py -h
```

### 使用
sqlmap -u http://xxxx/?username=xxx
要用带参数的请求给他，工具会帮你找到可以注入的参数

但这个效果好像不太好

TODO：

为什么有些接口如token,指定的话就可以？带参数分析不行

sqlmap -u http://xxxx/?username=xxx --dbs 
sqlmap -u http://xxxx/?username=xxx --current-db 
sqlmap -u http://xxxx/?username=xxx --tables -D dbname 
sqlmap -u http://xxxx/?username=xxx --columns -T tName -D dbName 
sqlmap -u http://xxxx/?username=xxx -T tName -D dbName 

场景：测试 api，token参数不是csrf

python ./sqlmap.py -u 'https://xxxx?token=xxx' -p token --batch  --dbs

--dbs



中间会有提示：

  --batch      从不询问用户输入，使用所有默认配置。

- CSRF：

GET parameter 'token' appears to hold anti-CSRF token. Do you want sqlmap to automatically update it in further requests? [y/N] 

如果有一个token参数，如上提示

符合这样的参数包括：

```python
CSRF_TOKEN_PARAMETER_INFIXES = ("csrf", "xsrf", "token")
```

TIPs: 

>  如果页面没有做 csrf 防御，token不是csrf， 那么应该选N，后面需要加一个 -p token,用于测试token是不是有注入

>  如果选y，那么sqlmap会在请求返回中找token，如果在另外的url里能获得那么应该设置一下`--csrf-url`
>
> 如果不能获取，程序结束，报 user quit 

其它相关csrf的参数

--csrf-token=参数用来保存反CSRF令牌

--csrf-url=CSRFURL URL地址访问提取anti-CSRF令牌

TODO: 以rails devise 登录界面为例子

相关代码 lib\core\target.py

选y找不到会返回

[17:24:55] [CRITICAL] anti-CSRF token 'token' can't be found at 'https://xxxx'. You can try to rerun by providing a valid value for option '--csrf-url'

- cookie

you have not declared cookie(s), while server wants to set its own ('aliyungf_tc=aa9a0466b82...dc1726a4f3'). Do you want to use those [Y/n] 

正常选Y，--batch 忽略



 思考：

sqlmap 会把数据存在一个目录里，最后会告诉你在哪里，但怎么能读出来，（有的像是64编码或加密）

能不能把请求存起来，像 burpsuite的请求那样

命中的payload可以保存，以下次做验证



## [SQL 注入原理](./sec.hack.web.inject.sql.md)

### SQL map原理

使用 sqlmap -v 4 可以看到测试过程中发出去的 payload 和 url

> -v  VERBOSE  信息级别:  0-6 （缺省1）
>
> “0”只显示python错误以及严重的信息；
>
> 1同时显示基本信息和警告信息（默认）；
>
> “2”同时显示debug信息；
>
> “3”同时显示注入的payload；
>
> “4”同时显示HTTP请求；
>
> “5”同时显示HTTP响应头；
>
> “6”同时显示HTTP响应页面；
>
> 如果想看到sqlmap发送的测试payload最好的等级就是3。



https://rails-sqli.org/

[Rails 中 ActiveRecord 的不当使用产生 SQLi 风险](https://zhuanlan.zhihu.com/p/27131797)

User.where("name = '#{params[:name]}' AND password = '#{params[:password]}'")
name为“') OR 1=1--
SELECT "users".* FROM "users" WHERE (name = '') OR 1=1--' AND password = '')


### error: missing one or more core extensions ('bz2')

google: ubuntu python missing  bz2

[ref](https://stackoverflow.com/questions/12806122/missing-python-bz2-module)

```bash
sudo apt-get install libbz2-dev
sudo yum install bzip2-devel

cd  ~/.pyenv/cache/
pyenv uninstall 3.8.4
pyenv install 3.8.4
```

可选：可以直接用 python2　sqlmap.py -h

## 使用

python sqlmap.py -u "https://demo.udeskcs.com/users/sign_in" --batch --banner

-l: 指定一个Burp或WebScarab的代理日志文件，Sqlmap将从日志文件中解析出可能的攻击目标，并逐个尝试进行注入。该参数后跟一个表示日志文件的路径；

示例：python2.7 sqlmap.py -l ../proxy.log

python sqlmap.py -l /mnt/d/dev/burpsuit/logs/arm.log

-r:可以将一个HTTP请求保存在文件中，然后使用参数“-r”加载该文件

示例：pythonsqlmap.py-rget.txt

[安全性测试中​SQL注入sqlmap工具推荐](https://www.jianshu.com/p/324a3ada32a1)

[使用Burp, Sqlmap进行自动化SQL注入渗透测试](https://t0data.gitbooks.io/burpsuite/content/chapter18.html)

[SqlMap用户手册](https://www.secpulse.com/archives/4213.html)

<https://portswigger.net/support/using-burp-with-sqlmap>


curl -i -s -k -X $'POST' \
    -H $'Accept: application/json' -H $'User-Agent: rest-client/2.1.0 (mingw32 x86_64) ruby/2.6.6p146' -H $'Token: 352b1e0210a53b048571b8267ecb3cbc6a259ea16f91f01de9a100a0e4a6b973' -H $'Content-Type: application/json' -H $'Content-Length: 297' -H $'Accept-Encoding: gzip, deflate' -H $'Host: avs.t3.tryudesk.com' -H $'Connection: close' \
    --data-binary $'{\"sdkAppId\":\"fK8AsmsUg5VYQdyP\",\"bizId\":\"test_biz_id11\",\"lockedSecond\":60,\"lockedAgentId\":1977,\"customerInfo\":{\"customerToken\":\"testcustomer_1\",\"nickName\":\"\xe6\xb5\x8b\xe8\xaf\x95\xe7\x94\xa8\xe6\x88\xb7\",\"openId\":\"testcustomer_1_openId\",\"customFields\":{\"TextField_6166\":\"DAD2105260000003\"},\"telephones\":[{\"content\":\"17654331122\"}]}}' \
    $'https://avs.t3.tryudesk.com/avs/openApi/v1/wechatSchema?appId=ej9i&nonce=16822c5e-ca39-4ea6-b40b-8825e91d6c08&timestap=1623836927626'
[SQLMap 从入门到入狱详细指南](https://gitbook.cn/books/5ba8393639ea516190a9b8f8/index.html)

SQLMAP用法大全
https://www.cnblogs.com/qiudabai/p/8955903.html


python sqlmap.py -u "http://xxx.com/xx?id=1"
-> 识别数据库 yes
-> 测试等级 3
-> 数据库的版本号， 联合字符的注入测试 yes
-> 数据库的版本号
网上有一份根据官方提供的用户手册推荐初学者过一遍：

[SqlMap用户手册|2013](http://www.91ri.org/6775.html)
http://www.91ri.org/6775.html#HTTP cookie头

[超详细SQLMap使用攻略及技巧分享](https://www.freebuf.com/sectool/164608.html)

[sqlmap 使用教程](https://www.jianshu.com/p/65d7522ecc1f)

### burpsuite

## 参考

[PostgreSQL注入：不在SQLMap一把梭](https://www.freebuf.com/articles/web/248843.html)

[资源下载|小木人](http://www.xwood.net/_site_domain_/_root/5870/5930/5932/index.html)

[以前rails的](https://github.com/sqlmapproject/sqlmap/issues/1239)

[rails sqli](https://rails-sqli.org/)

#### 参考：

[超详细SQLMap使用攻略及技巧分享](https://www.freebuf.com/sectool/164608.html)

[PentestBox window 的集成渗透测试工具](https://pentestbox.org/zh/)

sqlmap源码简析（一）
https://www.freebuf.com/articles/network/232047.html
Automatic SQL injection and database takeover tool
https://github.com/sqlmapproject/sqlmap

Sqlmap使用详解
https://www.anquanke.com/post/id/235846
细说 sqlmap_api
https://paper.seebug.org/940/
[sqlmap源码解读（3）](https://www.anquanke.com/post/id/247452)
[sqlmap源码解读（1）](https://www.anquanke.com/post/id/247450)

[SQLMAP源码分析Part1](https://wooyun.js.org/drops/SQLMAP源码分析Part1.流程篇.html)

[sqlmap 源码分析（二）初始化](https://lorexxar.cn/2016/08/11/sqlmap-source2/)


sqlmap4burp++是一款兼容Windows，mac，linux多个系统平台的Burp与sqlmap联动插件
https://github.com/c0ny1/sqlmap4burp-plus-plus/

[burpsuite安装sqlmap插件](https://www.cnblogs.com/zcz1995/articles/10467297.html)

[burp插件大全 漏洞扫描 waf绕过 sql XSS 命令注入 fuzzer](https://www.ddosi.com/b226/)

自定义payload
https://www.trustwave.com/en-us/resources/blogs/spiderlabs-blog/sqlmap-tricks-for-advanced-sql-injection/

SQLMap - Cheetsheat
https://book.hacktricks.xyz/pentesting-web/sql-injection/sqlmap

扩展阅读
https://book.hacktricks.xyz/

Sqlmap Advanced Guide

https://www.scanforsecurity.com/scanning-techniques/sqlmap-advanced-guide.html

SQLMap Cheat Sheet : The Lazy Man’s Guide
https://thedarksource.com/sqlmap-cheat-sheet/

http://kaoticcreations.blogspot.com/2011/05/sqlmap-volume-2-tips-tricks.html