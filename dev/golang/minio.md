

- [minio OSS 类aws的 oss](https://github.com/minio/minio)

Minio MinIO 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202103-1206



MinIO Docker 快速入门
http://docs.minio.org.cn/docs/master/minio-docker-quickstart-guide
sudo docker pull minio/minio


sudo docker run -p 9000:9000 -p 9001:9001 --name minio1 \
  -e "MINIO_ROOT_USER=AKIAIOSFODNN7EXAMPLE" \
  -e "MINIO_ROOT_PASSWORD=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY" \
  -v /home/ubuntu/projects/minio/data:/data \
  -v /home/ubuntu/projects/minio/config:/root/.minio \
  minio/minio server /data --console-address ":9001"

sudo docker rm minio1

创建test bucket

http://192.168.56.140:9000/test

https://min.io/
docker pull bitnami/minio
https://hub.docker.com/r/bitnami/minio/

如何使用MinIO 建立阿里云OSS代理

https://zhuanlan.zhihu.com/p/375433718


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

