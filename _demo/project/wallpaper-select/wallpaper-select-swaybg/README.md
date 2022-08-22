
# wallpaper-select-swaybg

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-swaybg/wallpaper-select-swaybg' -O "$HOME/.local/bin/wallpaper-select-swaybg"

chmod 755 "$HOME/.local/bin/wallpaper-select-swaybg"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-swaybg/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-swaybg/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-swaybg
```

or

``` sh
$ wallpaper-select-swaybg help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-swaybg fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-swaybg shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
