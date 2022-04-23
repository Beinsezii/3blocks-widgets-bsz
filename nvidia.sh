#!/usr/bin/env bash

GPU_ID=${GPU_ID:-"0"}
COLOR_IDLE=${COLOR_IDLE:-"#2EAFFF"}
COLOR_ERROR=${COLOR_ERROR:-"#FF898E"}

smi=$(nvidia-smi -q -i 0)
re=".*"\
"Clocks Throttle Reasons[^a-zA-Z]*"\
"Idle *: *([a-zA-Z ]*).*"\
"FB Memory Usage[^a-zA-Z]*"\
"Total *: *([0-9]+ *[a-zA-Z]+)[^a-zA-Z]*"\
"Reserved *: *[0-9]+ *[a-zA-Z]+[^a-zA-Z]*"\
"Used *: *([0-9]+ *[a-zA-Z]+).*"\
"Utilization[^a-zA-Z]*"\
"Gpu *: *([0-9]+)[^a-zA-Z]*"\
"Memory *: *[0-9]+[^a-zA-Z]*"\
"Encoder *: *[0-9]+[^a-zA-Z]*"\
"Decoder *: *([0-9]+).*"

if [[ $smi =~ $re ]]
then
    idle="${BASH_REMATCH[1]}"
    memt="${BASH_REMATCH[2]}"
    memu="${BASH_REMATCH[3]}"
    util="${BASH_REMATCH[4]}"
    vid="${BASH_REMATCH[5]}"

    #long
    echo GPU $GPU_ID 3D: $util% VID: $vid% $memu / $memt
    #short
    echo \#$GPU_ID $util% $vid% $memu

    #color
    if [ "$idle" == "Active" ]
    then
        echo $COLOR_IDLE
    fi

else
    echo "nvidia re match fail"
    echo "nvidia fail"
    echo $COLOR_ERROR
fi
