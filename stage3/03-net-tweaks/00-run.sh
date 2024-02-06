
on_chroot << EOF

# Setup DNS servers
printf "static domain_name_servers=1.1.1.1 1.0.0.1\n" >> /etc/dhcpcd.conf

# Disable IPv6
printf "net.ipv6.conf.all.disable_ipv6 = 1\n" >> /etc/sysctl.conf
printf "net.ipv6.conf.default.disable_ipv6 = 1\n" >> /etc/sysctl.conf

EOF
