#!/bin/bash

# Create a group for SSH users
groupadd test-ssh-group

# Create a user with SSH access
useradd -m -s /bin/bash -G test-ssh-group new-user

# Set a strong password policy (e.g., password length of 12 characters)
echo "Password length set to 12 characters."
echo "password requisite pam_pwquality.so retry=3 minlen=12" >> /etc/pam.d/common-password

# Force users to change their passwords every 90 days
chage -M 90 new-user

echo "User 'new-user' created and added to the 'test-ssh-group' group with password expiration policy."
