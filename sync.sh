#! /bin/bash

# Rom dir
cd ~/alpha


# Initialize local repository
repo init --depth=1 --no-repo-verify -u https://github.com/alphadroid-project/manifest -b alpha-13 --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/AOSP-Silicon/local_manifest.git --depth 1 -b alpha-13 .repo/local_manifests
# Sync
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
