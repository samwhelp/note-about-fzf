

################################################################################
### Head: Model mod_wallpaper_select_manjaro_prepare
##

mod_wallpaper_select_manjaro_prepare () {
	#echo "mod_wallpaper_select_manjaro_prepare"
	#echo "$@"

	# wallpaper-select-swaybg manjaro_prepare

	mod_wallpaper_select_manjaro_prepare_install_package

}


mod_wallpaper_select_manjaro_prepare_install_package () {

	util_error_echo "pamac install swaybg fzf ueberzug"
	pamac install swaybg fzf ueberzug

}

##
## * https://discover.manjaro.org/packages/swaybg
## * https://discover.manjaro.org/packages/fzf
## * https://archlinux.org/packages/community/x86_64/swaybg/
## * https://archlinux.org/packages/community/x86_64/fzf/
## * https://archlinux.org/packages/community/x86_64/ueberzug/
##

##
### Tail: Model mod_wallpaper_select_manjaro_prepare
################################################################################
