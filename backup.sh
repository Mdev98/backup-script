#!/bin/bash

destination_dir="..."

timestamp=$(date +%Y-%m-%d-%H-%M)

backup_file_name="${timestamp}_backup.tar.gz"

sudo tar -cvzf "${destination_dir}/${backup_file_name}" 
"path/to/source_dir"

if [ $? -eq 0 ]; then
    echo "Backup created successfully : ${destination_dir}/${backup_file_name}"
else
    echo "Backup creation failed."
fi
