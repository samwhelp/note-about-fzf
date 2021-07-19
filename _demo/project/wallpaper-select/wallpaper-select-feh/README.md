
# wallpaper-select-feh

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-feh/wallpaper-select-feh' -O "$HOME/.local/bin/wallpaper-select-feh"

chmod 755 "$HOME/.local/bin/wallpaper-select-feh"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-feh/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-feh/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-feh
```

or

``` sh
$ wallpaper-select-feh help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-feh fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-feh shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
