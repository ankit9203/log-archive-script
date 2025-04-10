# 🗃️ Log Archive Script

A simple Bash script to compress and archive log directories with timestamped filenames. Useful for automating log backups via cron jobs.

---

## 📂 Features

- Checks if the provided input is a valid directory
- Archives the logs into a `.tar.gz` file with a timestamp
- Automatically stores the archive in a user-level `archive_dir`
- Supports scheduling via `cron`

---

## 🛠️ Usage

```bash
./log_archive.sh <log_directory>
```
# Example
```bash
./log_archive.sh /var/log/nginx
```
# This will create a compressed archive like:
 ```bash
 ~/archive_dir/log_archive.20250410_174403.tar.gz
```
# Cron Example
To Schedule this script to run at 2:00 PM on April 11 every year:
```bash
0 14 11 4 * /home/ankit_byte/backup_script/log_archive.sh /home/ankit_byte/backup_script/copiedfile
```

# Requirements
   1) Bash
      
   2) tar utility

   3) Write permissions for the user’s home directory

# License

This project is open-source and free to use under the MIT License.

# Author

  Ankit
  GitHub: @ankit9203 
