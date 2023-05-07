#! /bin/bash

# Rom dir
cd ~/derpfest

# sync rom
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 13
git clone https://github.com/AOSP-Silicon/local_manifest.git -b derpfest-13 .repo/local_manifests
repo sync --no-clone-bundle --no-tags --current-branch --force-sync --force-remove-dirty --jobs=$(nproc --all) --jobs-checkout=$(nproc --all) --jobs-network=$(nproc --all)
