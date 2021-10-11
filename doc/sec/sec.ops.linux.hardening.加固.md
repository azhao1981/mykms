# linux 安全加固

## 目标

+ audit 扫描和统计Dashboard [lynis]
+ 问题原因和修复建议
+ 修复脚本

### 产出
+ 完整安全镜像 阿里/华为/腾讯/AWS
+ 运维工具
  + 修复脚本
  + root脚本：定时轮换密码，isudo + 登录就要吧进root，不需要，也不会记录密码
+ 扫描的Ansible脚本或其它工具
+ 扫描结果的分析工具
+ self-host 工具 
+ 列表：检查了哪些问题，为什么这是个问题，这个问题怎么修，我是不是有这个问题

## [lynis](https://cisofy.com/lynis/)

Lynis is a battle-tested security tool for systems running Linux, macOS, or Unix-based operating system. 
It performs an extensive health scan of your systems to support system hardening and compliance testing. 
The project is open source software with the GPL license and available since 2007.

GPL：基于之上的代码必须使用相同的协议

```bash 
git clone https://github.com/CISOfy/lynis
git clone https://gitee.com/azhao-1981/lynis.git
cd lynis; ./lynis audit system

# 常见问题： 更新内核及相关软件
sudo apt-get update
sudo apt-get upgrade
sudo apt autoremove
```

### 可选其它产品

https://www.nongnu.org/tiger/

http://www.open-scap.org/

https://github.com/OpenSCAP/openscap

## 密码轮换

lynis密码相关项

  - Checking presence GRUB                                    [ OK ]
  - Checking presence GRUB2                                   [ FOUND ]
    - Checking for password protection                        [ NONE ]
  - Check running services (systemctl)                        [ DONE ]
        Result: found 23 running services
--
  - Password file consistency                                 [ OK ]
  - Password hashing methods                                  [ SUGGESTION ]
  - Checking password hashing rounds                          [ DISABLED ]
  - Query system users (non daemons)                          [ DONE ]
  - NIS+ authentication support                               [ NOT ENABLED ]
--
    - Permissions for: /etc/sudoers                           [ OK ]
    - Permissions for: /etc/sudoers.d/README                  [ OK ]
  - PAM password strength tools                               [ SUGGESTION ]
  - PAM configuration files (pam.conf)                        [ FOUND ]
  - PAM configuration files (pam.d)                           [ FOUND ]
--
  - LDAP module in PAM                                        [ NOT FOUND ]
  - Accounts without expire date                              [ SUGGESTION ]
  - Accounts without password                                 [ OK ]
  - Locked accounts                                           [ OK ]
  - Checking user password aging (minimum)                    [ DISABLED ]
  - User password aging (maximum)                             [ DISABLED ]
  - Checking expired passwords                                [ OK ]
  - Checking Linux single user mode authentication            [ OK ]
  - Determining default umask
--
  Suggestions (47):
  ----------------------------
  * Set a password on GRUB boot loader to prevent altering boot configuration (e.g. boot in single user mode without password) [BOOT-5122]
      https://cisofy.com/lynis/controls/BOOT-5122/

--
      https://cisofy.com/lynis/controls/KRNL-5820/

  * Check PAM configuration, add rounds if applicable and expire passwords to encrypt with new values [AUTH-9229]
      https://cisofy.com/lynis/controls/AUTH-9229/

  * Configure password hashing rounds in /etc/login.defs [AUTH-9230]
      https://cisofy.com/lynis/controls/AUTH-9230/

  * Install a PAM module for password strength testing like pam_cracklib or pam_passwdqc [AUTH-9262]
      https://cisofy.com/lynis/controls/AUTH-9262/

  * When possible set expire dates for all password protected accounts [AUTH-9282]
      https://cisofy.com/lynis/controls/AUTH-9282/

  * Configure minimum password age in /etc/login.defs [AUTH-9286]
      https://cisofy.com/lynis/controls/AUTH-9286/

  * Configure maximum password age in /etc/login.defs [AUTH-9286]
      https://cisofy.com/lynis/controls/AUTH-9286/

  Password aging is not always needed on the Linux system itself. 
  For example, when using two-factor authentication, 
  central authentication with LDAP or Radius.

Ansible Vault tutorial : How to secure ssh password using vault-id encryption |Cisco Example |Part 4
https://www.youtube.com/watch?v=K1y-9pFJ6FA

https://docs.ansible.com/ansible/2.9/user_guide/vault.html

## 参考

有价值的 库 https://github.com/starnightcyber/Miscellaneous
> https://github.com/starnightcyber/Miscellaneous/tree/master/基线检查&加固
> https://www.freebuf.com/sectool/237396.html
> https://github.com/dev-sec/ansible-collection-hardening

[Linux系统安全强化指南](https://www.freebuf.com/articles/system/266248.html)

[浅谈Linux主机加固](https://www.freebuf.com/articles/system/250501.html)

[Linux操作系统加固](https://help.aliyun.com/document_detail/49809.html)

[Linux 系统的安全加固](https://www.cnblogs.com/LyShark/p/11407373.html)

