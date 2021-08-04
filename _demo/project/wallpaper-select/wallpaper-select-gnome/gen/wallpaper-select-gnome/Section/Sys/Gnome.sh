

################################################################################
### Head: Sys / Gnome
##


sys_gnome_wallpaper_set () {

	local file_path="$1"


	util_error_echo "gsettings set org.gnome.desktop.background picture-uri file://${file_path}"
	gsettings set org.gnome.desktop.background picture-uri "file://${file_path}"

}


sys_gnome_wallpaper_get () {

	##util_debug_echo "gsettings get org.gnome.desktop.background picture-uri"
	gsettings get org.gnome.desktop.background picture-uri | awk -F "'" '{print $2}' | awk -F 'file://' '{printf $2"\n"}'
}

sys_gnome_find_bg_option_list () {

	local list="$THE_XFCE_BG_OPTION_LIST"

	for allow in $list; do
		echo "$allow"
	done

}


sys_gnome_find_bg_option_list () {

	local list="$THE_GNOME_BG_OPTION_LIST"

	for allow in $list; do
		echo "$allow"
	done

}

sys_gnome_find_bg_option () {
	local option="$1"
	local list="$THE_GNOME_BG_OPTION_LIST"

	for allow in $list; do
		if [ "select_$allow" = "select_$option" ]; then
			echo "-$option"
			return
		fi
	done

	echo '-cover'
}


##
### Tail: Sys / Gnome
################################################################################
