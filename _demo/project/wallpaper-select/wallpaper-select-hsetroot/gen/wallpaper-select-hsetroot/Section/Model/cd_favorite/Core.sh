

################################################################################
### Head: Model mod_wallpaper_select_cd_favorite
##

mod_wallpaper_select_cd_favorite () {
	#echo "mod_wallpaper_select_cd_favorite"
	#echo "$@"

	# wallpaper-select-hsetroot cd_favorite

	sys_wallpaper_init_target_dir "$THE_WALLPAPER_FAVORITE_DIR_PATH"

	sys_wallpaper_select_exec_cd_dir "$THE_WALLPAPER_FAVORITE_DIR_PATH"

}

##
### Tail: Model mod_wallpaper_select_cd_favorite
################################################################################
