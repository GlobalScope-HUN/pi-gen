#!/bin/bash -e

mount -o bind /run "${ROOTFS_DIR}/run/"

on_chroot << EOF

# Install docker
if [ ! -f "/usr/bin/docker" ]; then
  curl -fsSL https://get.docker.com | bash
fi

docker version

EOF