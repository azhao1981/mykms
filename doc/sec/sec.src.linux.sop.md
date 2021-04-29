# linux 应急响应SOP

+ [ ] 阻断： 将主机移动至隔离组，断开网络
  + [ ] 镜像当前网络 流量top、端口、等
  + [ ] 防火墙或安全组隔离
+ [ ] top 最直接查看谁占用的cpu最多
+ [ ] ps 备份进程
+ [ ] warroom: 初步判断是 误报/执行/感染/控制 ，非误报情况下，开 warroom
+ [ ] 恢复业务
  + [ ] 除误报外，其它情况，或主机业务很重要，直接申请新开主机重开业务，原主机不再加入生产
  + [ ] 大至判断问题来源，对新开主机进行限制并重启服务
+ [ ] 问题朔源
  + [ ] 安装 rthunter 并扫描
  + [ ] 安装 clamav 并扫描
  + [ ] 如果发现有问题的脚本，或病毒文件，上传到 virscan https://www.virscan.org/language/zh-cn/ 判断
  + [ ] 尽量发现原因，重现入侵现场
+ [ ] 发布完整整改方案

./busybox netstat -pantu | ./busybox grep -E "Proto|LIST"
./busybox netstat -pantu | ./busybox grep -E "Proto|EST"
busybox的ps命令不支持-Heo参数
ps -Heo user,pid,ppid,tty,%cpu,%mem,lstart,etime,cmd | grep ""

ps:  -o user,group,comm,args,pid,ppid,pgid,etime,nice,rgroup,ruser,time,tty,vsz,sid,stat,rss
sudo ./busybox ps -efo user,group,comm,args,pid,ppid,pgid,etime,nice,rgroup,ruser,time,tty,vsz,sid,stat,rss | grep ""

使用命令过滤已启动的操作系统程序
./busybox ps | ./busybox awk -F " " '{$3=""; sub(/ /,"\t"); sub(/  /,"\t\t"); print}' | ./busybox grep -E "^[0-9]+\s[A-Za-z0-9]+\s+[/|A-Za-z0-9]"

https://gitlab.com/procps-ng/procps

[Linux应急响应笔记](https://www.freebuf.com/articles/network/248376.html) 

[Linux应急响应笔记（二）|需要应用到实践](https://www.freebuf.com/articles/others-articles/257827.html)

[Linux应急响应姿势浅谈](http://3ms.huawei.com/hi/group/2034125/file_10823427.html?for_statistic_from=my_group_file)

[linux操作系统入侵检查流程](https://www.freebuf.com/articles/system/270227.html)

[busybox](doc\sec\sec.hack.tool.busybox.md)

