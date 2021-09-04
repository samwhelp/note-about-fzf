

################################################################################
### Head: Sys / Xfce
##


sys_xfce_wallpaper_set () {

	local file_path="$1"
	local bg_option="$2"
	local screen=`xrandr --listactivemonitors | awk -F ' ' 'END {print $1}' | tr -d \:`
	local monitor=`xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+`

	util_error_echo "xfconf-query --channel xfce4-desktop --property /backdrop/single-workspace-mode --set 'true' --type 'bool' --create"
	xfconf-query --channel xfce4-desktop --property "/backdrop/single-workspace-mode" --set 'true' --type 'bool' --create

	util_error_echo "xfconf-query --channel xfce4-desktop --property /backdrop/screen${screen}/monitor${monitor}/workspace0/last-image --set $file_path"
	xfconf-query --channel xfce4-desktop --property "/backdrop/screen${screen}/monitor${monitor}/workspace0/last-image" --set "$file_path"

	util_error_echo "xfconf-query --channel xfce4-desktop --property /backdrop/screen${screen}/monitor${monitor}/workspace0/image-style --set $bg_option"
	xfconf-query --channel xfce4-desktop --property "/backdrop/screen${screen}/monitor${monitor}/workspace0/image-style" --set "$bg_option"
	##
	## ## image-style
	## 0: None
	## 1: Centered
	## 2: Tiled
	## 3: Stretched
	## 4: Scaled
	## 5: Zoomed
	##
	## > None for Color
	##
}


sys_xfce_wallpaper_get () {

	local screen=`xrandr --listactivemonitors | awk -F ' ' 'END {print $1}' | tr -d \:`
	local monitor=`xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+`

	##util_debug_echo "xfconf-query --channel xfce4-desktop --property /backdrop/screen${screen}/monitor${monitor}/workspace0/last-image"
	xfconf-query --channel xfce4-desktop --property "/backdrop/screen${screen}/monitor${monitor}/workspace0/last-image"

}

sys_xfce_find_bg_option_list () {

	local list="$THE_XFCE_BG_OPTION_LIST"

	for allow in $list; do
		echo "$allow"
	done

}



sys_xfce_map_bg_option () {
	local key="$1"
	echo "${THE_XFCE_BG_OPTION_MAP[$key]}"
}

sys_xfce_find_bg_option () {
	local option="$1"
	option="$(sys_xfce_map_bg_option "$option")"

	local list="$THE_XFCE_BG_OPTION_LIST"

	for allow in $list; do
		if [ "select_$allow" = "select_$option" ]; then
			echo "$option"
			return
		fi
	done

	echo '5'
}


##
### Tail: Sys / Xfce
################################################################################
