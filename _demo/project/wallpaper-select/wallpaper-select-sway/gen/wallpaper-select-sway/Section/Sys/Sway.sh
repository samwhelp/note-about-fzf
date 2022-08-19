

################################################################################
### Head: Sys / Sway
##

sys_sway_find_bg_option_list () {

	local list="$THE_SWAYBG_BG_OPTION_LIST"

	for allow in $list; do
		echo "$allow"
	done

}

sys_sway_find_bg_option () {
	local option="$1"
	local list="$THE_SWAYBG_BG_OPTION_LIST"

	for allow in $list; do
		if [ "select_$allow" = "select_$option" ]; then
			echo "$option"
			return
		fi
	done

	##
	## $ man swaybg
	## stretch, fill, fit, center, or tile
	##
	echo 'fill'
}


##
### Tail: Sys / Sway
################################################################################
