set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"--------------------------------------------
" Key Bind
" -------------------------------------------
" Visual mode
vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>

" Normal mode
noremap   <Up>     <nop>
noremap   <Down>   <nop>

" Do not yank characters deleted by x.
vnoremap x "_x
nnoremap x "_x

" Screen splitting.
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

"-------------------------------------------
" Settings
" ------------------------------------------
set number             " Display the line number.
set showmatch          " Display the corresponding parentheses.
set autoindent         " Indent at line breaks.
set tabstop=4          " Number of blank characters in tabs.
set cursorline         " Highlight the cousor line.
set shiftwidth=2       " Number of spaces to be filled in by auto-indent.
set expandtab          " Convert tabs to spaces.
set splitright         " The split screen opens to the right.
set clipboard=unnamed  " Copy the yanked string to the clipboard.
set showmatch          " Jumps to the corresponding parentheses as you type.
set matchtime=1        " ⇡ Specify the time to jump.
set backspace=indent,eol,start
set pumheight=10       " Height of the completion menu
set hls                " Highlight the searched text.
set incsearch          " Search one character at a time.
set ignorecase         " The search is not case-sensitive.
set smartcase          " If the search pattern contains uppercase letters, it is case-sensitive.
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set ambiwidth=double   " Symbols are displayed as two half-width characters.
set ttimeoutlen=50
set noswapfile
set belloff=all
set title
set showcmd            " Displays the command being entered in the status.
syntax enable


" Plugin
map <C-n> :NERDTreeToggle<CR>
map <C-m> :MarkdownPreview<CR>
map <C-k> :FixWhitespace<CR>

"-------------------------------------
"                 dein
"-------------------------------------
if &compatible
  set nocompatible
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
  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
    if !has('nvim')
  endif

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


"----------------------------------
" Vim Tab Setting
" ---------------------------------"
let mapleader = "\<Space>"
nnoremap <silent> <leader>tf :<c-u>tabfirst<cr>
nnoremap <silent> <leader>tl :<c-u>tablast<cr>
nnoremap <silent> <leader>tn :<c-u>tabnext<cr>
nnoremap <silent> <leader>tN :<c-u>tabNext<cr>
nnoremap <silent> <leader>tp :<c-u>tabprevious<cr>
nnoremap <silent> <leader>te :<c-u>tabedit<cr>
nnoremap <silent> <leader>tc :<c-u>tabclose<cr>
nnoremap <silent> <leader>to :<c-u>tabonly<cr>
nnoremap <silent> <leader>ts :<c-u>tabs<cr>
nnoremap <silent> <leader>tr :<c-u>TabRecent<cr>

"----------------------------------
" AirLine
"----------------------------------
set laststatus=2
let g:airline_theme = 'wombat' " Color Theme
let g:airline_powerline_fonts = 1  " Acticate powerline font
let g:airline#extensions#tabline#enabled = 1  " Activate tabs
let g:airline#extensions#tabline#buffer_idx_mode = 1 " Display tab index
" 選択行列の表示をカスタム(デフォルトだと長くて横幅を圧迫するので最小限に)
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Color
autocmd ColorScheme * highlight Comment ctermfg=none
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
colorscheme material

" Font
" https://github.com/ryanoasis/nerd-fonts

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif




" vue syntax highlighting
autocmd FileType vue syntax sync fromstart

" jsonc syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

" coc.nvim
" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc-snippets
" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

