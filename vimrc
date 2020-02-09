# quit/restart bspwm
super + alt + {q,r}
	bspc {quit,wm -r}

# close and kill
super + {_,shift + }x
	bspc node -{c,k}

#
# Focusing/swapping windows
#

super +  {n,e,u,i}
    focusmover {west,south,north,east}
super +  {Left,Down,Up,Right}
    focusmover {west,south,north,east}
super + shift + {n,e,u,i}
	euclid_mover {west,south,north,east}
super + shift + {Left,Down,Up,Right}
	euclid_mover {west,south,north,east}

# focus the node for the given path jump
super + {p,b,comma,period}
	bspc node -f @{parent,brother,first,second}

# focus the next/previous node in the current desktop
super + {_,shift + }c
	bspc node -f {next,prev}.local

# Resize windows
super + ctrl + {n,e,u,i}
	bspwm_resize.sh {west,south,north,east}
super + ctrl + {Left,Down,Up,Right}
	bspwm_resize.sh {west,south,north,east}

# send the newest marked node to the newest preselected node
super + y
	bspc node newest.marked.local -n newest.!automatic.local

# dmenu
super + d
 	dmenu_recent -fn 'xos4 Terminus:size=15' -i -l 14 -w 600 -y $PANEL_HEIGHT

super + shift + b
	firefox
    		
XF86AudioRaiseVolume
	volume up

XF86AudioLowerVolume
	volume down

XF86AudioMute
	volume mute
	
XF86MonBrightnessDown
 light -U 5 

XF86MonBrightnessUp
 light -A 5
 
XF86Sleep
	systemctl suspend

# make sxhkd reload its configuration files:
super + Escape
	pkill -USR1 -x sxhkd

# In case bspwmrc fails to execute/you wish have plugged in a new monitor
super + shift + d
	bspwmrc

# Lock the screen
super + l
	exec i3lock -i ~/Downloads/wp1947868-manjaro-wallpapers.png -c 000000

# Terminal emulator
super + Return
	sterminal

# program launcher
super + @space
	rofi -combi-modi drun -show combi

# alternate between the tiled and monocle layout
super + f
	bspc desktop -l next

# go (Shift=move) to desktop (and focus the monitor that the desktop is located on. Bspwm style)
super + {_,shift + }{1-9,0}
    bspc {desktop -f,node -d} ^{1-9,10}

# set the window state
super + {t,shift + t,s,shift + f}
	bspc node -t {tiled,pseudo_tiled,floating,fullscreen}

# set the node flags
super + ctrl + {m,x,y,z}
	bspc node -g {marked,locked,sticky,private}

# send the newest marked node to the newest preselected node
super + y
	bspc node newest.marked.local -n newest.!automatic.local

#
# preselect
#

# preselect the direction
super + alt + {n,e,u,i}
	bspc node -p {west,south,north,east}
super + alt + {Left,Down,Up,Right}
	bspc node -p {west,south,north,east}

# preselect the ratio
super + alt + {1-9}
	bspc node -o 0.{1-9}

# cancel the preselection for the focused node
super + alt + space
	bspc node -p cancel

# Switch monitors
super + m
	xrandr --output HDMI-1-4 --auto --output eDP1 --off
super + k
	xrandr --output eDP1 --auto --output HDMI-1-4 --off

