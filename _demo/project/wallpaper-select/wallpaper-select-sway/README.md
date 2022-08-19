
# wallpaper-select-sway

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-sway/wallpaper-select-sway' -O "$HOME/.local/bin/wallpaper-select-sway"

chmod 755 "$HOME/.local/bin/wallpaper-select-sway"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-sway/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-sway/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-sway
```

or

``` sh
$ wallpaper-select-sway help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-sway fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-sway shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
