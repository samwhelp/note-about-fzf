

################################################################################
### Head: Model fzf
##

mod_fzf () {
	#echo "mod_fzf"
	#echo "$@"




	mod_fzf_ses_start "$@"



}


mod_fzf_app_start () {

	if ! is_command_exist 'fzf'; then

cat << EOF

## Need: fzf

	* https://github.com/junegunn/fzf

	$ pamac install fzf

EOF
		return 1
	fi


	PREVIEW_SIDE="left"

	export THE_CWD_PATH=$(pwd)

	local preview_app="$0 _fzf_preview_area"

	local selected=$(sys_wallpaper_select_list_by_dir . | fzf --preview "$preview_app {}" --preview-window "$PREVIEW_SIDE:50%:noborder:wrap")

	util_error_echo
	util_error_echo "## Selected: $selected"
	sys_fzf_wallpaper_preview_image_remove
	util_error_echo

	if [ "none$selected" = "none" ]; then
		return 1
	fi

	mod_wallpaper_select_set "$selected"


}

mod_fzf_ses_start () {
	trap sys_ueberzug_ses_stop EXIT QUIT INT TERM
	sys_ueberzug_ses_start "$@"
	mod_fzf_app_start "$@"
}

##
### Tail: Model fzf
################################################################################
