#!/bin/bash

sudo sed -i 's/^.*ssh-rsa/ssh-rsa/' /root/.ssh/authorized_keys

sudo swapoff -a
sudo sgdisk -d 5 /dev/nvme0n1
sudo sgdisk -d 4 /dev/nvme0n1
sudo sgdisk -n 4 /dev/nvme0n1

sudo sgdisk -z /dev/nvme1n1
sudo sgdisk -n 1 /dev/nvme1n1
sudo partprobe

sudo sed -i 's/^.*swap/swap/' /etc/fstab
sudo sed -i '/^swap/d' /etc/fstab

sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt -y upgrade
#apt install -y zfsutils-linux

sudo mdadm --create /dev/md0 --name=data --level=0 --raid-devices=2 /dev/nvme0n1p4 /dev/nvme1n1p1
sudo mkdir /main
sudo mkfs -t ext4 /dev/md0
sudo mount /dev/md0 /main


#zpool create -f main /dev/nvme0n1p4 /dev/nvme1n1p1
