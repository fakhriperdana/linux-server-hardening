#!/bin/bash

echo "Running security audit..."

# Check for open ports
echo "Open ports:"
netstat -tulpn

# Check SSH configuration
echo "SSH configuration:"
grep "^PermitRootLogin\|^PasswordAuthentication\|^AllowGroups" /etc/ssh/sshd_config

# Check for updates and missing security patches
echo "Checking for security updates..."
apt-get update && apt-get upgrade -s | grep -i security

# Check user accounts with weak passwords (less than 12 characters)
echo "Checking for weak passwords..."
grep -E '^.{0,11}$' /etc/shadow

echo "Security audit completed."
