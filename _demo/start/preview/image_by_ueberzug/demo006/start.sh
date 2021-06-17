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

preview_image_remove () {
	echo
	echo "## preview_image_remove"

	local thumb_id="preview_image_item"

	{
		printf '{'
		printf '"identifier": "%s",' "$thumb_id"
		printf '"action": "remove"'
		printf '}\n'

	} > "$UEBERZUG_CTRL"
}

##
### Tail: preview
################################################################################


################################################################################
### Head: ueberzug
##

ueberzug_ipc_start () {
	echo
	echo '## ueberzug_ipc_start'

	UEBERZUG_CTRL="/tmp/ueberzug-ctrl"

	if [ -e "$UEBERZUG_CTRL" ]; then
		echo "rm -f $UEBERZUG_CTRL"
		rm -f "$UEBERZUG_CTRL"
		#return 0
	fi

	echo "mkfifo $UEBERZUG_CTRL"
	mkfifo "$UEBERZUG_CTRL"

	if [ -e "$UEBERZUG_CTRL" ]; then
		export UEBERZUG_CTRL
		return 0
	else
		return 1
	fi

}

ueberzug_ipc_stop () {
	echo
	echo '## ueberzug_ipc_stop'
	if [ -e "$UEBERZUG_CTRL" ]; then
		echo "rm -f $UEBERZUG_CTRL"
		rm -f "$UEBERZUG_CTRL"
		#return 0
	fi
}


ueberzug_app_start () {
	echo
	echo '## ueberzug_app_start'
	ueberzug layer --silent --parser json < "$UEBERZUG_CTRL" &
	echo "ueberzug layer --silent --parser json < $UEBERZUG_CTRL &"
	exec 3>"$UEBERZUG_CTRL"
}

ueberzug_app_stop () {
	echo
	echo '## ueberzug_app_stop'
	exec 3>&-
}


ueberzug_ses_start () {
	ueberzug_ipc_start && ueberzug_app_start
}

ueberzug_ses_stop () {
	ueberzug_app_stop
	ueberzug_ipc_stop
}

##
### Tail: ueberzug
################################################################################


################################################################################
### Head: fzf
##

fzf_list_find () {
	##cat "$1" | awk -F 'v=' '{printf $2"\n"}'
	local id
	for id in $(cat "$1" | awk -F 'v=' '{printf $2"\n"}'); do
		item_create_title_by_id "$id"
	done
}

fzf_app_start () {
	PREVIEW_SIDE="left"

	## fzf_list_find | fzf --preview "./preview.sh {}" --preview-window "$PREVIEW_SIDE:50%:noborder:wrap"
	local selected=$(fzf_list_find "$1" | fzf --cycle --preview "./preview.sh {}" --preview-window "$PREVIEW_SIDE:50%:noborder:wrap")
	local id=$(item_find_id_by_title "$selected")

	echo
	echo '## Selected'
	echo "  $selected"
	echo "  $id"

	local url="$(item_find_url $id)"
	echo "  $url"

	preview_image_remove

	echo
	echo '## Start Play'

	##mpv "$(item_find_url $selected)"
	echo "mpv $url"
	mpv "$url"
}

fzf_ses_start () {
	ueberzug_ses_start
	fzf_app_start "$1"
}

##
### Tail: fzf
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	trap ueberzug_ses_stop EXIT QUIT INT TERM
	fzf_ses_start "$1"
}

__main__ "$@"

##
### Tail: Main
################################################################################
