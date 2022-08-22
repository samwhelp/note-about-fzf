

################################################################################
### Head: Model mod_wallpaper_select_ubuntu_prepare
##

mod_wallpaper_select_ubuntu_prepare () {
	#echo "mod_wallpaper_select_ubuntu_prepare"
	#echo "$@"

	# wallpaper-select-swaybg ubuntu_prepare

	mod_wallpaper_select_ubuntu_prepare_install_package

}


mod_wallpaper_select_ubuntu_prepare_install_package () {

	util_error_echo "Todo: mod_wallpaper_select_ubuntu_prepare_install_package"

	echo "sudo apt-get install swaybg fzf ueberzug"
	sudo apt-get install swaybg fzf ueberzug

}

##
## * https://discover.ubuntu.org/packages/swaybg
## * https://discover.ubuntu.org/packages/fzf
## * https://archlinux.org/packages/community/x86_64/swaybg/
## * https://archlinux.org/packages/community/x86_64/fzf/
## * https://archlinux.org/packages/community/x86_64/ueberzug/
##

##
### Tail: Model mod_wallpaper_select_ubuntu_prepare
################################################################################
