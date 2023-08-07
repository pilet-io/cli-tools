#!/bin/bash

apt update
apt install -y python3-pip
pip install deterministic-rsa-keygen
pip install certbot-dns-cloudflare
