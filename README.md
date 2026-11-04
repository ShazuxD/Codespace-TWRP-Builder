# Codespace-TWRP-Builder

Build TWRP recovery in a GitHub Codespace. Powered by the [`shazuxdd/twrp-builder`](https://hub.docker.com/r/shazuxdd/twrp-builder) Docker image.

## What you have to do

1. Fork this repo, or click **Use this template**.
2. Edit `config.sh` for your device.
3. Add your Codespace secrets (see below).
4. Create a Codespace from your repo (recommended: standardLinux32gb)!.
5. In the terminal, run:

   ```bash
   twrp-build
   ```

## Parameters

Edit these in `config.sh`.

| Name | Description | Example |
| --- | --- | --- |
| `ENABLE_SWAP` | Enable swap (`y`/`n`) | `y` |
| `SWAP_SIZE` | Swap size | `16G` |
| `SWAPFILE` | Swap file path, keep it in `/tmp` | `/tmp/swapfile` |
| `MANIFEST_URL` | Manifest address | `https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp` |
| `MANIFEST_BRANCH` | Manifest branch | `twrp-12.1` |
| `DEVICE_TREE_URL` | Device tree address | `https://${GH_TOKEN}@github.com/ShazuxD/device_xiaomi_pissarro-recovery` |
| `DEVICE_TREE_BRANCH` | Device tree branch | `android-12.1` |
| `DEVICE_PATH` | Device tree location | `device/xiaomi/pissarro` |
| `MAKEFILE_NAME` | Makefile name | `twrp_pissarro` |
| `BUILD_TARGET` | Partition to build (boot/recovery/vendorboot) | `boot` |
| `UPLOAD_CCACHE` | Upload ccache after build (`y`/`n`) | `y` |
| `CCACHE_URL` | Old ccache archive to reuse | `https://sendit.sh/XLdo1/ccache.tar.gz` |

## Codespace secrets

Add these in **Settings → Secrets and variables → Codespaces**:

| Secret | Use |
| --- | --- |
| `GH_TOKEN` | Needed to clone a private device tree |
| `TG_TOKEN` | Telegram bot token (optional) |
| `TG_ID` | Telegram chat ID (optional) |

## Storage

On a 4 core / 16 GB RAM / 32 GB storage Codespace, `/twrp` gets:

```
Filesystem             Size  Used Avail Use% Mounted on
tmp:vscode:workspaces  178G   36G  136G  21% /twrp
```

## Note

Codespaces is **not unlimited**. Use it for debugging in place of the TWRP Action Recovery Builder, not for endless builds.

## Credits

- Inspiration: [Action-TWRP-Builder](https://github.com/azwhikaru/Action-TWRP-Builder) by azwhikaru
- Made by [ShazuxD](https://github.com/ShazuxD)
