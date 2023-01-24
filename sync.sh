#! /bin/bash

# Rom dir
cd ~/octavi

# sync rom
repo init --manifest-depth=1 -u https://github.com/Octavi-Staging/manifest.git -b thirteen --depth=1
git clone https://github.com/GhostMaster69-dev/local_manifest.git --depth 1 -b thirteen .repo/local_manifests
repo sync -j$(nproc --all) -c --no-clone-bundle --no-tags --optimized-fetch --prune
