#!/usr/bin/env bash


################################################################################
### Head: preview
##

preview_text () {
	printf "## Info\n"
	printf " $1\n"
}



preview_image () {
	local thumb_id="demo_001"
	local thumb_file_name="$1"
	local thumb_file_path="$HOME/Pictures/demo/$thumb_file_name.png"
	local thumb_x=1
	local thumb_y=10
	local thumb_width=15
	local thumb_height=20

	{
		printf '{'
		printf '"action": "add",'
		printf '"identifier": "%s",' "$thumb_id"
		printf '"path": "%s",' "$thumb_file_path"
		printf '"x": %d,' "$thumb_x"
		printf '"y": %d,' "$thumb_y"
		printf '"width": %d,' "$thumb_width"
		printf '"height": %d,' "$thumb_height"
		printf '"scaler": "fit_contain"'
		printf '}\n'

	} > "$UEBERZUG_CTRL"
}


preview_main () {
	preview_text "$1"
	preview_image "$1"
}

##
### Tail: preview
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	preview_main "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
