#!/bin/bash

cat <<EOF >> /etc/ssh/ssh_config
StrictHostKeyChecking accept-new
EOF

cat <<EOF >> ~/.profile
alias ansi='cd /root/ansi'
export ANSIBLE_HOST_KEY_CHECKING=False
alias ap='ansible-playbook'
alias ai='ansible-inventory --graph'
EOF

if [ ! -d "/path/to/dir" ]; then
 git clone git@github.com:pilet-io/bash-ansible.git ~/ansi
 cat /root/ansi/encrypted/token.enc | decr >> ~/.profile
 cat <<EOF >> ~/.profile
 alias ansi='cd /root/ansi'
 export ANSIBLE_HOST_KEY_CHECKING=False
 alias ap='ansible-playbook'
 alias ai='ansible-inventory --graph'
 EOF
fi


apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible -y

apt update
apt -y upgrade
apt -y install ansible
apt -y install hcloud-cli
apt -y install python3-pip
pip install hcloud

ansible-galaxy collection install community.general
ansible-galaxy collection install hetzner.hcloud

