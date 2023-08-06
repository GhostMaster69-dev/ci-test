#! /bin/sh

# Initialize local repository
repo init --depth=1 --no-repo-verify -u https://github.com/Octavi-Staging/manifest -b thirteen -g default,-mips,-darwin,-notdefault

git clone https://github.com/GhostMaster69-dev/local_manifest.git  --depth 1 -b 13 .repo/local_manifests

# sync rom
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
