#! /bin/bash

# Setup git
git config --global user.name GhostMaster69-dev
git config --global user.email rathore6375@gmail.com
git config --global color.ui true

# Rom dir
mkdir ~/octavi && cd ~/octavi

# Cache setup
export CCACHE_DIR=~/ccache/octavi/vince
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 100G
ccache -z

# sync rom
repo init -u https://github.com/Octavi-Staging/manifest.git -b thirteen --depth=1
git clone https://github.com/GhostMaster69-dev/local_manifest.git --depth 1 -b thirteen .repo/local_manifests
repo sync -c -f --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)

# build rom
source build/envsetup.sh
lunch octavi_vince-user
mka bacon -j$(nproc --all)
