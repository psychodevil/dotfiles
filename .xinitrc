#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources
i3_bin=/usr/bin/i3
wallpaper=$HOME/.config/wall.png 
binder=/usr/bin/sxhkd
compositor=/usr/bin/compton

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# turn off the cpu default bell
if [ -f /usr/bin/xset ]; then
	xset -b
fi

# enable window compositioning
if [ -f $compositor ]; then
	$compositor --fading --daemon 
fi

#enable touchpad basics
if [ -f /usr/bin/xinput]; then
	xinput set-prop "AlpsPS/2 ALPS GlidePoint" \
		"libinput Tapping Enabled" 1 &
	xinput set-prop "AlpsPS/2 ALPS GlidePoint" \
	        "libinput Natural Scrolling Enabled" 1 &
fi

# run the default key binder sxhkd
if [ -f $binder ]; then
	$binder &
fi

# set default wallpaper
if [ -f $wallpaper ]; then
	feh --bg-scale $wallpaper &
fi

# start i3 and keep it running
#if [ -f $i3_bin ]; then
#	exec i3 
#fi

# Starting the suckless utilities
[ -f ~/.zprofile ] && . ~/.zprofile
exec $HOME/progs/suckless/dwm/dwm 


for i in $(xinput list | grep "Logitech USB Receiver" | perl -n -e'/id=(\d+)/ && print "$1\n"')
	do if xinput get-button-map "$i" 2>/dev/null| grep -q 20; then
		xinput set-button-map "$i" 1 17 3 4 5 8 7 6 9 10 11 12 13 14 15 16 2 18 19 20
	fi
done
