

################################################################################
### Head: Model mod_wallpaper_select_set
##

mod_wallpaper_select_set () {
	#echo "mod_wallpaper_select_set"
	#echo "$@"


	##
	# ## Example:
	# $ wallpaper-select-xfce set "/usr/share/backgrounds/xfce/palm-wave.jpg"
	# $ wallpaper-select-xfce set "/usr/share/backgrounds/xfce/palm-wave.jpg" scale
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

	option="$(sys_xfce_find_bg_option $option)"

	echo "$option"

	## sys_xfce_set_wallpaper "/usr/share/backgrounds/xfce/palm-wave.jpg"

	util_error_echo "## mod_wallpaper_select_set"
	util_error_echo "sys_xfce_set_wallpaper $target $option"
	sys_xfce_wallpaper_set "$target" "$option"

}


##
### Tail: Model mod_wallpaper_select_set
################################################################################
