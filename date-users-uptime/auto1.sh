#! /usr/bin/bash
date=date
uptime=uptime
userlist=users
LOG_DIR=/var/log
cd "$LOG_DIR"
exec `$date | $userlist | $uptime > take.log`
exit
