# sqlmap

## 安装

需要安装 [python](/dev/python/python.install.md)

[官网](http://sqlmap.org/) | 
[github](https://github.com/sqlmapproject/sqlmap) |
[gitee](https://gitee.com/azhao-1981/sqlmap)

## 使用

[SQLMap 从入门到入狱详细指南](https://gitbook.cn/books/5ba8393639ea516190a9b8f8/index.html)

python sqlmap.py -u "http://xxx.com/xx?id=1"
-> 识别数据库 yes
-> 测试等级 3
-> 数据库的版本号， 联合字符的注入测试 yes
-> 数据库的版本号
网上有一份根据官方提供的用户手册推荐初学者过一遍：

[SqlMap用户手册|2013](http://www.91ri.org/6775.html)

[超详细SQLMap使用攻略及技巧分享](https://www.freebuf.com/sectool/164608.html)

[sqlmap 使用教程](https://www.jianshu.com/p/65d7522ecc1f)

### cookie

http://www.91ri.org/6775.html#HTTP cookie头

### burpsuite