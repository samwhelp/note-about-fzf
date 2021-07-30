---
title: wallpaper-select-xwallpaper
nav_order: 8013
has_children: false
parent: wallpaper-select
grand_parent: 專案
---

# wallpaper-select-xwallpaper


## 專案連結

* [wallpaper-select-xwallpaper](https://github.com/samwhelp/note-about-fzf/tree/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xwallpaper)


## 採用工具

* [xwallpaper](https://github.com/stoeckmann/xwallpaper)


## 其他專案

* [opset-wallpaper-xwallpaper](https://samwhelp.github.io/note-about-wallpaper/read/project/opset-wallpaper/opset-wallpaper-xwallpaper.html)


## 使用範例

### fzf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會顯示該資料夾所有圖片列表，當作是選項，提供給您做選擇。

```
wallpaper-select-xwallpaper fzf
```


### shuf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會隨機選取該資料夾的某一張圖片，設定為桌面圖片。

```
wallpaper-select-xwallpaper shuf
```
