#!/bin/bash

<< comment
This script will take backups
from source to target.
comment

src_dir="/home/sudha/script"
tgt_dir="/home/sudha/backups"

backup_filename="backup_of_scriptfile_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"
echo "*****Backup Started*****"
echo "Backing uo to$backup_filename"

tar -czvf "${tgt_dir}/${backup_filename}" "$src_dir"

echo "*****Backup Complete*****"
