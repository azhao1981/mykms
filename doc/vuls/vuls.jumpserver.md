# JumpServer


开源堡垒机 JumpServer 远程命令执行漏洞风险提示

## 
官方解决通知：
[重要通知｜JumpServer漏洞通知及修复方案](https://blog.fit2cloud.com/?p=1761)

https://github.com/jumpserver/jumpserver/blob/master/README.md

+ 原理

https://sourcegraph.com/github.com/jumpserver/jumpserver/-/compare/v2.6.1...v2.6.2?visible=6

gitee.com

```bash
https://gitee.com/azhao-1981/jumpserver
git clone git@gitee.com:azhao-1981/jumpserver.git
```

由于 JumpServer 某些接口未做授权限制，攻击者可构造恶意请求获取到日志文件获取敏感信息，或者执行相关API操作控制其中所有机器

apps/ops/ws.py
        self.accept()
        改成:
        user = self.scope["user"]
        if user.is_authenticated and user.is_org_admin:
            self.accept()
        else:
            self.close()
      感觉这个才是个大问题,这就没有判断
apps/assets/tasks/common.py
  add_nodes_assets_to_system_users 用: tmp_to_root_org 来修饰
apps/audits/tasks.py
  把: clean_audits_log_period  改成 clean_login_log_period
apps/authentication/api/auth.py
  其实是去掉了:
  if self.request.query_params.get('user-only', None):
     self.permission_classes = (AllowAny,)
  https://q1mi.github.io/Django-REST-framework-documentation/api-guide/permissions_zh/
  AllowAny权限类将允许不受限制的访问，而不管该请求是否已通过身份验证或未经身份验证。
  大概就是有了 user-only 参数,这个接口就不再需要身份验证

+ 有问题接口
/api/v1/authentication/connection-token/
/api/v1/users/connection-token/

关键词:  connection-token

```python
# apps\authentication\urls\api_urls.py
path('connection-token/',
         api.UserConnectionTokenApi.as_view(), name='connection-token'),

# apps\users\urls\api_urls.py
path('connection-token/', auth_api.UserConnectionTokenApi.as_view(),
         name='connection-token')

# 1.4.9 的,好像没什么区别
path('connection-token/',
         api.UserConnectionTokenApi.as_view(), name='connection-token'),
path('connection-token/', auth_api.UserConnectionTokenApi.as_view(),
         name='connection-token'),

# apps\authentication\api\auth.py
class UserConnectionTokenApi
```

https://docs.djangoproject.com/zh-hans/3.1/topics/http/urls/

好像这个不能访问:

https://jump.xxx.com/api/v1/authentication/connection-token/?token=xxx
https://jump.xxx.com/api/v1/users/connection-token/

可能相关的功能: https://docs.jumpserver.org/zh/master/admin-guide/authentication/openid/

+ 影响版本
  + [ ] 1.4.9-2 版本（是不维护，还是没有问题）
  
< v2.6.2
< v2.5.4
< v2.4.5 
= v1.5.9

https://docs.jumpserver.org/zh/master/install/install_security/
Jumpserver 对外需要开放 80 和 2222 端口，如果配置了 ssl 还需要开放 443 端口

JumpServer 所在服务器操作系统应该升级到最新
JumpServer 依赖的软件升级到最新版本
服务器、数据库、redis 等依赖组件请勿使用弱口令密码
不推荐关闭 firewalld 和 selinux
只开放必要的端口，必要的话请通过 vpn 或者 sslvpn 访问 JumpServer
如果必须开放到外网使用，你应该部署 web 应用防火墙做安全过滤
请部署 ssl 证书通过 https 协议来访问 JumpServer
JumpServer 不要使用弱口令密码，应立即改掉默认的 admin 密码
推荐开启 MFA 功能，避免因密码泄露导致的安全问题
