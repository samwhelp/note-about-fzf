

################################################################################
### Head: Util / Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2
	fi
}

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Base
##

## THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"

find_dir_path () {
	if ! [ -d "$(dirname -- "$1")" ]; then
		dirname -- "$1"
		return 1
	fi
	echo "$(cd -- "$(dirname -- "$1")" ; pwd)"
}

## THIS_BASE_DIR_PATH="$(find_dir_path "$0")"

## $ export DEBUG_WALLPAPER_SELECT=true
is_debug () {
	if [ "$DEBUG_WALLPAPER_SELECT" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	#THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.")
	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/.")

	THE_CMD_VERSION='0.1'

	THE_CMD_DIR_PATH="${THE_BASE_DIR_PATH}"

	if [ "none${THE_CMD_FILE_NAME}" = 'none' ]; then
		THE_CMD_FILE_NAME="wallpaper-select-sway"
	fi

	THE_CMD_FILE_PATH="${THE_CMD_DIR_PATH}/$THE_CMD_FILE_NAME"

	## https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/project/wallpaper-select/wallpaper-select-sway/wallpaper-select-sway
	THE_SELF_UPDATE_URL='https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-sway/wallpaper-select-sway'


	THE_TMP_DIR_PATH="/tmp"


	THE_ASSET_DIR_NAME="asset"
	THE_ASSET_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_ASSET_DIR_NAME"

	THE_VAR_DIR_NAME="var"
	THE_VAR_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_VAR_DIR_NAME"

	THE_PROFILE_DIR_NAME=".${THE_CMD_FILE_NAME}-profile"
	THE_PROFILE_DIR_PATH="$HOME/$THE_PROFILE_DIR_NAME"

	THE_PROJECT_DIR_NAME="${THE_CMD_FILE_NAME}"
	THE_PROJECT_DIR_PATH="$HOME/.local/share/$THE_PROJECT_DIR_NAME"

	THE_CONFIG_DIR_NAME="${THE_CMD_FILE_NAME}"
	THE_CONFIG_DIR_PATH="$HOME/.config/$THE_CONFIG_DIR_NAME"

	THE_CACHE_DIR_NAME="${THE_CMD_FILE_NAME}"
	THE_CACHE_DIR_PATH="$HOME/.cache/$THE_CACHE_DIR_NAME"


	## ueberzug
	THE_UEBERZUG_CTRL="/tmp/ueberzug-ctrl"

	##
	## $ man swaybg
	## stretch, fill, fit, center, or tile
	##
	THE_SWAYBG_BG_OPTION_LIST="fill fit stretch center tile"

	## wallpaper
	THE_WALLPAPER_DEFAULT_DIR_PATH="/usr/share/backgrounds"
	THE_WALLPAPER_XFCE_DIR_PATH="/usr/share/backgrounds/xfce"
	THE_WALLPAPER_FAVORITE_DIR_PATH="$HOME/Pictures/Wallpaper"

	THE_WALLPAPER_DEFAULT_FILE_PATH="$THE_WALLPAPER_FAVORITE_DIR_PATH/default.jpg"
	THE_WALLPAPER_FAVORITE_FILE_PATH="$THE_WALLPAPER_FAVORITE_DIR_PATH/favorite.png"


}

base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: var_dump"
	util_debug_echo "##"
	util_debug_echo "#"


	util_debug_echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"

	util_debug_echo "THE_CMD_FILE_NAME=$THE_CMD_FILE_NAME"
	util_debug_echo "THE_CMD_FILE_PATH=$THE_CMD_FILE_PATH"
	util_debug_echo "THE_CMD_DIR_PATH=$THE_CMD_DIR_PATH"

	util_debug_echo "THE_SELF_UPDATE_URL=$THE_SELF_UPDATE_URL"


	util_debug_echo "THE_TMP_DIR_PATH=$THE_TMP_DIR_PATH"


	util_debug_echo "THE_ASSET_DIR_NAME=$THE_ASSET_DIR_NAME"
	util_debug_echo "THE_ASSET_DIR_PATH=$THE_ASSET_DIR_PATH"

	util_debug_echo "THE_VAR_DIR_NAME=$THE_VAR_DIR_NAME"
	util_debug_echo "THE_VAR_DIR_PATH=$THE_VAR_DIR_PATH"




	util_debug_echo "THE_PROFILE_DIR_NAME=$THE_PROFILE_DIR_NAME"
	util_debug_echo "THE_PROFILE_DIR_PATH=$THE_PROFILE_DIR_PATH"

	util_debug_echo "THE_PROJECT_DIR_NAME=$THE_PROJECT_DIR_NAME"
	util_debug_echo "THE_PROJECT_DIR_PATH=$THE_PROJECT_DIR_PATH"

	util_debug_echo "THE_CONFIG_DIR_NAME=$THE_CONFIG_DIR_NAME"
	util_debug_echo "THE_CONFIG_DIR_PATH=$THE_CONFIG_DIR_PATH"

	util_debug_echo "THE_CACHE_DIR_NAME=$THE_CACHE_DIR_NAME"
	util_debug_echo "THE_CACHE_DIR_PATH=$THE_CACHE_DIR_PATH"




	## ueberzug
	util_debug_echo "THE_UEBERZUG_CTRL=$THE_UEBERZUG_CTRL"

	## swaybg
	util_debug_echo "THE_SWAYBG_BG_OPTION_LIST=$THE_SWAYBG_BG_OPTION_LIST"

	## wallpaper
	util_debug_echo "THE_WALLPAPER_DEFAULT_DIR_PATH=$THE_WALLPAPER_DEFAULT_DIR_PATH"
	util_debug_echo "THE_WALLPAPER_FAVORITE_DIR_PATH=$THE_WALLPAPER_FAVORITE_DIR_PATH"
	util_debug_echo "THE_WALLPAPER_XFCE_DIR_PATH=$THE_WALLPAPER_XFCE_DIR_PATH"

	util_debug_echo "THE_WALLPAPER_DEFAULT_FILE_PATH=$THE_WALLPAPER_DEFAULT_FILE_PATH"
	util_debug_echo "THE_WALLPAPER_FAVORITE_FILE_PATH=$THE_WALLPAPER_FAVORITE_FILE_PATH"




	util_debug_echo "#"
	util_debug_echo "##"
	util_debug_echo "### Tail: var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo
}


base_var_init

base_var_dump

##
### Tail: Base
################################################################################


################################################################################
### Head: Util / Command
##

is_function_exist () {
	if type -p "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

# is_command_exist () {
# 	if command -v "$1" > /dev/null; then
# 		return 0
# 	else
# 		return 1
# 	fi
# }

is_command_exist () {
	if [ -x "$(command -v $1)" ]; then
		return 0
	else
		return 1
	fi
}

##
### Tail: Util / Command
################################################################################


################################################################################
### Head: Util / Process
##

util_stop_all ()  {

	if is_command_exist 'pkill'; then
		util_stop_all_by_pkill "$1"
		return 0
	fi

	if is_command_exist 'killall'; then
		util_stop_all_by_killall "$1"
		return 0
	fi

	return 0
}

util_stop_all_by_pkill () {

	if pkill "$1"; then
		return 0
	fi

	return 0
}

util_stop_all_by_killall () {

	if killall -q -9 "$1"; then
		return 0
	fi

	return 0

}

##
### Tail: Util / Process
################################################################################


################################################################################
### Head: Util / SubCmd
##

sub_cmd_find_function_name () {
	echo "sub_run_$1"
}

##
### Tail: Util / SubCmd
################################################################################
