

################################################################################
### Head: Model mod_wallpaper_select_get
##

mod_wallpaper_select_get () {
	#echo "mod_wallpaper_select_get"
	#echo "$@"

	# wallpaper-select-feh get

	if ! [ -e "$HOME/.fehbg" ]; then
		return 0
	fi

	grep '^feh' "$HOME/.fehbg" | awk '{print $4}' | awk -F "'" '{print $2}'

}

##
### Tail: Model mod_wallpaper_select_get
################################################################################
