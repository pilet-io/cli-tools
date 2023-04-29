#!/bin/bash

sudo sed -i 's/^.*ssh-rsa/ssh-rsa/' /root/.ssh/authorized_keys
sudo swapoff -a

sudo sed -i 's/^.*swap/swap/' /etc/fstab
sudo sed -i '/^swap/d' /etc/fstab

sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt -y upgrade

sudo snap refresh lxd --channel=5.12/stable
