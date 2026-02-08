#!/bin/bash

# 1. Manifestlarni to'g'irlash
rm -rf .repo/local_manifests
mkdir -p .repo/local_manifests
cp spes.xml .repo/local_manifests/spes.xml

# 2. Repo Init va Sync
repo init -u https://github.com/ProjectAwaken/android_manifest -b 13 --git-lfs --depth=1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# 3. Qurish (Build)
. build/envsetup.sh
lunch awaken_spes-userdebug
mka bacon
