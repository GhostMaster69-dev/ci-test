# Rom Dir
cd ~/octavi

# Make Rom
source build/envsetup.sh
lunch octavi_vince-user
#mma Settings -j$(nproc --all)
mka bootimage -j$(nproc --all)
#mka sepolicy -j$(nproc --all)
#mma ParanoidDoze -j$(nproc --all)

gh release upload 'Boot Image' ~/octavi/out/target/product/vince/boot.img -R github.com/AOSP-Silicon/kernel_xiaomi_vince
