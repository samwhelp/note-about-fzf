

################################################################################
### Head: Model mod_wallpaper_select_manjaro_prepare
##

mod_wallpaper_select_manjaro_prepare () {
	#echo "mod_wallpaper_select_manjaro_prepare"
	#echo "$@"

	# wallpaper-select-gnome manjaro_prepare

	mod_wallpaper_select_manjaro_prepare_install_package

}


mod_wallpaper_select_manjaro_prepare_install_package () {

	util_error_echo "pamac install gnome fzf ueberzug"
	pamac install gnome fzf ueberzug

}

##
## * https://discover.manjaro.org/packages/gnome
## * https://discover.manjaro.org/packages/fzf
## * https://archlinux.org/packages/extra/x86_64/gnome/
## * https://archlinux.org/packages/community/x86_64/fzf/
## * https://archlinux.org/packages/community/x86_64/ueberzug/
##

##
### Tail: Model mod_wallpaper_select_manjaro_prepare
################################################################################
