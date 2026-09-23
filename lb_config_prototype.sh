#!/bin/bash

lb config noauto \
   --color \
   --mode debian \
   --cache true \
   --updates true \
   --memtest none \
   --security true \
   --interactive false \
   --apt-recommends true \
   --distribution stable \
   --architectures amd64 \
   --iso-volume Prototype \
   --linux-flavours amd64 \
   --debian-installer live \
   --iso-preparer Prototype \
   --image-name "Prototype" \
   --binary-images iso-hybrid \
   --iso-application Prototype \
   --debian-installer-gui false \
   --bootloaders "grub-efi grub-pc" \
   --parent-debian-installer-distribution stable \
   --archive-areas "main contrib non-free non-free-firmware" \
   --parent-archive-areas "main contrib non-free non-free-firmware" \
   --iso-publisher "Lucas Gabriel (lucmsilva) <lucmsilva651@gmail.com>" \
   --bootappend-live "boot=live username=protolive hostname=prototype autologin" \
   "${@}"

