xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
amixer -q set Master 0 mute
export QT_QPA_PLATFORMTHEME=gtk2
exec bspwm
