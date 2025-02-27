#!/bin/bash

# Simple backup script for server files

# Set directories
SOURCE_DIR="/home/user/data"  # Change this to the directory you want to back up
BACKUP_DIR="./backups"        # Directory to store backups locally (can also be a cloud path)

# Date and time for backup file naming
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Create backup folder if it doesn't exist
mkdir -p $BACKUP_DIR

# Create the backup archive (tarball)
tar -czf $BACKUP_DIR/backup_$DATE.tar.gz -C $SOURCE_DIR .

# Print success message
echo "Backup completed: $BACKUP_DIR/backup_$DATE.tar.gz"
