#! /bin/bash

# Rom dir
cd ~/octavi

# Initialize local repository
repo init --no-repo-verify -u https://github.com/Octavi-Staging/manifest -b thirteen --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/AOSP-Silicon/local_manifest.git --depth 1 -b 13 .repo/local_manifests

# Sync
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
