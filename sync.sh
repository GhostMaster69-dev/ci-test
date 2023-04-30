#! /bin/bash

# Rom dir
cd ~/octavi

# sync rom
repo init -u https://github.com/Octavi-Staging/manifest.git -b thirteen
git clone https://github.com/GhostMaster69-dev/local_manifest.git -b 13 .repo/local_manifests
repo sync --no-clone-bundle --no-tags --current-branch --force-sync --force-remove-dirty --jobs=$(nproc --all) --jobs-checkout=$(nproc --all) --jobs-network=$(nproc --all)
