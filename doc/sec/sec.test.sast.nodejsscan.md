主页：https://github.com/ajinabraham/nodejsscan
语言：python
特点：
    可以检测缓冲区溢出漏洞和针对Java的十大OWASP漏洞 |　java?
    文件总览和整个代码库都可以通过统计数据和饼图做到可视化
    每种语言都有一个配置文件，可以根据自定义检索进行修改
    轻松与DevSecOps CI/CD管道集成，并以JSON格式生成扫描结果

+ 安装 nodejsscan 服务

参考 <https://cloud.tencent.com/developer/article/1146634>

+ 依赖 postgres 做为数据库

[docker  postgres](https://hub.docker.com/_/postgres?tab=description)

```bash
docker pull daocloud.io/postgres:12.3
docker pull postgres
```

```yaml
version: '3.1'
services:
  db:
    image: postgres
    restart: always
    environment:
      POSTGRES_PASSWORD: example
  adminer:
    image: adminer
    restart: always
    ports:
      - 8080:8080
```

+ navicat 15 windows 破解版

官网 https://www.navicat.com.cn/ 下载最新版本下载安装
http://download.navicat.com/download/navicat150_premium_cs_x64.exe

[Navicat Premium 15 安装与激活](https://springboot.io/t/topic/1314)
整个过程不需要断网，也不需要把注册机放在 Navicat 的安装目录下。
先关闭杀毒软件
链接：https://pan.baidu.com/s/1lU8PZfrgLz1SIHV6SW5jsw
提取码：0d4v

+ 安装依赖
pip install -r requirements.txt

+ 创建数据

先创建数据 nodejsscan
修改 core/settings.py
SQLALCHEMY_DATABASE_URI = 'postgresql://postgres:xxx@127.0.0.1/nodejsscan'
python manage.py recreate_db

+ 运行

参考 run.sh
```bash
  gunicorn -b 0.0.0.0:9090 nodejsscan.app:app --workers=1 --threads=10 --timeout 1800
```

+ 使用

  上传以zip形式压缩的NodeJs代码即可扫描

+ 可以直安装和使用客户端

```bash
pip install nodejsscan
cd app_dir
nodejsscan -d .
```

能把客户端的结果上传给服务器吗？

这个还有一些别的好东西：
https://www.cnblogs.com/zdz8207/p/nodejs-nodejsscan.html