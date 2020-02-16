#!/bin/bash -e

sed -i "${ROOTFS_DIR}/boot/cmdline.txt" -e "s/console=ttyAMA0,[0-9]\+ //"
sed -i "${ROOTFS_DIR}/boot/cmdline.txt" -e "s/console=serial0,[0-9]\+ //"
