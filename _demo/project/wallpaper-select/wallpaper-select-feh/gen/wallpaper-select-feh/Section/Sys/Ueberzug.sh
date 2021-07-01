
################################################################################
### Head: Sys / Ueberzug
##

sys_ueberzug_ipc_start () {

	echo
	echo '## sys_ueberzug_ipc_start'

	## THE_UEBERZUG_CTRL="/tmp/ueberzug-ctrl"

	if [ -e "$THE_UEBERZUG_CTRL" ]; then
		echo "rm -f $THE_UEBERZUG_CTRL"
		rm -f "$THE_UEBERZUG_CTRL"
		#return 0
	fi

	echo "mkfifo $THE_UEBERZUG_CTRL"
	mkfifo "$THE_UEBERZUG_CTRL"

	if [ -e "$THE_UEBERZUG_CTRL" ]; then
		export THE_UEBERZUG_CTRL
		return 0
	else
		return 1
	fi

}

sys_ueberzug_ipc_stop () {
	echo
	echo '## sys_ueberzug_ipc_stop'
	if [ -e "$THE_UEBERZUG_CTRL" ]; then
		echo "rm -f $THE_UEBERZUG_CTRL"
		rm -f "$THE_UEBERZUG_CTRL"
		#return 0
	fi
}


sys_ueberzug_app_start () {
	echo
	echo '## sys_ueberzug_app_start'
	ueberzug layer --silent --parser json < "$THE_UEBERZUG_CTRL" &
	echo "ueberzug layer --silent --parser json < $THE_UEBERZUG_CTRL &"
	exec 3>"$THE_UEBERZUG_CTRL"
}

sys_ueberzug_app_stop () {
	echo
	echo '## sys_ueberzug_app_stop'
	exec 3>&-
}


sys_ueberzug_ses_start () {
	sys_ueberzug_ipc_start && sys_ueberzug_app_start
}

sys_ueberzug_ses_stop () {
	sys_ueberzug_app_stop
	sys_ueberzug_ipc_stop
}

##
### Tail: Sys / Ueberzug
################################################################################
