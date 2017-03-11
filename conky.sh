#!/bin/bash

conky -d -c .config/conky/conky-cal &
conky -d -c .config/conky/conky-desktop &
conky -d -c .config/conky/conky-clock &
# conky -d -c .config/conky/conky-news &
conky -d -c .config/conky/conky.battery &
conky -d -c .config/conky/conky-left &
sleep 1 && conky -d -c .config/conky/conky-right &
exit
