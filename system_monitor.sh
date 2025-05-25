#!/bin/bash
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Log CPU/Memory/Process usage
top -b -n1 > ~/monitoring_logs/top_$DATE.log

# Disk usage
df -h > ~/monitoring_logs/disk_df_$DATE.log
sudo du -sh /* > ~/monitoring_logs/disk_du_$DATE.log
