#!/usr/bin/bash

# Reload systemd manager configuration
sudo systemctl daemon-reload

# Remove the default Nginx configuration
sudo rm -f /etc/nginx/sites-enabled/default

# Copy your updated Nginx configuration to sites-available
sudo cp /home/ubuntu/testprojects/nginx/nginx.conf /etc/nginx/sites-available/testprojects

# Create a symbolic link to enable the configuration
sudo ln -s /etc/nginx/sites-available/testprojects /etc/nginx/sites-enabled/

# Add 'www-data' user to 'ubuntu' group (make sure this is necessary for your setup)
sudo gpasswd -a www-data ubuntu

# Test the Nginx configuration for syntax errors
sudo nginx -t

# Restart Nginx to apply the changes
sudo systemctl restart nginx
