#! /usr/bin/bash
cmd='date | users | uptime'
LOG_DIR=/var/log
cd $LOG_DIR
exec `$cmd > one.txt`
exit
