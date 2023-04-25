#!/bin/bash

apt update
apt install -y python3-pip
pip install deterministic-rsa-keygen

git clone https://github.com/pilet-io/cli-tools.git
mv cli-tolls ~/cli

echo "export PATH=\$PATH:~/cli" >> ~/.profile