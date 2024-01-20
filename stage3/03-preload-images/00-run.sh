#!/bin/bash -e

docker image prune -f

cp -r /var/lib/docker "${ROOTFS_DIR}/var/lib/docker"
