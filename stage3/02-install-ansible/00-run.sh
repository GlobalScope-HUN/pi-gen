
cp -r "${BASE_DIR}/../EffectiveRange/poc/ansible" "${ROOTFS_DIR}/etc/ansible"

on_chroot << EOF

cd /etc/ansible

# Generate service file
make ansible-arm64-service > /lib/systemd/system/ansible.service

# Enable service
systemctl enable ansible

EOF
