#!/bin/bash

xlock() {
    ( slock && xset dpms 0 0 300 ) &
    xset dpms 0 0 2
    xset dpms force off
}

while true;
do 
    if [[ $(< /proc/acpi/button/lid/LID0/state) = *closed ]] 
    then
	case $(< /sys/class/power_supply/AC/online) in
	    1)  ( [[ ! "$(pidof slock)" ]] && xlock ) ;;
	    0)	systemctl suspend ;;
	esac
    fi
    sleep 2;
done
