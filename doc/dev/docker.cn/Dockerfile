# docker build . -t ubuntu.cn:20.04 -f Dockerfile --no-cache
FROM ubuntu:20.04
LABEL maintainer azhao <azhao.1981@foxmail.com>
COPY ustc.ubunut.20.04.apt.source.list /etc/apt/sources.list
RUN apt-get update \
  && apt-get install -y --no-install-recommends dialog apt-utils \
  && echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
  && apt-get upgrade -y -o Dpkg::Options::="--force-confold"
RUN apt-get install --reinstall ca-certificates -y

# 中文支持
RUN apt-get install locales -y
RUN locale-gen zh_CN.UTF-8 &&\
  DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN locale-gen zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh
ENV LC_ALL zh_CN.UTF-8 

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY busybox /bin/busybox
WORKDIR /srv

EXPOSE 80 443