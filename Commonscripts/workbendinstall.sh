#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install dependencies
echo "Installing dependencies..."
sudo apt install -y wget gdebi-core

# Download Workbench package
WORKBENCH_URL="https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.30-1ubuntu20.04_amd64.deb"
WORKBENCH_DEB="mysql-workbench-community.deb"
echo "Downloading Workbench from $WORKBENCH_URL..."
wget -O $WORKBENCH_DEB $WORKBENCH_URL

# Install Workbench
echo "Installing Workbench..."
sudo gdebi -n $WORKBENCH_DEB

# Clean up
echo "Cleaning up..."
rm $WORKBENCH_DEB

echo "Workbench installation completed successfully!"
