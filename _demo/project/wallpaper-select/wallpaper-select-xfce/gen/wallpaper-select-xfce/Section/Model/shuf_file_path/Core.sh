

################################################################################
### Head: Model mod_wallpaper_select_shuf_file_path
##

mod_wallpaper_select_shuf_file_path () {
	#echo "mod_wallpaper_select_shuf_file_path"
	#echo "$@"

	##
	# ## Example:
	# $ wallpaper-select-xfce shuf_file_path
	# $ wallpaper-select-xfce shuf_file_path /usr/share/backgrounds
	# $ wallpaper-select-xfce shuf_file_path ~/Pictures
	##

	local choose_dir_path="$1"
	local target_dir_path

	if [ "none" = "none$choose_dir_path" ]; then
		choose_dir_path="$(pwd)"
	fi


	if ! target_dir_path="$(sys_wallpaper_check_dir_exist $choose_dir_path)"; then
		util_error_echo
		util_error_echo "## Dir Not Exist: "
		util_error_echo
		util_error_echo "$choose_dir_path"
		util_error_echo
		return 1
	fi


	local target_file_name="$(mod_wallpaper_select_list $target_dir_path | shuf -n 1)"
	local target_file_path="$target_dir_path/$target_file_name"


	echo "$target_file_path"

}

##
### Tail: Model mod_wallpaper_select_shuf_file_path
################################################################################
