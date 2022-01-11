# minikube

## [QuickStart](https://minikube.sigs.k8s.io/docs/start/)

Minikube 可以在本地单机上运行Kubernetes集群的工具。Minikube可跨平台工作，不需要虚拟机，不需要在MacOS或Windows上安装Linux。支持多种容器，如Docker，CRI-O，Containerd等。

```powershell
New-Item -Path 'c:\' -Name 'minikube' -ItemType Directory -Force
Invoke-WebRequest -OutFile 'c:\minikube\minikube.exe' -Uri 'https://github.com/kubernetes/minikube/releases/latest/download/minikube-windows-amd64.exe' -UseBasicParsing
# Add the binary in to your PATH.
$oldPath = [Environment]::GetEnvironmentVariable('Path', [EnvironmentVariableTarget]::Machine)
if ($oldPath.Split(';') -inotcontains 'C:\minikube'){ `
  [Environment]::SetEnvironmentVariable('Path', $('{0};C:\minikube' -f $oldPath), [EnvironmentVariableTarget]::Machine) `
}

cd D:\dev\Kubernetes\Minikube
minikube start
# 报了一个错误：🔥  Creating docker container (CPUs=2, Memory=1979MB) ...\ E0111 17:41:10.031032   24404 kic.go:267] icacls failed applying permissions - err - [%!s(<nil>)], output - [�Ѵ������ļ�: C:\Users\azhao\.minikube\machines\minikube\id_rsa
# �ѳɹ����� 1 ���ļ�; ���� 0 ���ļ�ʱʧ��]

# 会下载 kubectl 工具镜像
minikube kubectl --
alias kubectl="minikube kubectl --"

minikube kubectl -- get po -A

# 一个google风格的后台管理界面
./minikube dashboard

# k8s.gcr.io 是不通的，所以需要自己下载
./minikube kubectl -- create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.4


./minikube kubectl -- expose deployment hello-minikube --type=NodePort --port=8080
./minikube kubectl -- get services hello-minikube

./minikube kubectl -- service hello-minikube
# Error: flags cannot be placed before plugin name: --cluster
# 因为这个没有kubectl
./minikube service hello-minikube
./minikube kubectl -- port-forward service/hello-minikube 7080:8080

PS D:\dev\Kubernetes\Minikube> ./minikube kubectl -- get pods
NAME                              READY   STATUS             RESTARTS   AGE
hello-minikube-6ddfcc9757-ztsbf   0/1     ImagePullBackOff   0          15m
# 说明没有拉下来

https://hub.docker.com/r/cilium/echoserver/tags
docker pull cilium/echoserver
# 这里还有一个，写得比较清楚
https://github.com/Ealenn/Echo-Server
https://hub.docker.com/r/ealen/echo-server

./minikube kubectl -- delete deployment hello-minikube
./minikube kubectl -- create deployment hello-minikube --image=cilium/echoserver
./minikube kubectl -- get pods
# 成功
./minikube kubectl -- port-forward service/hello-minikube 7080:8080
Forwarding from 127.0.0.1:7080 -> 8080
Forwarding from [::1]:7080 -> 8080
Handling connection for 7080
Handling connection for 7080
E0111 18:30:22.137425   23860 portforward.go:400] an error occurred forwarding 7080 -> 8080: error forwarding port 8080 to pod ac62e89cc9bf8e9b8ef5eb2c262fe0b7294f6fbdba4734d8987c896212cab249, uid : exit status 1: 2022/01/11 10:30:22 socat[13859] E connect(5, AF=2 127.0.0.1:8080, 16): Connection refused
```

镜像慢问题：
Windows环境：
minikube start --image-mirror-country="cn"


## rocky

https://github.com/kubernetes/minikube/releases/
sudo install minikube-linux-amd64 /usr/local/bin/minikube


https://www.cnblogs.com/wswind/p/14420803.html
Linux环境：

```bash
minikube start --driver='docker' --image-mirror-country='cn' --image-repository='registry.cn-hangzhou.aliyuncs.com/google_containers'
#or bare metal
sudo minikube start --driver='none' --image-mirror-country='cn' --image-repository='registry.cn-hangzhou.aliyuncs.com/google_containers'
```

registry.cn-hangzhou.aliyuncs.com/google_containers
还是报错

这个应该是宿主机上装的，然后装 vxbox
sudo dnf -y install qemu-kvm libvirt virt-install

lsmod | grep kvm
grep -E --color 'vmx|svm' /proc/cpuinfo

https://www.cnblogs.com/xiaochina/p/11616320.html
minikube国内在线部署体验 


https://techviewleo.com/run-local-kubernetes-on-rocky-almalinux-with-minikube/


--iso-url=[https://storage.googleapis.com/minikube/iso/minikube-v1.24.0.iso,https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-v1.24.0.iso,https://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/iso/minikube-v1.24.0.iso]: