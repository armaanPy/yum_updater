#!/usr/bin/bash

log_output_dir=/home/ec2-user/yum-updater-logs

function yumUpdate(){
echo "Packages updated on: " $(date)
sudo yum update -y
}

yumUpdate >> $log_output_dir/"$(date).log"
