ENABLE_SWAP=y
SWAPSIZE=16G
SWAPFILE="/tmp/swapfile"

if [[ "${ENABLE_SWAP,,}" == "y" ]]; then
   export SWAPSIZE SWAPFILE
else
  echo -n "[*] Swap is not enabled!"
fi

export ENABLE_SWAP
