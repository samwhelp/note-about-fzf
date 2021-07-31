
# wallpaper-select-xwallpaper

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xwallpaper/wallpaper-select-xwallpaper' -O "$HOME/.local/bin/wallpaper-select-xwallpaper"

chmod 755 "$HOME/.local/bin/wallpaper-select-xwallpaper"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xwallpaper/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xwallpaper/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ wallpaper-select-xwallpaper
```

or

``` sh
$ wallpaper-select-xwallpaper help
```

### fzf

``` sh
cd ~/Pictures
wallpaper-select-xwallpaper fzf
```


### shuf

``` sh
cd ~/Pictures
wallpaper-select-xwallpaper shuf
```


### Debug

``` sh
$ export DEBUG_WALLPAPER_SELECT=true
```
