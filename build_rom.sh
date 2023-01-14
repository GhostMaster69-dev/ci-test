#! /bin/bash

# Setup git
git config --global user.name GhostMaster69-dev
git config --global user.email rathore6375@gmail.com

# Rom dir
mkdir ~/octavi && cd ~/octavi

# sync rom
repo init -u https://github.com/Octavi-Staging/manifest.git -b thirteen
git clone https://github.com/GhostMaster69-dev/local_manifest.git -b thirteen .repo/local_manifests
repo sync -j$(nproc --all) --no-clone-bundle --no-tags

# build rom
source build/envsetup.sh
lunch octavi_vince-user
mka sepolicy -j$(nproc --all)
