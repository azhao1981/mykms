# 202111

## 20211102

浅谈反向代理技术
https://www.freebuf.com/articles/web/293165.html

基于Nmap的二次开发
https://www.freebuf.com/sectool/291087.html

详细分析GitLab CE 已遭在野利用漏洞 (CVE-2021-22205)
https://blog.csdn.net/smellycat000/article/details/121005824

https://github.com/CsEnox/Gitlab-Exiftool-RCE
```bash
# https://hub.docker.com/r/gitlab/gitlab-ce/tags?page=1&name=13.10.2
docker pull gitlab/gitlab-ce:13.10.2-ce.0

export GITLAB_HOME=/srv/gitlab

sudo docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:13.10.2-ce.0
```
其它POC： https://github.com/r0eXpeR/CVE-2021-22205

https://hackerone.com/reports/1154542

Gitlab 13.10.2 - Remote Code Execution (Authenticated)
https://www.exploit-db.com/exploits/49951

