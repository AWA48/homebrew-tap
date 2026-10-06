# AWA48 Homebrew tap

```sh
brew install awa48/tap/awacut
```

## AwaCut

- **What it does:** removes the background from photos on the local Mac with a bundled AI segmentation model (BiRefNet). Nothing is uploaded; no internet connection is needed to process images.
- **Input:** single images or whole folders of JPG, PNG, WebP, BMP or TIFF.
- **Output:** PNG or WebP with a real alpha channel, or JPG/PNG on pure white or any custom colour, at the original resolution.
- **Runs on:** Apple Silicon Macs, macOS 13.4 or later. CPU inference, no graphics card needed; about 3 seconds per image on an Apple Silicon Mac.
- **Price:** free trial of 10 images, no account. Licence USD 29 per year, unlimited images, up to 2 computers, covers macOS, Windows and Linux.
- **Updates:** the app updates itself; `auto_updates true` in the cask.
- **Signed:** Developer ID AYA MIM S.R.L. (3C963NM6XR), notarized by Apple.

Website: https://awacut.com/ · Help: https://awacut.com/en/help/ · For AI agents: https://awacut.com/llms.txt

Windows: `winget install awacut` (in review at microsoft/winget-pkgs, works once accepted) · Linux: AppImage from https://awacut.com/en/background-remover-for-linux/

Published by AYA MIM S.R.L., Romania.
