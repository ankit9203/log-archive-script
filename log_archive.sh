#!/bin/bash
if [ -z "$1" ]; then
echo "Using: '$0' <log_directory>"
exit 1
 fi
log_dir=$1
 if [ ! -d "$log_dir" ]; then
echo "$log_dir is not a directory "
exit 1
fi

archive_dir=$HOME/archive_dir
mkdir -p $archive_dir
timestamp=$(date +%Y%m%d_%H%M%S)
filename=log_archive.$timestamp.tar.gz
tar -czf "$archive_dir/$filename" "$log_dir"
echo "$log_dir have been archived to $archive_dir/$filename"


 
