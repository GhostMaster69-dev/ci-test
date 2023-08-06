# build kernel
source build/envsetup.sh
lunch octavi_vince-user
mka bootimage -j$(nproc --all)

# upload kernel
git clone https://github.com/AOSP-Silicon/AnyKernel3 ~/AnyKernel3
cp -rf ~/out/target/product/vince/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz-dtb ~/AnyKernel3
make -C ~/AnyKernel3 stable
gh release create v$(date +%Y.%-m.%-d | cut -c 4-) --target 13 --latest -n "What's New ($(date +"%d %B %Y")):" --generate-notes -t Release -R OctaviOS-Devices/kernel_xiaomi_vince > /dev/null 2>&1
gh release delete-asset v$(date +%Y.%-m.%-d | cut -c 4-) unitrix-vince-4.9-*.zip -y -R OctaviOS-Devices/kernel_xiaomi_vince > /dev/null 2>&1
gh release upload v$(date +%Y.%-m.%-d | cut -c 4-) ~/out/target/product/vince/boot.img ~/out/target/product/vince/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz-dtb ~/AnyKernel3/unitrix-vince-4.9-*.zip --clobber -R OctaviOS-Devices/kernel_xiaomi_vince
