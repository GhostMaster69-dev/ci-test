# Rom Dir
cd ~/octavi

# Make Rom
source build/envsetup.sh
lunch octavi_vince-user
mka bootimage -j$(nproc --all)
#mma Settings -j$(nproc --all)
#mka sepolicy -j$(nproc --all)
#mma ParanoidDoze -j$(nproc --all)

ls ~/octavi/out/target/product/vince
git clone https://github.com/AOSP-Silicon/AnyKernel3 ~/AnyKernel3
cp -rf ~/octavi/out/target/product/vince/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz-dtb ~/AnyKernel3
cd ~/AnyKernel3 && make stable
gh release create v$(date +%Y.%-m.%-d | cut -c 4-) --target 13 --latest -n "What's New ($(date +"%d %B %Y")):" --generate-notes -t Release -R AOSP-Silicon/kernel_xiaomi_vince > /dev/null 2>&1
gh release upload v$(date +%Y.%-m.%-d | cut -c 4-) ~/octavi/out/target/product/vince/boot.img ~/octavi/out/target/product/vince/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz-dtb ~/AnyKernel3/unitrix-vince-4.9-*.zip --clobber -R AOSP-Silicon/kernel_xiaomi_vince
