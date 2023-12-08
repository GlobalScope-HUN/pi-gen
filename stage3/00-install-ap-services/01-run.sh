
on_chroot << EOF

# Enable hostapd
systemctl unmask hostapd
systemctl enable hostapd

# Cleanup
apt-get autoremove -y

EOF
