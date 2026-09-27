#!/bin/bash

lb config noauto \
   --color \
   --cache true \
   --mode debian \
   --updates true \
   --memtest none \
   --security true \
   --interactive false \
   --apt-recommends true \
   --distribution stable \
   --architectures amd64 \
   --cache-packages true \
   --iso-volume Prototype \
   --linux-flavours amd64 \
   --debian-installer false \
   --iso-preparer Prototype \
   --image-name "Prototype" \
   --binary-images iso-hybrid \
   --iso-application Prototype \
   --debian-installer-gui false \
   --bootloaders "grub-efi grub-pc" \
   --chroot-squashfs-compression-level 1 \
   --chroot-squashfs-compression-type zstd \
   --parent-debian-installer-distribution stable \
   --archive-areas "main contrib non-free non-free-firmware" \
   --parent-archive-areas "main contrib non-free non-free-firmware" \
   --iso-publisher "Lucas Gabriel (lucmsilva) <lucmsilva651@gmail.com>" \
   --bootappend-live "boot=live username=protolive hostname=prototype autologin quiet splash" \
   "${@}"

