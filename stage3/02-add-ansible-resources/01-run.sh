
cp -r "${BASE_DIR}/../EffectiveRange-devc/ansible" "${ROOTFS_DIR}/etc/ansible"

on_chroot << EOF

# Set up Ansible inventory plugins path
export ANSIBLE_INVENTORY_PLUGINS=/etc/ansible/plugins

EOF
