#!/bin/bash

cat <<EOF >> /etc/ssh/ssh_config
StrictHostKeyChecking accept-new
EOF

git clone git@github.com:pilet-io/cli-controller.git ~/ansi
chmod +x ~/ansi/install.sh
~/ansi/install.sh
