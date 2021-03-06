# NeoVim Often Used Command

## Basic
### in normal mode
---
#### Moving and creating screens
* `sj` Go to the screen below.
* `sk` Go to the upper screen.
* `sl` Go to the right screen.
* `sh` Go to the left screen.
* `ss` Create a screen underneath.
* `sv` Create a screen on the right.

#### Enter the same string on multiple lines
1. `CTRL v`
2. Specify a selection
3. `Shift i`
4. Enter text
5. `Esc`

## defx(Explorer)
### Start with `sf` In normal mode
---
#### Action
* `h` cd ..
* `q` quit
* `k` ⇡
* `j` ↓
---
#### File Operation
* `Enter` Open
* `E` Open split screen
* `K` Create Directory
* `N` Create File
* `M` Create Multiple Files
* `d` Delete
* `r` Rename
* 'o' open or close tree
* `.` Toggle Ignored Files
---
#### Execution Terminal Command
* `!` Execute Command
---
#### Yank File Path
* `yy` Yank Path
---


## coc.vim(Language Server Protocol)
### in Normal Mode
* `[g`  coc-diagnostic-prev
* `]g`  coc-diagnostic-next
* `gd`  coc-definition
* `gy`  coc-type-definition
* `gi`  coc-implementation
* `gr`  coc-references

## buffer
* 'ctr-o' back
* 'ctr-i' next
* ':ls' buffer position


## fzf(Incremental Fuzzy Finder)
### in Normal Mode
* `<leader> a` Ag
* `<leader> f` Files
* `<leader> b` Buffers
* `<leader> m` History
* `<leader> l` Lines

## Window Size
* `Cntl E hjkl` Vim Window Resize

## HTML Tag
### in Normal Mode
* `<leader> 5` Jump To Matching Tags

## Comment
### in Normal Mode
* `<leader> cc` Comment out the current line or text selected in visual mode.
* `<leader> ci` Toggles the comment state of the selected line(s) individually.
* `<leader> cs` Comments out the selected lines with a pretty block formatted layout.
* `<leader> cA` Adds comment delimiters to the end of line and goes into insert mode between them.

