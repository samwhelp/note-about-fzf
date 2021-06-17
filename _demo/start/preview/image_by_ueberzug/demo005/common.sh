

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

##
### Tail: item
################################################################################
