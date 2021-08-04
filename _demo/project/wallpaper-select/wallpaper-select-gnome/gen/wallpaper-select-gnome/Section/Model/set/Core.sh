

################################################################################
### Head: Model mod_wallpaper_select_set
##

mod_wallpaper_select_set () {
	#echo "mod_wallpaper_select_set"
	#echo "$@"


	##
	# ## Example:
	# $ wallpaper-select-gnome set "/usr/share/backgrounds/xfce/palm-wave.jpg"
	# $ wallpaper-select-gnome set "/usr/share/backgrounds/xfce/palm-wave.jpg" scale
	##


	local choose="$1"
	local option="$2"
	local target


	if ! target="$(sys_wallpaper_check_file_exist $choose)"; then
		util_error_echo
		util_error_echo "## File Not Exist: "
		util_error_echo
		util_error_echo "$choose"
		util_error_echo
		return 1
	fi

	##option="$(sys_gnome_find_bg_option $option)"

	## sys_gnome_wallpaper_set "/usr/share/backgrounds/xfce/palm-wave.jpg"

	util_error_echo "## mod_wallpaper_select_set"
	util_error_echo "sys_gnome_wallpaper_set $target"
	sys_gnome_wallpaper_set "$target"

}


##
### Tail: Model mod_wallpaper_select_set
################################################################################
