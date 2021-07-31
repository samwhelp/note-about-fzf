

################################################################################
### Head: Sys / Wallpaper
##

sys_wallpaper_check_file_exist () {

	local target="$1"

	if [ "none$target" = "none" ]; then
		target="$THE_WALLPAPER_DEFAULT_FILE_PATH"
	fi

	if [ -f "$target" ]; then
		echo "$target"
		return 0
	fi

	return 1

}


sys_wallpaper_check_dir_exist () {

	local target="$1"

	if [ "none$target" = "none" ]; then
		##target="/usr/share/backgrounds"
		##target="."
		target="$(pwd)"
	fi

	if [ -d "$target" ]; then
		echo "$target"
		return 0
	fi

	return 1

}

sys_wallpaper_check_target_dir_exist () {

	local target="$1"

	if [ "none$target" = "none" ]; then
		return 1
	fi

	if [ -d "$target" ]; then
		echo "$target"
		return 0
	fi

	return 1

}


sys_wallpaper_init_target_dir () {

	local target="$1"

	if [ "none$target" = "none" ]; then
		return 0
	fi

	if [ -f "$target" ]; then
		return 0
	fi

	mkdir -p "$target"

}


sys_wallpaper_select_cd_dir () {
	#echo "sys_wallpaper_select_cd_dir"
	#echo "$@"

	## wallpaper-select-hsetroot list
	## wallpaper-select-hsetroot list /usr/share/backgrounds
	local file_name=''

	local choose="$1"
	local target


	if ! target="$(sys_wallpaper_check_target_dir_exist $choose)"; then
		util_error_echo "## Dir Not Exist: "
		util_error_echo
		util_error_echo "$choose"
		return 1
	fi


	cd "$target"

}

sys_wallpaper_select_exec_cd_dir () {
	#echo "sys_wallpaper_select_cd_dir"
	#echo "$@"

	## wallpaper-select-hsetroot list
	## wallpaper-select-hsetroot list /usr/share/backgrounds
	local file_name=''

	local choose="$1"
	local target


	if ! target="$(sys_wallpaper_check_target_dir_exist $choose)"; then
		util_error_echo "## Dir Not Exist: "
		util_error_echo
		util_error_echo "$choose"
		return 1
	fi

	## https://unix.stackexchange.com/questions/27139/script-to-change-current-directory-cd-pwd

	cd "$target"

	exec bash

	##exec $SHELL
}


sys_wallpaper_select_list_by_dir () {
	#echo "sys_wallpaper_select_list_by_dir"
	#echo "$@"

	## wallpaper-select-hsetroot list
	## wallpaper-select-hsetroot list /usr/share/backgrounds
	local file_name=''

	local choose="$1"
	local target


	if ! target="$(sys_wallpaper_check_dir_exist $choose)"; then
		util_error_echo "## Dir Not Exist: "
		util_error_echo
		util_error_echo "$choose"
		return 1
	fi

	cd "$target"


	for file_name in $(ls ./ -1); do
	#for name in *; do
		if [ -d "$file_name" ]; then
			continue;
		fi

		echo $file_name;
	done

	cd "$OLDPWD"

}


##
### Tail: Sys / Wallpaper
################################################################################
