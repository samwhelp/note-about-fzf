

################################################################################
### Head: Model mod_wallpaper_select_shuf
##

mod_wallpaper_select_shuf () {
	#echo "mod_wallpaper_select_shuf"
	#echo "$@"

	##
	# ## Example:
	# $ wallpaper-select-swaybg shuf
	# $ wallpaper-select-swaybg shuf /usr/share/backgrounds
	# $ wallpaper-select-swaybg shuf ~/Pictures
	##

	local target_dir_path="$1"
	local target_file_path="$(mod_wallpaper_select_shuf_file_path $target_dir_path)"

	mod_wallpaper_select_set "$target_file_path"
}

##
### Tail: Model mod_wallpaper_select_shuf
################################################################################
