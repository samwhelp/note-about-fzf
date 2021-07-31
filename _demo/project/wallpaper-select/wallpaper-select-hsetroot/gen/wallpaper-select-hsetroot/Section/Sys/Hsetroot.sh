

################################################################################
### Head: Sys / Hsetroot
##

sys_hsetroot_find_bg_option_list () {

	local list="$THE_FEH_BG_OPTION_LIST"

	for allow in $list; do
		echo "$allow"
	done

}

sys_hsetroot_find_bg_option () {
	local option="$1"
	local list="$THE_FEH_BG_OPTION_LIST"

	for allow in $list; do
		if [ "select_$allow" = "select_$option" ]; then
			echo "-$option"
			return
		fi
	done

	echo '-cover'
}


##
### Tail: Sys / Hsetroot
################################################################################
