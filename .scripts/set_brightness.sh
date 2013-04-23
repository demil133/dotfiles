#!/bin/bash
BRIG=`cat /sys/class/backlight/intel_backlight/brightness`
# max brightness doesnt work for me since it takes the actual brightness value
#BRIG_MAX=`cat /sys/class/backlight/intel_backlight/brightness`

echo "    current: $BRIG"
echo "    max lvl: $BRIG_MAX"

case $1 in
    "++" )
        BRIG=$(($BRIG+100))
        continue;;
    "--" )
        BRIG=$(($BRIG-100))
        continue;;
    * )
        echo "set_brightness.sh [level]"
        echo "    level: should be greater than 0 and less than"
        echo "           the number specified by your inter driver"
        continue;;
esac

echo "    new lvl: $BRIG"

#if [[ $BRIG -lt $BRIG_MAX && $BRIG -gt 0 ]]; then
if [[ $BRIG -lt 976  && $BRIG -gt 0 ]]; then
    echo "    inside the condition"
    echo $BRIG | sudo tee /sys/class/backlight/intel_backlight/brightness
fi
