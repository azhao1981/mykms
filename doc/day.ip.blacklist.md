# 业界ip黑名单

## 在线工具

在线工具(推荐)： <https://multirbl.valli.org/>

[在线2](https://zh-hans.ipshu.com/blacklist_check)

## 开源库

[IP Blocklist for Ipset / Squid-Cache](https://github.com/maravento/blackip)

[gitee mirror](https://gitee.com/azhao-1981/blackip)

[Threat intelligence](https://github.com/JavaGarcia/Neanet)

[Automatically compiled and maintained malicious domain blacklist.](https://github.com/T145/the-blacklist)

- <https://github.com/T145/the-blacklist/releases/download/latest-domain/black_domain.txt>
- <https://github.com/T145/the-blacklist/releases/download/latest-ipv4/black_ipv4.txt>
- <https://github.com/T145/the-blacklist/releases/download/latest-ipv4/black_ipv4_cidr.txt>
- <https://github.com/T145/the-blacklist/releases/download/latest-ipv6/black_ipv6.txt>

```bash
# 这个只有几个TXT，但不能知道是什么原因
git clone --depth=1 https://gitee.com/azhao-1981/Neanet
grep xxx blacklists/*.txt

git clone --depth=1 https://gitee.com/azhao-1981/the-blacklist
wget 'https://github.com/T145/the-blacklist/releases/download/latest-ipv4/black_ipv4.txt'
wget 'https://github.com/T145/the-blacklist/releases/download/latest-ipv4/black_ipv4_cidr.txt'
grep xxx *.txt

git clone --depth=1 https://gitee.com/azhao-1981/blackip
tar xvf blackip.tar.gz
grep xxx blackip.txt
```




