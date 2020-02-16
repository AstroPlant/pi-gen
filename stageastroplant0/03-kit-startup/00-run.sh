#!/bin/bash -e

install -v -m 644 files/pigpiod.service         "${ROOTFS_DIR}/etc/systemd/system/"
install -v -m 644 files/astroplant.service      "${ROOTFS_DIR}/etc/systemd/system/"

install -v -m 744 --owner 1000 --group 1000 \
                  files/astroplant-kit-start.sh "${ROOTFS_DIR}/home/pi"

ln -sf "${ROOTFS_DIR}/etc/systemd/system/astroplant.service" \
       "${ROOTFS_DIR}/etc/systemd/system/multi-user.target.wants/astroplant.service"

ln -sf "${ROOTFS_DIR}/lib/systemd/system/systemd-time-wait-sync.service" \
       "${ROOTFS_DIR}/etc/systemd/system/sysinit.target.wants/systemd-time-wait-sync.service"
