
cp -r "${BASE_DIR}/../EffectiveRange/poc/logServer/filebeat" "${ROOTFS_DIR}/tmp/filebeat"

on_chroot << EOF

cd /tmp/filebeat/package

# Create Debian package
./package.sh

# Install the package
apt install -y ./filebeat_*_armhf.deb

EOF
