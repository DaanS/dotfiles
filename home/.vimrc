execute pathogen#infect()
set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set backspace=indent,eol,start
set autoindent
set nostartofline
set confirm
set visualbell
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
set ignorecase smartcase hlsearch incsearch
set number
set laststatus=2
set diffopt+=iwhite
set statusline=%f\ %h%m%r%=%c,\ %l/%L\ "
set t_Co=256
set background=dark
set ttymouse=xterm2
set mouse=a
colorscheme solarized
"disable Background Color Erase (to play nicely with tmux)
set t_ut=
let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0
let g:netrw_ftpmode = 'ascii'
let g:netrw_sort_sequence = '[\/]$,\<core\%(\.\d\+\)\=,\.[a-np-z]$,\.h$\|\.c$\|\.cpp$\|\.hxx$\|\.cxx$,*,\.o$,\.obj$,\.info$,\.swp$\|\.swo$,\.bak$,\~$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_mruf_exclude = 'build/.*'
"
nnoremap <C-L> :nohl<CR>
nnoremap <PageUp> <C-U><C-U>
nnoremap <PageDown> <C-D><C-D>
nnoremap <F3> /<CR>
nnoremap <S-F3> ?<CR>
nnoremap <F9> i<C-R>%<ESC>F/lc^#ifndef <ESC>lgUWwr_<ESC>yyplcwdefine<ESC>A<CR><CR><CR><CR>#endif<ESC>kk
nnoremap <F7> :TlistOpen<CR>
nnoremap <F8> :wa<CR>:!ctags --options=tags.opt<CR>
"PASCAL
"Let vim recognise VMS pascal
au BufNewFile,BufRead *.PAS set filetype=pascal
au BufNewFile,BufRead *.INC set filetype=pascal
au BufNewFile,BufRead *.inc set filetype=pascal
au BufNewFile,BufRead *.DEF set filetype=pascal
au BufNewFile,BufRead *.def set filetype=pascal
au BufNewFile,BufRead *.CPP set filetype=cpp
"For (VMS) pascal: set tabs to 2 spaces
au FileType pascal set shiftwidth=2 tabstop=2 softtabstop=2
"For (VMS) pascal: case-insensitive diff
au FileType pascal set diffopt+=icase
"au FileType pascal set foldmethod=indent foldnestmax=1 foldcolumn=1
"CPP
"Add angle brackets to matchpairs
au FileType cpp set matchpairs+=<:>
""Open tag in new vertical split
"au FileType * nnoremap <buffer> <cr>
"    \ :vert belowright split <cr> <c-]>
""Open tag in next window
"au FileType * nnoremap <buffer> <space>
"    \ <c-w> <c-w> <c-]>
"TaskJuggler
au BufNewFile,BufRead *.tjp,*.tji set filetype=tjp
au FileType tjp nnoremap <F10> :w<CR>:make %<CR>
au! Syntax tjp so ~/.vim/syntax/tjp.vim
"Remove trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    let _s = @/
    keepp %s/\s\+$//e
    let @/ = _s
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
