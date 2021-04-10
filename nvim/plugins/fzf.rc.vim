let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6,  'highlight': 'Comment', 'border':'rounded' } }
let g:fzf_preview_window = ['right:50%',]
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

hi! fzf_fg ctermfg=14
hi! fzf_fgp ctermfg=3
hi! fzf_hl ctermfg=5 
hi! fzf_hlp ctermfg=5 
hi! fzf_info ctermfg=6
hi! fzf_prompt ctermfg=6
hi! fzf_spinner ctermfg=6
hi! fzf_pointer ctermfg=3

let g:fzf_colors = { 
  \ 'fg':      ['fg', 'fzf_fg'], 
  \ 'hl':      ['fg', 'fzf_hl'],
  \ 'fg+':     ['fg', 'fzf_fgp'],
  \ 'hl+':     ['fg', 'fzf_hlp'],
  \ 'info':    ['fg', 'fzf_info'],
  \ 'prompt':  ['fg', 'fzf_prompt'],
  \ 'pointer': ['fg', 'fzf_pointer'],
  \ 'spinner': ['fg', 'fzf_spinner'] }

nnoremap <silent><leader>a :<C-u>Ag<CR>
nnoremap <silent><leader>f :<C-u>Files<CR>
nnoremap <silent><leader>b :<C-u>Buffers<CR>
nnoremap <silent><leader>m :<C-u>History<CR>
nnoremap <silent><leader>l :<C-u>Lines<CR>

" bat syntax for fxf.vim
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
