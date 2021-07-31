

################################################################################
### Head: Model fzf_no_preview
##

mod_fzf_no_preview () {
	#echo "mod_fzf_no_preview"
	#echo "$@"

	if ! is_command_exist 'fzf'; then

		util_error_echo '## Need: fzf'
		util_error_echo '# * https://github.com/junegunn/fzf'
		util_error_echo
		util_error_echo '## Manjaro Install:'
		util_error_echo '# $ pamac install fzf'
		util_error_echo
		util_error_echo '## Ubuntu Install:'
		util_error_echo '# $ sudo apt-get install fzf'
		util_error_echo

		return 1
	fi




	local selected="$(sys_wallpaper_select_list_by_dir . | fzf)"

	util_error_echo
	util_error_echo "## Selected: $selected"
	util_error_echo

	if [ "none$selected" = "none" ]; then
		return 1
	fi

	mod_wallpaper_select_set "$selected"

}

##
### Tail: Model fzf_no_preview
################################################################################
