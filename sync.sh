#! /bin/bash

# Rom dir
cd ~/octavi

# sync rom
repo init -u https://github.com/Octavi-Staging/manifest.git -b thirteen
git clone https://github.com/GhostMaster69-dev/local_manifest.git --depth 1 -b 13 .repo/local_manifests
repo sync --no-clone-bundle --no-tags -j$(nproc --all)
rm -rf prebuilts/clang/host/linux-x86/clang-r450784d
