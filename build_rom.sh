# Rom Dir
cd ~/derpfest

# Make Rom
source build/envsetup.sh
lunch derp_vince-user
#mka bootimage -j$(nproc --all)
mka sepolicy -j$(nproc --all)
mma XiaomiDirac

