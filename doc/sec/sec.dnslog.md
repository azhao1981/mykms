

## 成功

https://github.com/sa1tor/dnslog
https://github.com/azhao1981/dnslog

git clone git@github.com:azhao1981/dnslog.git
apt install python-pip
cd dnslog
pip install -r requirement.txt
python server.py --port=6002

http://sec-lab.xyz:6002/


[搭建Dnslog](https://wh0ale.github.io/2019/01/13/2019-1-13-dnslog/)
ceye: http://ceye.io/records/dns
CEYE.IO platform, which monitoring DNS queries and HTTP requests through its own DNS server and HTTP server, it can also create custom files as online payloads. It can help security researchers collect information when testing vulnerabilities (e.g. SSRF/XXE/RFI/RCE).

https://github.com/BugScanTeam/DNSLog

$ git clone git@github.com:BugScanTeam/DNSLog.git

apt install python3-pip -y
$ cd dnslog
$ pip3 install -r requirements.pip
dnslog/dnslog/settings.py
```python
   # 做 dns 记录的域名
   DNS_DOMAIN = 'xxx.club'
   
   # 记录管理的域名, 这里前缀根据个人喜好来定
   ADMIN_DOMAIN = 'admin.xxx.club'
   
   # NS域名
   NS1_DOMAIN = 'ns1.xxx.club'
   NS2_DOMAIN = 'ns2.xxx.club'
   
   # 服务器外网地址
   SERVER_IP = '1.1.1.1'
```

python3 manage.py runserver 0.0.0.0:8099
