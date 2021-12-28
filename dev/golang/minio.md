

- [minio OSS 类aws的 oss](https://github.com/minio/minio)

Minio MinIO 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1206

https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=minio
http://www.nsfocus.net/index.php?os=&type_id=&keyword=minio&act=sec_bug&submit=+


MinIO Docker 快速入门
http://docs.minio.org.cn/docs/master/minio-docker-quickstart-guide
sudo docker pull minio/minio
docker pull minio/mc
docker run minio/mc ls play
docker run -it -v `pwd`:/data --entrypoint=/bin/sh minio/mc


```bash
nohup /home/opcr/bin/mc watch oss > watch.txt &
tail -f watch.txt |  grep ObjectCreated:Put | grep -e "jsp|jspx"
tail -f log | grep --line-buffer xxx | grep --line-buffer yyy
https://blog.csdn.net/qq_39338585/article/details/81736609
tail -n 0 -f watch.txt |grep --line-buffer ObjectCreated:Put|grep --line-buffer -Ei 'jsp|jspx' |awk '{print $4, $5}'
[2021-12-28T19:17:23.315Z]    0 B s3:ObjectCreated:Put https://oss.gezhishirt.club/osstest2/4.jspx
play/mybucket/myobject.txt
```

sudo docker run -p 9000:9000 -p 9001:9001 --name minio1 \
  -e "MINIO_ROOT_USER=AKIAIOSFODNN7EXAMPLE" \
  -e "MINIO_ROOT_PASSWORD=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY" \
  -v /home/ubuntu/projects/minio/data:/data \
  -v /home/ubuntu/projects/minio/config:/root/.minio \
  minio/minio server /data --console-address ":9001"

sudo docker rm minio1

https://github.com/minio/minio/blob/master/docs/orchestration/docker-compose/docker-compose.yaml


创建test bucket

http://192.168.56.140:9000/test

https://min.io/
docker pull bitnami/minio
https://hub.docker.com/r/bitnami/minio/

如何使用MinIO 建立阿里云OSS代理

https://zhuanlan.zhihu.com/p/375433718

上传
http://oss-admin.gezhishirt.club/api/v1/buckets/testoss/objects/upload


http://docs.minio.org.cn/docs/master/python-client-quickstart-guide
python

policy 应该在这里可以看到
http://docs.minio.org.cn/docs/master/python-client-api-reference#set_bucket_policy

网页上传的例子
https://blog.csdn.net/qq_43437874/article/details/120919872

全栈开发智能个人助理——MinIO(单机部署+文件备份+编程实例)

https://chowdera.com/2020/12/20201208194325065y.html#

presigned_post_policy(PostPolicy)
允许给POST操作的presigned URL设置策略条件。这些策略包括比如，接收对象上传的存储桶名称，名称前缀，过期策略。

