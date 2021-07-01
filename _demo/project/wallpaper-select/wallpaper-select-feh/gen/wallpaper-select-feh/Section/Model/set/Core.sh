

################################################################################
### Head: Model mod_wallpaper_select_set
##

mod_wallpaper_select_set () {
	#echo "mod_wallpaper_select_set"
	#echo "$@"


	## $ wallpaper-select-feh set "/usr/share/backgrounds/xfce/palm-wave.jpg" scale

	local choose="$1"
	local option="$2"
	local target


	if ! target="$(sys_wallpaper_check_file_exist $choose)"; then
		echo "## File Not Exist: "
		echo
		echo "$choose"
		return 1
	fi

	option="$(sys_feh_find_bg_option $option)"

	## feh --bg-scale "/usr/share/backgrounds/xfce/palm-wave.jpg"

	echo "feh $option $target"
	feh "$option" "$target"

}


##
### Tail: Model mod_wallpaper_select_set
################################################################################
