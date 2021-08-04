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
	pamac install php
.PHONY: prepare


app:
	php wallpaper-select-xfce.sh > ../../wallpaper-select-xfce
	chmod 755 ../../wallpaper-select-xfce
.PHONY: app
