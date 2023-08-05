# Rom Dir
cd ~/octavi

# Make Rom
source build/envsetup.sh
lunch octavi_vince-user
#mma Settings -j$(nproc --all)
mka bootimage -j$(nproc --all)
#mka sepolicy -j$(nproc --all)
#mma ParanoidDoze -j$(nproc --all)

gh release create v$(date +%Y%m%d | cut -c 4- | sed "s/0/./g") --latest -n "What's New ($(date +"%d %B %Y")):" --generate-notes -t Release -R AOSP-Silicon/kernel_xiaomi_vince > /dev/null 2>&1
gh release upload v$(date +%Y%m%d | cut -c 4- | sed "s/0/./g") ~/octavi/out/target/product/vince/boot.img -R AOSP-Silicon/kernel_xiaomi_vince
