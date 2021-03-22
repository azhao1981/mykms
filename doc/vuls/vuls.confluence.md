
# confluence

##　CVE-2019-3396


docker
https://hub.docker.com/r/atlassian/confluence-server/tags?page=1&ordering=last_updated&name=6.6.
https://hub.docker.com/r/cptactionhank/atlassian-confluence

破解
https://gitee.com/pengzhile/atlassian-agent

https://blog.51cto.com/wzlinux/2494063
我用 docker 部署 JIRA 和 Confluence（破解版）

Atlassian Confluence 6.6.1 

https://www.cvedetails.com/cve/CVE-2019-3396/
The Widget Connector macro in Atlassian Confluence Server before version 6.6.12 (the fixed version for 6.6.x), from version 6.7.0 before 6.12.3 (the fixed version for 6.12.x), from version 6.13.0 before 6.13.3 (the fixed version for 6.13.x), and from version 6.14.0 before 6.14.2 (the fixed version for 6.14.x), allows remote attackers to achieve path traversal and remote code execution on a Confluence Server or Data Center instance via server-side template injection.
需要升级到6.6.12以上，小版本升级不涉及功能或数据库表 6.6.17
docker pull atlassian/confluence-server:6.6.17
docker pull atlassian/confluence-server:6.6.1

或 6.13.20 6.x最高版本
docker pull atlassian/confluence-server:6.15.10

或 7.4.8 长维护最新版本 
docker pull atlassian/confluence-server:7.4.8

最新版本
docker pull cptactionhank/atlassian-confluence:7.9.3
docker pull cptactionhank/atlassian-confluence:6.15.9
有问题的版本
docker pull cptactionhank/atlassian-confluence:6.12.2

docker save atlassian/confluence-server:6.15.10 > confluence.6.15.10.tar
docker save atlassian/confluence-server:7.4.8 > confluence.7.4.8.tar
docker save cptactionhank/atlassian-confluence:6.12.2 > confluence.6.12.2.tar

docker save cptactionhank/atlassian-confluence:7.9.3 > confluence.7.9.3.tar
docker save cptactionhank/atlassian-confluence:6.15.9 > confluence.6.15.9.tar


https://my.oschina.net/u/4270238/blog/4074414
Docker安装JIRA和Confluence（破解版）


https://hub.docker.com/r/atlassian/jira-software
https://hub.docker.com/r/cptactionhank/atlassian-jira-software
Atlassian JIRA Project Management Software (v7.6.1#76002-sha1:21e6670)  About JIRA  Report a problem
docker pull cptactionhank/atlassian-jira-software:7.6.1
docker pull cptactionhank/atlassian-jira-software:7.6.3
docker pull cptactionhank/atlassian-jira-software:7.13.1
docker pull atlassian/jira-software:8.13.4

docker save cptactionhank/atlassian-jira-software:7.6.1 > jira.7.6.1.tar
docker save cptactionhank/atlassian-jira-software:7.6.3 > jira.7.6.3.tar
docker save cptactionhank/atlassian-jira-software:7.13.1 > jira.7.13.1.tar
docker save atlassian/jira-software:8.13.4 > jira.8.13.4.tar
没有这个镜像
Atlassian JIRA Project Management Software (v6.3.10#6340-sha1:7ea293a)  About JIRA  Report a problem

GitLab Community Edition 8.13.6 69cda01 Check
docker pull gitlab/gitlab-ce:8.13.6-ce.0
docker pull gitlab/gitlab-ce:8.13.12-ce.0
docker pull gitlab/gitlab-ce:8.17.8-ce.0
docker pull gitlab/gitlab-ce:13.10.0-ce.0

docker save gitlab/gitlab-ce:8.13.6-ce.0 >　gitlab.8.13.6.tar
docker save gitlab/gitlab-ce:8.13.12-ce.0 >　gitlab.8.13.12.tar
docker save gitlab/gitlab-ce:8.17.8-ce.0 >　gitlab.8.17.8.tar
docker save gitlab/gitlab-ce:13.10.0-ce.0 >　gitlab.13.10.0.tar
Docker - 实现本地镜像的导出、导入（export、import、save、load）

https://www.hangge.com/blog/cache/detail_2411.html


https://blog.csdn.net/xiangxianghehe/article/details/105688062
Ubuntu 20.04换国内源 清华源 阿里源 中科大源 163源

docker run -it -v /home/kali/Documents/opensources/atl-agent:/agent atlassian/confluence-server:6.6.1 bash

apt update
apt install maven
$ docker commit 87354329121e  atlassian/confluence-server:6.6.1.1
mvn package

docker run -it -v /home/kali/Documents/opensources/atl-agent:/agent atlassian/confluence-server:6.6.1.1 bash

