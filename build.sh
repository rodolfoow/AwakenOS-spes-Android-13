#!/bin/bash
# Repo sync
repo init -u https://github.com/ProjectAwaken/android_manifest -b 13 --git-lfs
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Spes uchun qurish
. build/envsetup.sh
lunch awaken_spes-userdebug
mka bacon
