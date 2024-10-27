#!/bin/bash

# Install Fail2Ban
apt-get update
apt-get install -y fail2ban

# Create a Fail2Ban local config for SSH protection
cat <<EOF > /etc/fail2ban/jail.local
[sshd]
enabled = true
port = ssh
logpath = %(sshd_log)s
maxretry = 3
bantime  = 600
EOF

# Restart Fail2Ban to apply the changes
systemctl restart fail2ban

echo "Fail2Ban installed and configured to monitor SSH"
echo "IPs with more than 3 failed login attempts will be banned for 10 minutes."
