#!/bin/bash
# A script for ASUS G551JW to load at startup to set my keyboard backlight on or used with crontab to schedule the time.
# Kevin Mostert
# 27/03/2019

#Sets the value of the brightness level. (Can use 1-3)
echo 1 | tee /sys/class/leds/asus::kbd_backlight/brightness || echo "Keyboard backlight failed with exit 1 at $(date)" >> /home/"$USER"/scripts.log && exit 1
echo "Keyboard backlight enabled at $(date)" >> /home/"$USER"/scripts.log
notify-send "Keyboard Backlight enabled" --urgency=normal
