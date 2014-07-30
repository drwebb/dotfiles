[[ -z $DISPLAY && $XDG_VTNR -lt 4 ]] && exec startx ~/.config/X11/xinitrc
