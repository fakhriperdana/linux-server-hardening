#!/bin/bash

# Backup the original SSH config file
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# Disable root login
sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

# Disable password-based login
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# Restrict SSH to a specific group (e.g., 'test-ssh-group')
echo "AllowGroups test-ssh-group" >> /etc/ssh/sshd_config

# Restart SSH service to apply changes
systemctl restart sshd

echo "SSH configuration hardened:"
echo "- Root login disabled"
echo "- Password authentication disabled"
echo "- SSH access restricted to the 'test-ssh-group' group."
