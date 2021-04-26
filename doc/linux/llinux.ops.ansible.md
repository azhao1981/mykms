
## ansible系列：判断进程是否存在
原文链接：https://blog.csdn.net/VIP099/article/details/105540475
- hosts: group-zabbix

  ignore_errors: True
  tasks:
  - name: 统计进程
    shell: ps -ef | grep zabbix4.4 |wc -l
    register: check_value


  - name: 输出信息
    shell: echo "进程存在"
    when: check_value.stdout|int > 0