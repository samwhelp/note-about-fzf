
# wallpaper-select-gnome

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-gnome/wallpaper-select-gnome' -O "$HOME/.local/bin/wallpaper-select-gnome"

chmod 755 "$HOME/.local/bin/wallpaper-select-gnome"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-gnome/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-gnome/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-gnome
```

or

``` sh
$ wallpaper-select-gnome help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-gnome fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-gnome shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
