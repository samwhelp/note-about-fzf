

################################################################################
### Head: item
##

item_find_title () {
	cat "cache/db/$1/title.txt"
}

item_find_url () {
	printf "https://www.youtube.com/watch?v=%s" "$1"
}

item_find_thumb_file_path () {
	cat "cache/db/$1/thumb_file_path.txt"
}


item_find_id_by_title () {
	local title="$1"
	local id=$(echo "$title" | awk -F "  -  " '{printf $2}')
	printf "%s" "$id"
}

item_create_title_by_id () {
	local id="$1"
	printf "%s  -  %s\n" "$(item_find_title $id)" "$id"
}

##
### Tail: item
################################################################################
