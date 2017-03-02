#!/bin/bash

xlock() {
    ( slock && xset dpms 0 0 60 ) &
    xset dpms 0 0 2
    xset dpms force off
}

while true;
do 
    [[ $(< /proc/acpi/button/lid/LID0/state) = *closed ]] && [[ ! "$(pidof slock)" ]] && xlock ;
    sleep 2;
done
