---
title: wallpaper-select-hsetroot
nav_order: 8012
has_children: false
parent: wallpaper-select
grand_parent: 專案
---

# wallpaper-select-hsetroot


## 專案連結

* [wallpaper-select-hsetroot](https://github.com/samwhelp/note-about-fzf/tree/gh-pages/_demo/project/wallpaper-select/wallpaper-select-hsetroot)


## 採用工具

* [hsetroot](https://github.com/himdel/hsetroot)


## 其他專案

* [opset-wallpaper-hsetroot](https://samwhelp.github.io/note-about-wallpaper/read/project/opset-wallpaper/opset-wallpaper-hsetroot.html)


## 相關筆記

* manjaro 探索筆記 / [hsetroot](https://samwhelp.github.io/note-about-manjaro/read/adjustment/tool/hsetroot.html)



## 使用範例

### fzf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會顯示該資料夾所有圖片列表，當作是選項，提供給您做選擇。

```
wallpaper-select-hsetroot fzf
```


### shuf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會隨機選取該資料夾的某一張圖片，設定為桌面圖片。

``` sh
wallpaper-select-hsetroot shuf
```

或是直接執行

``` sh
wallpaper-select-hsetroot shuf ~/Pictures
```
