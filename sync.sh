#! /bin/bash

# Rom dir
cd ~/octavi

# sync rom
repo init -u https://github.com/Octavi-Staging/manifest.git -b thirteen
git clone https://github.com/GhostMaster69-dev/local_manifest.git --depth 1 -b thirteen .repo/local_manifests
repo sync -j$(nproc --all) --no-clone-bundle --no-tags
