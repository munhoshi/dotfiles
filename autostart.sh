#!/bin/bash

function run {
    if ! pgrep $1 ;
    then
        $@&
    fi
}

killall -v xcape
picom --no-fading-openclose --experimental-backends -b
nitrogen --restore &
# setxkbmap -layout "us,latam" -option "grp:alt_shift_toggle" -option "caps:swapescape"
setxkbmap -layout 'us,latam' -option 'grp:alt_shift_toggle' -option 'caps:ctrl_modifier' && xcape -e 'Caps_Lock=Escape' &
/usr/bin/emacs --daemon
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
