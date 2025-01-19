#!/bin/bash

#Directory to create logs  files

test_dir="test_logs"

#ensure the test directory exits
mkdir -p "$test_dir"

cd "$test_dir"

echo "Create test log files older than 90 days in $test_dir.."
for i in {1..5}; do
 file_name="test_log_${i}.log"
 touch "$file_name"
 #change the modification date to 100 days ago
 echo "Log content for $file_name" > "file_name"
 echo "Created $file_name with modification date: $(stat -c %y "$file_name")"
done

echo "Test logs file is created"
