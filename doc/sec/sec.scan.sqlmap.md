# sqlmap

[main](http://sqlmap.org/) | 
[github](https://github.com/sqlmapproject/sqlmap) |
[中文](https://github.com/sqlmapproject/sqlmap/blob/master/doc/translations/README-zh-CN.md) |

##　获取

```bash
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
python sqlmap.py -h
```

需要安装 [python](/dev/python/python.install.md)

[官网](http://sqlmap.org/) | 
[github](https://github.com/sqlmapproject/sqlmap) |
[gitee](https://gitee.com/azhao-1981/sqlmap)

## 原理

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