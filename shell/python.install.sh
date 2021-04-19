#!/bin/bash
sudo apt-get update
sudo apt-get install git curl -y
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus curl -y
sudo apt-get install libncursesw5-dev libgdbm-dev libc6-dev -y
sudo apt-get install zlib1g-dev libsqlite3-dev tk-dev -y
sudo apt-get install libssl-dev openssl -y
sudo apt-get install libffi-dev -y

curl https://pyenv.run | bash
echo '
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export  PYTHON_BUILD_MIRROR_URL="http://pyenv.qiniudn.com/pythons/"
'