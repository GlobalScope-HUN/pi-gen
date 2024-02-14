
cp -r "${BASE_DIR}/../EffectiveRange/poc/logServer" "${ROOTFS_DIR}/etc/log-server"

on_chroot << EOF

cd /etc/log-server

# Install service files
cp /etc/log-server/service/log-server-setup.service /lib/systemd/system/log-server-setup.service
cp /etc/log-server/service/log-server.service /lib/systemd/system/log-server.service

# Enable services
systemctl enable log-server-setup
systemctl enable log-server

EOF
