# Rom Dir
cd ~/octavi

# Make Rom
source build/envsetup.sh
lunch octavi_vince-user
mka sepolicy -j$(nproc --all)
