#!/bin/bash

apt update
apt install -y python3-pip
pip install deterministic-rsa-keygen

git clone git@github.com:pilet-io/cli-tools.git
mv cli-tools ~/cli

cat <<EOF >> ~/.profile
export PATH=$PATH:~/cli:~/cli/init
EOF

source ~/.profile
