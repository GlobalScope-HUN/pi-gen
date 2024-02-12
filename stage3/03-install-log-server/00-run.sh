
cp -r "${BASE_DIR}/../EffectiveRange/poc/log-server" "${ROOTFS_DIR}/etc/log-server"

on_chroot << EOF

cd /etc/log-server

# Generate service file
make log-server-arm64-service > /lib/systemd/system/log-server.service

# Enable service
systemctl enable log-server

EOF
