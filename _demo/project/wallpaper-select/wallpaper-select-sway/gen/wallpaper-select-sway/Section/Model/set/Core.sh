

################################################################################
### Head: Model mod_wallpaper_select_set
##

mod_wallpaper_select_set () {
	#echo "mod_wallpaper_select_set"
	#echo "$@"


	##
	# ## Example:
	# $ wallpaper-select-sway set "/usr/share/backgrounds/xfce/palm-wave.jpg"
	# $ wallpaper-select-sway set "/usr/share/backgrounds/xfce/palm-wave.jpg" scale
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
	## ``` sh
	## swaymsg 'output * bg ~/Pictures/Wallpaper/default.jpg fill'
	## ```
	##

	mod_wallpaper_select_set_save_to_azotebg

	util_error_echo "## mod_wallpaper_select_set"
	util_error_echo
	util_error_echo "swaymsg 'output * bg $target $option'"

	swaymsg "output "'*'" bg $target $option" &

}


mod_wallpaper_select_set_save_to_azotebg () {

	local target_file_path="$HOME/.azotebg"
	local the_now="$(date +%Y%m%d_%H%M%S)"
	local tmp_file_path="/tmp/azotebg.${the_now}"

	echo '#''!''/usr/bin/env bash' > "$tmp_file_path"
	echo "swaymsg 'output * bg" '"'"$target"'"' "$option""'" '&' >> "$tmp_file_path"

	util_error_echo "install -Dm755 $tmp_file_path $target_file_path"
	install -Dm755 "$tmp_file_path" "$target_file_path"
}


##
### Tail: Model mod_wallpaper_select_set
################################################################################
