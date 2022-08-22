

################################################################################
### Head: Model mod_wallpaper_select_get
##

mod_wallpaper_select_get () {
	#echo "mod_wallpaper_select_get"
	#echo "$@"

	# wallpaper-select-sway get

	if ! [ -e "$HOME/.azotebg" ]; then
		return 0
	fi

	#grep '^swaybg' "$HOME/.azotebg" | awk '{print $5}' | awk -F '"' '{print $2}'

	grep '^swaymsg' "$HOME/.azotebg" | awk '{print $5}' | awk -F '"' '{print $2}'
}

##
### Tail: Model mod_wallpaper_select_get
################################################################################
