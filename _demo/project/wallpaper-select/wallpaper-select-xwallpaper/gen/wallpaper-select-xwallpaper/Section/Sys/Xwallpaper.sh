

################################################################################
### Head: Sys / Xwallpaper
##

sys_xwallpaper_find_bg_option_list () {

	local list="$THE_XWALLPAPER_BG_OPTION_LIST"

	for allow in $list; do
		echo "$allow"
	done

}

sys_xwallpaper_find_bg_option () {
	local option="$1"
	local list="$THE_XWALLPAPER_BG_OPTION_LIST"

	for allow in $list; do
		if [ "select_$allow" = "select_$option" ]; then
			echo "--$option"
			return
		fi
	done

	echo '--stretch'
}


##
### Tail: Sys / Xwallpaper
################################################################################
