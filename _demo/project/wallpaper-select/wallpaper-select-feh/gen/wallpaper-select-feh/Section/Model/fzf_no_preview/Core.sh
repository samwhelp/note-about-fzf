

################################################################################
### Head: Model fzf_no_preview
##

mod_fzf_no_preview () {
	#echo "mod_fzf_no_preview"
	#echo "$@"

	if ! is_command_exist 'fzf'; then

cat << EOF

## Need: fzf

	* https://github.com/junegunn/fzf

	$ pamac install fzf

EOF
		return 1
	fi




	local selected=$(sys_wallpaper_select_list_by_dir . | fzf)

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
