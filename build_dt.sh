#!/bin/bash

# Build dtb
echo "Building common exynos9825 Device Tree Blob Image..."
echo "-----------------------------------------------"
./toolchain/mkdtimg cfg_create arch/arm64/boot/dtb.img arch/arm64/boot/dtconfigs/dts/exynos
echo "-----------------------------------------------"

# Build dtbo
echo "Building Device Tree Blob Output Image for "$MODEL"..."
echo "-----------------------------------------------"
./toolchain/mkdtimg cfg_create arch/arm64/boot/dtbo.img arch/arm64/boot/dtconfigs/d1xks.cfg -d arch/arm64/boot/dtconfigs/dts/samsung
echo "-----------------------------------------------"
