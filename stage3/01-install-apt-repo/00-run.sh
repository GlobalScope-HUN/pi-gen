
cp -r "${BASE_DIR}/../EffectiveRange-devc/apt_repo" "${ROOTFS_DIR}/tmp/apt_repo"

on_chroot << EOF

cd /tmp/apt_repo

# Create test armhf package
test/setup_test armhf

# Create APT repository to provide packages for edge devices
./create_repository armhf

# Create APT repository service
./create_service armhf

EOF
