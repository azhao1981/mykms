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