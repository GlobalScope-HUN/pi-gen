
cp -r "${BASE_DIR}/../EffectiveRange-devc/ansible" "${ROOTFS_DIR}/etc/ansible"

on_chroot << EOF

# Install ssdpy Python module
pip3 install ssdpy

# Set up Ansible inventory plugins path
printf "export ANSIBLE_INVENTORY_PLUGINS=/etc/ansible/plugins\n" >> /etc/environment

EOF
