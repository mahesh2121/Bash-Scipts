#!/bin/bash

# Directory to search for log files
LOG_DIR="test_logs"

# Number of days to consider a file old
DAYS=90

# Find and list log files older than 90 days
echo "Finding log files older than $DAYS days in $LOG_DIR..."
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS

# Ask user for confirmation to delete the files
read -p "Do you want to delete these files? (y/n): " CONFIRM

if [[ $CONFIRM == "y" || $CONFIRM == "Y" ]]; then
  # Delete log files older than 90 days
  find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;
  echo "Old log files deleted."
else
  echo "No files were deleted."
fi

