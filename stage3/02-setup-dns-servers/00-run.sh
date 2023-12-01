
on_chroot << EOF

echo "static domain_name_servers=1.1.1.1 1.0.0.1" >> /etc/dhcpcd.conf

EOF
