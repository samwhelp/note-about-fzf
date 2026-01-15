---
title: 如何在「Debian」，安裝「fzf」
nav_order: 1010
has_children: false
parent: fzf / 安裝
grand_parent: 入門
---


# 如何在「Debian」，安裝「fzf」




## 主題

* [安裝](#安裝)
* [版本](#版本)
* [整合設定](#整合設定)
* [接下來](#接下來)




## 安裝

執行下面指令，安裝相關套件。

``` sh
sudo apt-get install fzf
```




## 版本

執行

``` sh
fzf --version
```

顯示

```
0.60 (devel)
```




## 整合設定

### bash

在「bash」，只要加入[下面一行](https://github.com/samwhelp/debian-adjustment/blob/main/prototype/main/shell-config/bash-config/asset/overlay/etc/skel/.fzf-load.bash#L27)到「`~/.bashrc`」。

``` sh
[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && . /usr/share/doc/fzf/examples/key-bindings.bash
```




## 接下來

> 接下來，了解「[fzf / 搭配「Shell」的「按鍵綁定」](https://samwhelp.github.io/note-about-fzf/read/start/keybind.html)」。
