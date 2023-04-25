#!/bin/bash

cat <<EOF >> /etc/ssh/ssh_config
StrictHostKeyChecking accept-new
EOF

cat <<EOF > /usr/local/bin/pass
#!/bin/bash

echo $1 | sha256sum | cut -c 1-16
EOF

chmod +x /usr/local/bin/*

cat <<EOF >> ~/.profile
alias ansi='cd /root/ansi'
export PATH=$PATH:/root/ansi/bin
export GIT_SSH_COMMAND="ssh -i ~/.ssh/github"
export ANSIBLE_HOST_KEY_CHECKING=False

alias ap='ansible-playbook'
alias ai='ansible-inventory --graph'
EOF

source ~/.profile

cat <<EOF | decr >  ~/.ssh/github
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
i16ZnsLM2r7YefPRsNmzuw==
EOF

chmod 400 ~/.ssh/github

git clone git@github.com:pilet-io/bash-ansible.git
mv ~/bash-ansible ~/ansi

cat ~/ansi/encrypted/git-ansi.enc | decr > ~/.ssh/git-ansi
cat ~/ansi/encrypted/git-ansi.pub.enc | decr > ~/.ssh/git-ansi.pub

cat ~/ansi/encrypted/hetzner.enc | decr > ~/.ssh/hetzner
cat ~/ansi/encrypted/hetzner.pub.enc | decr > ~/.ssh/hetzner.pub

cat ~/ansi/encrypted/ovh.enc | decr > ~/.ssh/ovh
cat ~/ansi/encrypted/ovh.pub.enc | decr > ~/.ssh/ovh.pub

cat ~/ansi/encrypted/token.enc | decr >> ~/.profile

chmod 400 ~/.ssh/git-ansi*
chmod 400 ~/.ssh/hetzner*
chmod 400 ~/.ssh/ovh*

cp ~/.ssh/hetzner ~/.ssh/id_rsa
cp ~/.ssh/hetzner.pub ~/.ssh/id_rsa.pub


apt update
apt -y upgrade
apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible
apt update

apt -y install ansible
apt -y install hcloud-cli
apt -y install python3-pip
pip install hcloud



cat <<EOF > /etc/ansible/ansible.cfg
[defaults]
inventory=/root/ansi/inv/ovh.ini,/root/ansi/inv/hcloud.yml
EOF

ansible-galaxy collection install community.general
ansible-galaxy collection install hetzner.hcloud

git config --global user.email "alex@pilet.io"
git config --global user.name "Alex Potapov"
