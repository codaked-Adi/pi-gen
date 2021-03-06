#!/bin/bash

sudo -u pi mkdir /home/pi/SUSI.AI
cd /home/pi/SUSI.AI && sudo -u pi git clone --single-branch https://github.com/fossasia/susi_linux.git

cd /home/pi/SUSI.AI/susi_linux && sudo -Hu pi ./install.sh

# After ./install.sh, the /dev is occupied by some processes and cannot be released by build script.
# We stop those processes to let the build script continue.

systemctl stop seeed-voicecard
systemctl stop systemd-udevd
sleep 5
