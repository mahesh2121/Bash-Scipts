#!/bin/bash

# Set thresholds (in percentage) for CPU and memory usage
CPU_THRESHOLD=4
MEMORY_THRESHOLD=90

# Function to send email
send_email() {
    SUBJECT="High CPU or Memory Usage Alert on $(hostname)"
    TO="your_email@example.com"
    MESSAGE="CPU or memory usage on $(hostname) has crossed threshold.
    
    CPU Usage: $CPU_USAGE%
    Memory Usage: $MEMORY_USAGE%
    
    Please take necessary action."

    echo "$MESSAGE" | mail -s "$SUBJECT" "$TO"
}

# Main script
while true; do
    # Get CPU usage percentage using top command, extract only the CPU usage line
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    # Round to integer
    CPU_USAGE=${CPU_USAGE%.*}

    # Get memory usage percentage using free command, extract the memory usage line
    MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    # Round to integer
    MEMORY_USAGE=${MEMORY_USAGE%.*}

    # Check if CPU or memory usage exceeds thresholds
    if [ $CPU_USAGE -gt $CPU_THRESHOLD ] || [ $MEMORY_USAGE -gt $MEMORY_THRESHOLD ]; then
        send_email
    fi

    # Sleep for 5 minutes (adjust as needed)
    sleep 300  # 300 seconds = 5 minutes
done
