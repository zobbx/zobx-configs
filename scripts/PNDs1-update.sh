#!/bin/bash

echo "Welcome"

if [ "$EUID" -ne 0 ]
  then echo "run me with sudo"
  exit
fi

UPDATES=`dnf check-update -q | awk '{print $2}'`
COUNT=`printf "%s\n" "$UPDATES" | grep -v "^$" | wc -l`
DNF=`printf "%s\n" "$UPDATES" | grep -v "^$" | grep dnf`
echo '********************************'
echo " Update Notification for `hostname`"
echo " $COUNT update(s) available"
if [ -n "$DNF" ]; then
echo 'A Fedora update is available.'
fi
echo '********************************'
printf "%s\n" "$UPDATES"


