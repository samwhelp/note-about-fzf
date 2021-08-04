
# wallpaper-select-xfce

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce/wallpaper-select-xfce' -O "$HOME/.local/bin/wallpaper-select-xfce"

chmod 755 "$HOME/.local/bin/wallpaper-select-xfce"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-xfce
```

or

``` sh
$ wallpaper-select-xfce help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-xfce fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-xfce shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
