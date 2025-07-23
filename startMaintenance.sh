#!/bin/bash

maintenance_folder_path="./maintenance"  # adjust as needed
maintenance_file="./maintenance/maintenance.txt"  # adjust as needed

# Check if folder exists; if not, create it
if [ -d "$maintenance_folder_path" ]; then
    echo "Folder exists: $maintenance_folder_path"
else
    echo "Folder not found. Creating: $maintenance_folder_path"
    mkdir -p "$maintenance_folder_path"
fi

# Check if file exists; if not, create it
if [ -f "$maintenance_file" ]; then
    echo "File exists: $maintenance_file"
else
    echo "File not found. Creating: $maintenance_file"
    touch "$maintenance_file"
fi
