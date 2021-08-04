---
title: wallpaper-select-gnome
nav_order: 8015
has_children: false
parent: wallpaper-select
grand_parent: 專案
---

# wallpaper-select-gnome


## 專案連結

* [wallpaper-select-gnome](https://github.com/samwhelp/note-about-fzf/tree/gh-pages/_demo/project/wallpaper-select/wallpaper-select-gnome)


## 採用工具

* [gsettings](http://manpages.ubuntu.com/manpages/focal/man1/gsettings.1.html)


## 其他專案

* [opset-wallpaper-gnome](https://samwhelp.github.io/note-about-wallpaper/read/project/opset-wallpaper/opset-wallpaper-gnome.html)



## 使用範例

### fzf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會顯示該資料夾所有圖片列表，當作是選項，提供給您做選擇。

```
wallpaper-select-gnome fzf
```


### shuf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會隨機選取該資料夾的某一張圖片，設定為桌面圖片。

``` sh
wallpaper-select-gnome shuf
```

或是直接執行

``` sh
wallpaper-select-gnome shuf ~/Pictures
```
