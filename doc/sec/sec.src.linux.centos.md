# centos 应急响应

## 日志有点不一样

哪个key登录了机器
https://unix.stackexchange.com/questions/15575/can-i-find-out-which-ssh-key-was-used-to-access-an-account

1、 lastlog 列出所有用户最近登录的信息
 2、last  列出当前和曾经登入系统的用户信息
  last -x -F
3、lastb  列出失败尝试的登录信息
[linux centos7查看linux的登录日志](https://blog.csdn.net/z13615480737/article/details/83029118)

[使用 awk、grep 等命令简单分析服务器 auth 日志 查找 ssh 暴力攻击](https://es2q.com/blog/2020/02/15/using_awk_grep_analysis_auth_log-ssh/)

https://unix.stackexchange.com/questions/15575/can-i-find-out-which-ssh-key-was-used-to-access-an-account
/etc/ssh/sshd_config
LogLevel VERBOSE