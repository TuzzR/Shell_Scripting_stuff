#! /usr/bin/bash

LOG_DIR=/var/log
ROOT_UID=0
LINES=50
E_XCD=80
E_NONROOT=87

if [ $UID -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script"
	exit $E_NONROOT
fi

if [ -n "$1" ]
then
	lines=$1
else
	lines=$LINES

fi

cd $LOG_DIR
if [ `pwd` != "$LOG_DIR" ]
then
	echo "Cant change to LOG_DIR"
	exit $E_XCD
fi
# Far more efficient is:
#
# cd /var/log || {
# echo "Cannot change to necessary directory." >&2
# exit $E_XCD;
# }

tail -n $lines auth.log > mesg.txt
#mv mesg.temp messages

cat /dev/null > wtmp # ': > wtmp' and '> wtmp' have the same effect.
echo "Log files cleaned up."

exit 0

