

################################################################################
### Head: Model mod_wallpaper_select_set
##

mod_wallpaper_select_set () {
	#echo "mod_wallpaper_select_set"
	#echo "$@"


	##
	# ## Example:
	# $ wallpaper-select-swaybg set "/usr/share/backgrounds/xfce/palm-wave.jpg"
	# $ wallpaper-select-swaybg set "/usr/share/backgrounds/xfce/palm-wave.jpg" scale
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

	option="$(sys_sway_find_bg_option $option)"


	##
	## $ cat ~/.azotebg
	##
	## ```
	## #!/usr/bin/env bash
	## pkill swaybg
	## swaybg -o 'LVDS-1' -i "/usr/share/backgrounds/default.jpg" -m fill &
	## swaybg -o 'VGA-2' -i "/usr/share/backgrounds/default.jpg" -m fill &
	## ```
	##

	mod_wallpaper_select_set_save_to_azotebg

	util_error_echo "## mod_wallpaper_select_set"
	util_error_echo "pkill swaybg"
	util_error_echo "swaybg -o '*' -i $target -m $option"
	pkill swaybg
	swaybg -o '*' -i "$target" -m "$option" &


	##
	## $ man swaybg
	## stretch, fill, fit, center, or tile
	##
	## pkill swaybg
	## swaybg -o '*' -i "/usr/share/backgrounds/default.jpg" -m fill &
	## swaybg -o '*' -i "/usr/share/backgrounds/default.jpg" -m fit &
	## swaybg -o '*' -i "/usr/share/backgrounds/default.jpg" -m stretch &
	## swaybg -o '*' -i "/usr/share/backgrounds/default.jpg" -m center &
	## swaybg -o '*' -i "/usr/share/backgrounds/default.jpg" -m tile &
	##
}


mod_wallpaper_select_set_save_to_azotebg () {

	local target_file_path="$HOME/.azotebg"
	local the_now="$(date +%Y%m%d_%H%M%S)"
	local tmp_file_path="/tmp/azotebg.${the_now}"

	echo '#''!''/usr/bin/env bash' > "$tmp_file_path"
	echo 'pkill swaybg' >> "$tmp_file_path"
	echo "swaybg -o '*'" '-i' '"'"$target"'"' '-m' '"'"$option"'"' '&' >> "$tmp_file_path"

	util_error_echo "install -Dm755 $tmp_file_path $target_file_path"
	install -Dm755 "$tmp_file_path" "$target_file_path"
}


##
### Tail: Model mod_wallpaper_select_set
################################################################################
