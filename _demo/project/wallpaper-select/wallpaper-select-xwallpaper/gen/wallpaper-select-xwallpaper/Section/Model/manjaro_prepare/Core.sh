

################################################################################
### Head: Model mod_wallpaper_select_manjaro_prepare
##

mod_wallpaper_select_manjaro_prepare () {
	#echo "mod_wallpaper_select_manjaro_prepare"
	#echo "$@"

	# wallpaper-select-xwallpaper manjaro_prepare

	mod_wallpaper_select_manjaro_prepare_install_package

}


mod_wallpaper_select_manjaro_prepare_install_package () {

	util_error_echo "pamac install xwallpaper fzf ueberzug"
	pamac install xwallpaper fzf ueberzug

}

##
## * https://discover.manjaro.org/packages/xwallpaper
## * https://discover.manjaro.org/packages/fzf
## * https://archlinux.org/packages/extra/x86_64/xwallpaper/
## * https://archlinux.org/packages/community/x86_64/fzf/
## * https://archlinux.org/packages/community/x86_64/ueberzug/
##

##
### Tail: Model mod_wallpaper_select_manjaro_prepare
################################################################################
