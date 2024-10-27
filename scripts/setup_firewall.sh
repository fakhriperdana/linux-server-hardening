#!/bin/bash

# Enable UFW and allow SSH
ufw allow 22/tcp
ufw allow 80/tcp

# Deny all incoming traffic by default
ufw default deny incoming

# Allow outgoing traffic
ufw default allow outgoing

# Enable the firewall
ufw --force enable

echo "UFW firewall is set up"
echo "Allowed ports: 22 (SSH) and 80 (HTTP)"
echo "All other incoming traffic is blocked."
