#!/usr/bin/env bash

################################################################################
### Head: Lib
##
source common.sh

##
### Tail: Lib
################################################################################


################################################################################
### Head: preview
##



preview_text () {
	printf "## Info\n"
	printf "    Id:      %s\n" "$1"
	printf "    Title:   %s\n" "$(item_find_title $1)"
	printf "    Url:     %s\n" "$(item_find_url $1)"
}



preview_image () {
	local thumb_id="preview_image_item"
	local thumb_file_path="$(item_find_thumb_file_path $1)"
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
	#echo "$@"
	local id=$(item_find_id_by_title "$@")
	preview_text "$id"
	preview_image "$id"
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
