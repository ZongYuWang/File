#!/bin/bash
user=root
passwd=123456
port=3306
log_dir='/data/masterha/log'
work_dir='/ourdata/binlogs'
purge='/usr/bin/purge_relay_logs'

if [ ! -d $log_dir ]
then
   mkdir $log_dir -p
fi

$purge --user=$user --password=$passwd --disable_relay_log_purge --port=$port --workdir=$work_dir >> $log_dir/purge_relay_logs.log 2>&1
