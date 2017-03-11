#!/bin/bash

## add to /usr/lib/systemd/system/devmon@.service



devmon --exec-on-drive "notify-send --urgency=normal \"  %l @ <u>%f</u>  has been mounted at %d\""\
 --exec-on-unmount "notify-send --urgency=normal \"  %l @ <b>%f</b>  has been unmounted\""\
 --exec-on-remove "notify-send --urgency=normal \"  %l @ <b>%f</b>  has been removed\""
