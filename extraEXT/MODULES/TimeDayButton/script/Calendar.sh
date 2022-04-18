#!/bin/bash
# /scripts/calendar.sh

CAL_GET=`yad --calendar --text "" --list --button=Close:0 --title "Calendar"`
case $? in
	0)
		exit ;;
esac
