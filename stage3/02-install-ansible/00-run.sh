
cp -r "${BASE_DIR}/../EffectiveRange/poc/ansible" "${ROOTFS_DIR}/etc/ansible"

on_chroot << EOF

cd /etc/ansible

# Build Ansible Docker image
make ansible-arm64

EOF
