---
title: wallpaper-select-xfce
nav_order: 8014
has_children: false
parent: wallpaper-select
grand_parent: 專案
---

# wallpaper-select-xfce


## 專案連結

* [wallpaper-select-xfce](https://github.com/samwhelp/note-about-fzf/tree/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce)


## 採用工具

* [xfconf-query](https://docs.xfce.org/xfce/xfconf/xfconf-query)


## 其他專案

* [opset-wallpaper-xfce](https://samwhelp.github.io/note-about-wallpaper/read/project/opset-wallpaper/opset-wallpaper-xfce.html)


## 相關筆記

* manjaro 探索筆記 / [xfce](https://samwhelp.github.io/note-about-manjaro/read/adjustment/full/xfce.html)



## 使用範例

### fzf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會顯示該資料夾所有圖片列表，當作是選項，提供給您做選擇。

```
wallpaper-select-xfce fzf
```


### shuf

先切換到有圖片的資料夾

``` sh
cd ~/Pictures
```

然後執行下面指令，就會隨機選取該資料夾的某一張圖片，設定為桌面圖片。

``` sh
wallpaper-select-xfce shuf
```

或是直接執行

``` sh
wallpaper-select-xfce shuf ~/Pictures
```
