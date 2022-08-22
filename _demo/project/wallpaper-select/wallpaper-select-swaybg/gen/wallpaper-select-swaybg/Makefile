default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make app'
	@echo

.PHONY: help


prepare:
	#pamac install php
	sudo apt-get install php-cli
.PHONY: prepare


app:
	php wallpaper-select-swaybg.sh > ../../wallpaper-select-swaybg
	chmod 755 ../../wallpaper-select-swaybg
.PHONY: app
