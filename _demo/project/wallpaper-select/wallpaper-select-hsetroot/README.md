
# wallpaper-select-hsetroot

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-hsetroot/wallpaper-select-hsetroot' -O "$HOME/.local/bin/wallpaper-select-hsetroot"

chmod 755 "$HOME/.local/bin/wallpaper-select-hsetroot"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-hsetroot/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-hsetroot/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-hsetroot
```

or

``` sh
$ wallpaper-select-hsetroot help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-hsetroot fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-hsetroot shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
