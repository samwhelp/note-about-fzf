

################################################################################
### Head: Model mod_wallpaper_select_list
##



mod_wallpaper_select_list () {
	#echo "mod_wallpaper_select_list"
	#echo "$@"


	##
	# ## Example:
	# $ wallpaper-select-sway list
	# $ wallpaper-select-sway list /usr/share/backgrounds
	# $ wallpaper-select-sway list ~/Pictures
	##


	local target_file_name=''

	local choose_dir_path="$1"
	local target_dir_path


	if ! target_dir_path="$(sys_wallpaper_check_dir_exist $choose_dir_path)"; then
		util_error_echo
		util_error_echo "## Dir Not Exist: "
		util_error_echo
		util_error_echo "$choose_dir_path"
		util_error_echo
		return 1
	fi

	cd "$target_dir_path"


	for target_file_name in $(ls ./ -1); do
	#for target_file_name in *; do
		if [ -d "$target_file_name" ]; then
			continue;
		fi

		echo $target_file_name;
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_wallpaper_select_list
################################################################################
