# ansible

## 安装
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

```bash
pip install --upgrade pip
python -m pip install wheel
python -m pip install ansible
python -m pip install paramiko
```

如果是kali，需要sudo安装，不然找不到

## 使用

ansible xxxx -m script -a "scripts/ssh_key_fp.py"

[ansible之shell和script模块 ](https://blog.51cto.com/noodle/1769474)

[非常好的Ansible入门教程（超简单）](https://blog.csdn.net/pushiqiang/article/details/78126063)

ansible my -i ./hosts remote -m ping

https://docs.ansible.com/ansible/2.3/script_module.html

Ansible 介绍及使用
https://einverne.github.io/post/2020/05/ansible-introduction.html


### 怎么把结果保存到本地

Ansible--高级技巧
https://czero000.github.io/2016/10/19/the-advanced-ansible.html

本地操作功能
ansible 默认只会对定义好的被控机执行命令，如果要在本地也执行操作，可以使用 delegate_to 功能，当然还有另外一种更好的方式：local_action

google:ansible local_action stdout_lines
https://stackoverflow.com/questions/49502315/local-action-copy-content-file-format/49523734
这个可以了，放在Playbooks的目录下
local_action: copy content={{ check.stdout_lines }} dest=ssh_key_fp.txt
stdout显示更好，stdout_lines是一个数组
local_action: copy content={{ check.stdout }} dest=ssh_key_fp.txt
使用插件

ansible调用callbacks插件 保存执行结果
 
https://www.pianshen.com/article/65451571007/

这个好像很复杂
使用 ARA 记录 Ansible 执行结果
https://ansible.leops.cn/advanced/ara/

### 怎么下载文件


Ansible 日常使用技巧 - 运维总结
 
https://www.cnblogs.com/kevingrace/p/11647338.html
Ansible详解（一）
https://blog.51cto.com/hmtk520/2058103
    -t Directory, --tree=Directory 将内容保存在该输出目录,结果保存在一个文件中在每台主机上。
但不是我想要的结果

不会吧？只有我最后知道Ansible还能验证配置的吗？

https://zhuanlan.zhihu.com/p/326200976

隐私提示：
https://devcentral.f5.com/s/question/0D51T00006oFhC2/ansible-how-do-i-save-config-file-by-using-playbook