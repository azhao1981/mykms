# mysql

## 创建库

应该用什么字符集
```sql
-- 所以推荐用这个
CREATE DATABASE confluence CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

create database vault default character set utf8mb4 collate utf8mb4_unicode_ci;
create database vault_demo default character set utf8mb4 collate utf8mb4_unicode_ci;
```

[Mysql的utf8与utf8mb4区别，utf8mb4_bin、utf8mb4_general_ci、utf8mb4_unicode_ci区别](https://blog.csdn.net/yzh_1346983557/article/details/89643071)
> ci即case insensitive，不区分大小写
> general_ci 更快，unicode_ci 更准确
> utf8mb4_bin：将字符串每个字符用二进制数据编译存储，区分大小写，而且可以存二进制的内容。

## 执行

4.使用mysql命令执行
H:\>mysql -uaHmin -p -e "select now()"


MySQL慢查询日志总结
https://www.cnblogs.com/kerrycode/p/5593204.html

show variables  like '%slow_query_log%';
set global slow_query_log=1;
show variables like 'long_query_time%';
set global long_query_time=1;
set global log_queries_not_using_indexes=1;

系统变量log-queries-not-using-indexes：未使用索引的查询也被记录到慢查询日志中（可选项）。如果调优的话，建议开启这个选项。另外，开启了这个参数，其实使用full index scan的sql也会被记录到慢查询日志。
show variables like 'log_queries_not_using_indexes';

新连接才会生效

工具
mysqldumpslow -s r -t 10 /database/mysql/mysql06_slow.log

这个配置好像会造成起不来
slow_query_log =1
long_query_time=0.5
log_queries_not_using_indexes=1

[查看Mysql正在执行的事务、锁、等待](https://cloud.tencent.com/developer/article/1401617)

```sql
show processlist;
show OPEN TABLES where In_use > 0; 
show status like '%lock%'
--- 当前运行的所有事务
select * from information_schema.innodb_trx\G;
select * from information_schema.innodb_trx;
--- 当前出现的锁
select * from information_schema.innodb_locks\G;
--- 锁等待的对应关系 
select * from information_schema.innodb_lock_waits\G;
--- 查看锁的情况
show status like 'innodb_row_lock_%';
```

