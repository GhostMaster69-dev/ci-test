# Rom Dir
cd ~/arrow

# Make Rom
. build/envsetup.sh
lunch arrow_vince-user
mka bootimage -j$(nproc --all)
#mka sepolicy -j$(nproc --all)

