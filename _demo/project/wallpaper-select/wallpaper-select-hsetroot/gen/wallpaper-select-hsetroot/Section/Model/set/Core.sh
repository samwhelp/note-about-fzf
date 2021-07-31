

################################################################################
### Head: Model mod_wallpaper_select_set
##

mod_wallpaper_select_set () {
	#echo "mod_wallpaper_select_set"
	#echo "$@"


	##
	# ## Example:
	# $ wallpaper-select-hsetroot set "/usr/share/backgrounds/xfce/palm-wave.jpg"
	# $ wallpaper-select-hsetroot set "/usr/share/backgrounds/xfce/palm-wave.jpg" scale
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

	option="$(sys_hsetroot_find_bg_option $option)"

	## hsetroot --bg-scale "/usr/share/backgrounds/xfce/palm-wave.jpg"

	util_error_echo "## mod_wallpaper_select_set"
	util_error_echo "hsetroot $option $target"
	hsetroot "$option" "$target"

}


##
### Tail: Model mod_wallpaper_select_set
################################################################################
