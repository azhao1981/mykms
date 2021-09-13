podman apt安装需要ubuntu20.10，但wsl不能直接装，需要升级来装
https://0xzx.com/202010240500903592.html
如何在Windows 10的WSL中​​升级到Ubuntu 20.10
https://podman.io/getting-started/
如何在 Windows 安全中心设置白名单
https://consumer.huawei.com/cn/support/content/zh-cn00694627/


Podman 初次体验

https://zdyxry.github.io/2019/10/12/Podman-%E5%88%9D%E6%AC%A1%E4%BD%93%E9%AA%8C/

. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:testing.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update -qq
sudo apt-get -qq -y install podman

debian升级到11后可以直接安装
rocky7。8都可以直接安装

+ 如果查看k8s是用了 docker还是podman

Podman配置与使用
https://zhuanlan.zhihu.com/p/110394125

前端 用 podman 代替 docker
https://www.dazhuanlan.com/leonbeijing/topics/1440258

podman run alpine:latest echo hello from podman

sudo sysctl kernel.unprivileged_userns_clone=1
sudo sysctl kernel.unprivileged_userns_clone

sysctl
https://github.com/mgoltzsche/podman-static
curl -fsSL -o podman-linux-amd64.tar.gz https://github.com/mgoltzsche/podman-static/releases/latest/download/podman-linux-amd64.tar.gz
tar -xzf podman-linux-amd64.tar.gz
sudo cp -r podman-linux-amd64/usr podman-linux-amd64/etc /

```bash
unqualified-search-registries = ["docker.io"]

[[registry]]
prefix = "docker.io"
insecure = false
blocked = false
location = "docker.io"
[[registry.mirror]]
location = "hub-mirror.c.163.com"
[[registry.mirror]]
location = "registry.docker-cn.com"
```
https://lisongmin.github.io/tools-podman/