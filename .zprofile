#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	startx
fi

# MPD daemon start (if no other user instance exists)
bar=$HOME/.scripts/dwm_bar

setxkbmap -layout "us,ara" -option grp:menu_toggle
