#!/bin/bash

maintenance_file="/media/shafnas/New Volume2/personal_projects/nginx_maintenance/maintenance/maintenance.txt" #adjust as needed

# check file is exists if not create
if [ -f "$maintenance_file" ]; then
    echo "Removing file"
    rm "$maintenance_file"
fi

