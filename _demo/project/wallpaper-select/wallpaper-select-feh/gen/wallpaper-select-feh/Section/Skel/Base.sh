

################################################################################
### Head: Util_Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2;
	fi
}

##
### Head: Util_Debug
################################################################################


################################################################################
### Head: Base
##
find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

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
		THE_CMD_FILE_NAME="wallpaper-select-feh"
	fi

	THE_CMD_FILE_PATH="${THE_CMD_DIR_PATH}/$THE_CMD_FILE_NAME"

	## https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/project/wallpaper-select/wallpaper-select-feh/wallpaper-select-feh
	THE_SELF_UPDATE_URL='https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-feh/wallpaper-select-feh'


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


	## feh
	THE_FEH_BG_OPTION_LIST="center fill max scale tile"

	## wallpaper
	THE_WALLPAPER_DEFAULT_FILE_PATH="/usr/share/backgrounds/xfce/palm-wave.jpg"

	THE_WALLPAPER_DEFAULT_DIR_PATH="/usr/share/backgrounds"

	THE_WALLPAPER_FAVORITE_DIR_PATH="$HOME/Pictures/Wallpaper"

	THE_WALLPAPER_XFCE_DIR_PATH="/usr/share/backgrounds/xfce"



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



	util_debug_echo "THE_FEH_BG_OPTION_LIST=$THE_FEH_BG_OPTION_LIST"

	util_debug_echo "THE_WALLPAPER_DEFAULT_FILE_PATH=$THE_WALLPAPER_DEFAULT_FILE_PATH"



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
### Head: Util_Command
##

is_function_exist () {
	if type -p "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

is_command_exist () {
	if command -v "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

##
### Tail: Util_Command
################################################################################


################################################################################
### Head: Util_SubCmd
##

sub_cmd_find_function_name () {
	echo "sub_run_$1"
}

##
### Tail: Util_SubCmd
################################################################################