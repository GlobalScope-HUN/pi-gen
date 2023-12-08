#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
  PREV_STAGE_WORK_DIR="${WORK_DIR}"/stage2
  PREV_ROOTFS_DIR="${PREV_STAGE_WORK_DIR}"/rootfs
	copy_previous
fi
