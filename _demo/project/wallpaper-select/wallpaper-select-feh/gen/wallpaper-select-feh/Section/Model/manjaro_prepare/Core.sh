

################################################################################
### Head: Model mod_wallpaper_select_manjaro_prepare
##

mod_wallpaper_select_manjaro_prepare () {
	#echo "mod_wallpaper_select_manjaro_prepare"
	#echo "$@"

	# wallpaper-select-feh manjaro_prepare

	mod_wallpaper_select_manjaro_prepare_install_package

}


mod_wallpaper_select_manjaro_prepare_install_package () {

	pamac install feh fzf ueberzug

}

##
## * https://discover.manjaro.org/packages/feh
## * https://discover.manjaro.org/packages/fzf
## * https://archlinux.org/packages/extra/x86_64/feh/
## * https://archlinux.org/packages/community/x86_64/fzf/
## * https://archlinux.org/packages/community/x86_64/ueberzug/
##

##
### Tail: Model mod_wallpaper_select_manjaro_prepare
################################################################################
