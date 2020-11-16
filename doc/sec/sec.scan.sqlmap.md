# sqlmap

[main](http://sqlmap.org/) | 
[github](https://github.com/sqlmapproject/sqlmap) |
[中文](https://github.com/sqlmapproject/sqlmap/blob/master/doc/translations/README-zh-CN.md) |

##　获取

```bash
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
python sqlmap.py -h
```

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

-l:指定一个Burp或WebScarab的代理日志文件，Sqlmap将从日志文件中解析出可能的攻击目标，并逐个尝试进行注入。该参数后跟一个表示日志文件的路径；

示例：python2.7 sqlmap.py -l ../proxy.log

python sqlmap.py -l /mnt/d/dev/burpsuit/logs/arm.log

-r:可以将一个HTTP请求保存在文件中，然后使用参数“-r”加载该文件

示例：pythonsqlmap.py-rget.txt

[安全性测试中​SQL注入sqlmap工具推荐](https://www.jianshu.com/p/324a3ada32a1)

[使用Burp, Sqlmap进行自动化SQL注入渗透测试](https://t0data.gitbooks.io/burpsuite/content/chapter18.html)

[SqlMap用户手册](https://www.secpulse.com/archives/4213.html)

<https://portswigger.net/support/using-burp-with-sqlmap>

## 参考

[PostgreSQL注入：不在SQLMap一把梭](https://www.freebuf.com/articles/web/248843.html)

[资源下载|小木人](http://www.xwood.net/_site_domain_/_root/5870/5930/5932/index.html)

[以前rails的](https://github.com/sqlmapproject/sqlmap/issues/1239)

[rails sqli](https://rails-sqli.org/)