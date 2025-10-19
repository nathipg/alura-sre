#! /bin/bash

bck_dir="/home/ubuntu-server/devops/backup"
saved_dir="/home/ubuntu-server/devops/notas"
file="bck_$(date +%Y%m%d_%S%M%S).tar.gz"

tar -czf "$bck_dir/$file" "$saved_dir"

echo "Backup OK. File: $file"
