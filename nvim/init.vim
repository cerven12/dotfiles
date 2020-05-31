" defult nop
vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>
vnoremap  <Left>   <nop>
vnoremap  <Right>  <nop>
vnoremap  <BS>     <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
inoremap  <Left>   <nop>
inoremap  <Right>  <nop>
inoremap  <BS>     <nop>
noremap   <Up>     <nop>
noremap   <Down>   <nop>
noremap   <Left>   <nop>
noremap   <Right>  <nop>
noremap   <BS>     <nop>

"------------------------------------
"    setting
set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=4          "タブを何文字の空白に変換するか
set cursorline         " カーソルラインをハイライト
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set backspace=indent,eol,start
set hls                "検索した文字をハイライトする
" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch
" 検索パターンに大文字小文字を区別しない
set ignorecase
" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase
set encoding=utf-8
scriptencoding utf-8
" 保存時の文字コード
set fileencoding=utf-8
" 読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
" 改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac
" □や○文字が崩れる問題を解決"
set ambiwidth=double
set encoding=UTF-8
" insert -> nomal 遅延を防ぐ
set ttimeoutlen=50
" スワップファイルの作成先を変更
set noswapfile
" ヤンクをクリップボードへ繋ぐ
set clipboard=unnamed
" ビープ音を消す
set belloff=all
set title

"-------------------------------------
"               Key Bind
"-------------------------------------
" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" ^ で行頭に移動
" $  で行末に移動

" 画面分割系
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" Pluginのキーマップ
map <C-n> :NERDTreeToggle<CR>
map <C-S-m> :MarkdownPreview<CR>
"-------------------------------------
"                 dein
"-------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  " call dein#add('Shougo/deoplete.nvim')
  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
    if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
  endif
let g:deoplete#enable_at_startup = 1

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable


"End dein Scripts-------------------------
" カラーテーマの指定
let g:airline_theme = 'minimalist'
" パワーラインでかっこよく
let g:airline_powerline_fonts = 1
" タブバーをかっこよく
let g:airline#extensions#tabline#enabled = 1
" 選択行列の表示をカスタム(デフォルトだと長くて横幅を圧迫するので最小限に)
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])


" Color
autocmd ColorScheme * highlight Comment ctermfg=none
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
colorscheme material


" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

