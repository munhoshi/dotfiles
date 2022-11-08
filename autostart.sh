#!/bin/bash

function run {
    if ! pgrep $1 ;
    then
        $@&
    fi
}

nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
picom --no-fading-openclose --experimental-backends -b
nitrogen --restore
setxkbmap -layout "us,latam" -option "grp:alt_shift_toggle"
