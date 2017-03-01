#!/bin/bash
# add this script to startup

xlock() {
( slock && xset dpms 0 0 60 ) &
xset dpms 0 0 2
xset dpms force off
}

while true;
do 
    grep 'closed' /proc/acpi/button/lid/LID0/state && xlock ;
    sleep 2;
done
