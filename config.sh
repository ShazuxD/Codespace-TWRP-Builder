# Config

# SWAP
ENABLE_SWAP=y
SWAP_SIZE=16G
SWAPFILE="/tmp/swapfile"

# MANIFEST
MANIFEST_URL="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp"
MANIFEST_BRANCH="twrp-12.1"

# DEVICE TREE
DEVICE_TREE_URL="https://github.com/ShazuxD/device_xiaomi_pissarro-recovery"
DEVICE_TREE_BRANCH="android-12.1"
DEVICE_PATH="device/xiaomi/pissarro"

# BUILD
MAKEFILE_NAME="twrp_pissarro"
BUILD_TARGET="boot"

# CCACHE
UPLOAD_CCACHE=y


# DO NOT TOUCH
######################################################################
if [[ "${ENABLE_SWAP,,}" == "y" ]]; then
   export SWAP_SIZE SWAPFILE
else
  echo -n "[*] Swap is not enabled!"
fi

export ENABLE_SWAP
export MANIFEST_URL MANIFEST_BRANCH
export DEVICE_TREE_URL DEVICE_TREE_BRANCH DEVICE_PATH
export MAKEFILE_NAME BUILD_TARGET
export UPLOAD_CCACHE
