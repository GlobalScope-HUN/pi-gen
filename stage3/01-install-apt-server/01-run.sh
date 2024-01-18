
cp -r "${BASE_DIR}/../EffectiveRange-devc/apt_repo" "${ROOTFS_DIR}/tmp/apt_repo"

on_chroot << EOF

cd /tmp/apt_repo

# Create test armhf package
test/setup_test armhf

cd aptServer

# Build AptServer Docker image
make apt-server-arm64

EOF
