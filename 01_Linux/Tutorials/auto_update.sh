# Create a script named 'auto_update_yum.sh'
nano auto_update_yum.sh

# Add the following content:
#!/bin/bash

# Update all installed packages to the latest version
sudo yum update -y

# Upgrade the system packages (equivalent to dist-upgrade)
sudo yum upgrade -y

# Clean up cached packages and remove packages that are no longer needed
sudo yum autoremove -y
sudo yum clean all

echo "System update and cleanup completed!"

# Save and exit the editor

# Make the script executable
chmod +x auto_update_yum.sh

# Run the script manually or schedule it with cron
./auto_update_yum.sh
