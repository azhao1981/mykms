# anaconda

## 安装
深度学习 | Anaconda安装Tensorflow
https://zhuanlan.zhihu.com/p/84568790
conda create -n tf python=3.7
activate tf
conda install tensorflow==1.8
conda install tensorflow==1.14



### [深度学习] Anaconda下TensorFlow + Keras配置指南

https://zhuanlan.zhihu.com/p/36551413

为Conda添加清华软件源
https://zhuanlan.zhihu.com/p/47663391

```bash
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
# 以上两条是Anaconda官方库的镜像
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
# 以上是Anaconda第三方库 Conda Forge的镜像
# for linux
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
# for legacy win-64
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/peterjc123/
以上两条是Pytorch的Anaconda第三方镜像
conda config --set show_channel_urls yes
```
添加完成后可以使用
conda info
命令查看是否添加成功.

Anaconda 镜像使用帮助

https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/

Anaconda 安装包可以到 https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/ 下载。

### gpu & cpu
Windows10 同时安装tensorflow gpu版和cpu版
https://blog.csdn.net/jizhidexiaoming/article/details/81067874

默认是gpu
with tf.Session() as ses:
    with tf.device("/cpu:0"):
        matrix1=tf.constant([[3.,3.]])
        matrix2=tf.constant([[2.],[2.]])


新手初体验：Tensorflow-gpu1.8环境搭建与CPU比较（Win10+虚拟环境+实测结果）
https://zhuanlan.zhihu.com/p/38223869