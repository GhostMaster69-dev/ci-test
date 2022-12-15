# Rom Dir
cd ~/alpha

# Make Rom
source build/envsetup.sh
lunch lineage_vince-user
mka bootimage -j$(nproc --all)
mka sepolicy -j$(nproc --all)

