
cp -r "${BASE_DIR}/../EffectiveRange-devc/apt_repo" "${ROOTFS_DIR}/etc/apt-server"

on_chroot << EOF

cd /etc/apt-server

# Create test armhf package
test/setup_test armhf

cd aptServer

# Generate package
make package

# Generate service file
make apt-server-arm64-service > /lib/systemd/system/apt-server.service

# Enable service
systemctl enable apt-server

EOF
