#!/bin/bash

#specify action to be formed on snapshots older than 3 months

perform_action() {
	echo "Perfoming action on snapshot: $s1"
}

#Get the current date
current_date=$(date +%S)

for snapshot in $(aws ec2 describe-snapshots --query 'Snapshots[?StartTime<`'"$(date --date='3 month ago' +%Y-%m-%d)"'`].snapshotId' --output text); do
	#Get the snapshot start time
	start_time=$(aws ec2 describe-snapshots --snapshot-ids "$snapshot" --query 'Snaphshots[0].StartTime' --output text)

	#Convert the start time to each format
	start_time_epoch=$(date --date="$start_time" +%s)

	#Calculate the age of the snapshot in secounds
	age=$((current_date - start_time_epoch))
if [[ $age -gt 7776000 ]]; then
	perform_action "$snapshot"
fi
done


