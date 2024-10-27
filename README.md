# linux-server-hardening

Basic Linux server hardening scripts

## Prerequisites

- **Root Access**: You need root or sudo privileges to execute the scripts.
- **Ubuntu/Debian-based system**: These scripts are tailored for Ubuntu or Debian-based systems. You can modify them for other distributions.

## Setup Instructions

1. **Clone the repository**:

    ```bash
    git clone https://github.com/fakhriperdana/linux-server-hardening.git
    cd linux-server-hardening/scripts
    ```

2. **Harden SSH Configuration**:

    Run the script to disable root login, disable password-based authentication, and restrict SSH access to a specific group (`test-ssh-group`).

    ```bash
    sudo ./harden_ssh.sh
    ```

3. **Set Up the Firewall**:

    Use the script to set up `ufw` to block all incoming traffic except for SSH (port 22) and HTTP (port 80).

    ```bash
    sudo ./setup_firewall.sh
    ```

4. **Manage User Accounts**:

    Automate the creation of a new user, enforce strong password policies, and restrict SSH access to the `test-ssh-group` group.

    ```bash
    sudo ./manage_users.sh
    ```

5. **Install Fail2Ban**:

    Install Fail2Ban to monitor SSH login attempts and ban IP addresses after too many failed attempts.

    ```bash
    sudo ./install_fail2ban.sh
    ```

6. **Run a Security Audit**:

    Run the audit script to check for open ports, weak SSH settings, and available security patches.

    ```bash
    sudo ./audit_security.sh
    ```

## Security Hardening Details

- **SSH Hardening**: Root login and password authentication are disabled, and access is limited to a specific user group.
- **Firewall Setup**: Only necessary ports (SSH and HTTP) are opened, and all other incoming connections are blocked.
- **Fail2Ban**: Fail2Ban monitors SSH logs and bans IP addresses after three failed login attempts.
- **User Management**: Strong password policies are enforced, and user accounts are set to expire passwords every 90 days.
- **Security Auditing**: The audit script helps identify open ports, unpatched software, and other vulnerabilities.

## License

This project is open-source and available for use and modification.