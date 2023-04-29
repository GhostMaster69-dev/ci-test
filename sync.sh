#! /bin/bash

# Rom dir
cd ~/arrow

# sync rom
repo init -u https://github.com/ArrowOS/android_manifest.git -b arrow-13.1
git clone https://github.com/AOSP-Silicon/local_manifest.git -b arrow-13.1 .repo/local_manifests
repo sync --no-clone-bundle --no-tags --current-branch --force-sync --force-remove-dirty --jobs=$(nproc --all) --jobs-checkout=$(nproc --all) --jobs-network=$(nproc --all)
