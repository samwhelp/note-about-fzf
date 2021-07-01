

################################################################################
### Head: Model mod_wallpaper_select_list
##



mod_wallpaper_select_list () {
	#echo "mod_wallpaper_select_list"
	#echo "$@"

	## wallpaper-select-feh list
	## wallpaper-select-feh list /usr/share/backgrounds
	local file_name=''

	local choose="$1"
	local target


	if ! target="$(sys_wallpaper_check_dir_exist $choose)"; then
		echo "## Dir Not Exist: "
		echo
		echo "$choose"
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
### Tail: Model mod_wallpaper_select_list
################################################################################
