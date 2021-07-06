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

https://docs.ansible.com/ansible/2.3/script_module.html

Ansible 介绍及使用
https://einverne.github.io/post/2020/05/ansible-introduction.html