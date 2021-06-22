#!/bin/bash

# bash install rbenv on ubuntu 

set -x \
  && sudo apt install -y libreadline-dev libssl-dev zlib1g-dev libjemalloc-dev git libmysqlclient-dev build-essential gcc g++ make cmake  \
  && git clone --depth=1 https://gitee.com/azhao-1981/rbenv.git ~/.rbenv \
  && git clone --depth=1 https://gitee.com/azhao-1981/ruby-build.git ~/.rbenv/plugins/ruby-build \
  && git clone --depth=1 https://gitee.com/azhao-1981/rbenv-gemset.git ~/.rbenv/plugins/rbenv-gemset \
  && git clone --depth=1 https://gitee.com/azhao-1981/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-taobao-mirror \
  && git clone --depth=1 https://gitee.com/azhao-1981/rbenv-update.git ~/.rbenv/plugins/rbenv-update \
  && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc \
  && echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo "source ~/.bashrc && RUBY_CONFIGURE_OPTS=--with-jemalloc rbenv install 2.6.7 && rbenv global 2.6.7"
echo "OR look for orher versions"
echo "ls -l ~/.rbenv/plugins/ruby-build/share/ruby-build/"