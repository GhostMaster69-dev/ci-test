#! /bin/bash

# Rom dir
cd ~/octavi

# sync rom
repo init -u https://github.com/Octavi-Staging/manifest.git -b thirteen
repo sync --no-clone-bundle --no-tags -j$(nproc --all)
git clone https://github.com/GhostMaster69-dev/android_device_xiaomi_vince.git -b 13 device/xiaomi/vince
