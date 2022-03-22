
# [OSquery](https://github.com/osquery/osquery)

　　OSquery是Facebook刚刚发布的一个安全工具，为安全专业人士提供了一个可调用底层操作系统功能的系统，例如启动进程、加载内核模块、在SQL数据库表中打开网络连接进行查询和监控等。

https://osquery.readthedocs.io/en/latest/introduction/using-osqueryi/

```sql
-- osqueryi
SELECT DISTINCT processes.name, listening_ports.port, processes.pid
  FROM listening_ports JOIN processes USING (pid)
  WHERE listening_ports.address = '0.0.0.0';
SELECT * FROM users;
SELECT * FROM processes WHERE on_disk = 0;
SELECT name FROM processes WHERE name like '%chrome%';

SELECT DISTINCT processes.name, listening_ports.port, processes.pid
  FROM listening_ports JOIN processes USING (pid)
  WHERE listening_ports.address = '0.0.0.0';
  
.tables
.schema routes
```
https://github.com/teoseller/osquery-attck

https://gitee.com/azhao-1981/osquery-attck
