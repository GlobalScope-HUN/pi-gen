
mkdir -p "${ROOTFS_DIR}/etc/wifi-manager"

cp -r "${BASE_DIR}/../EffectiveRange/poc/wifiManager" "${ROOTFS_DIR}/etc/wifi-manager/wifiManager"

on_chroot << EOF

cd /etc/wifi-manager/wifiManager

# Package wifi-manager
dpkg-buildpackage -us -uc -b

# Install wifi-manager
apt-get install /etc/wifi-manager/wifi-manager_*_all.deb

# Cleanup
apt-get remove -y dh-virtualenv devscripts
apt-get autoremove -y

EOF
