filetype off " 多重読み込み防止 onとは書かないこと
filetype plugin indent off

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=/Users/shinkikenya/.vim//repos/github.com/Shougo/dein.vim
call dein#begin('/Users/shinkikenya/.vim/')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('schickele/vim')
call dein#add('Lokaltog/vim-powerline')
call dein#add('chriskempson/vim-tomorrow-theme')
call dein#add('Shougo/neocomplcache.vim')
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#end()
filetype plugin indent on
if dein#check_install()
    call dein#install()
endif

filetype indent on

set autoindent " auto indent on
set number " line number
set ruler " カーソルの場所，何行何列目かを表示
syntax on " 構文毎に文字色を分ける
set t_Co=256 " 256色に設定
colorscheme fruchtig
set background=light
set title
set tabstop=4 " 画面上でタブ文字が占める幅
set shiftwidth=4 " 2文字でindentする
set expandtab " ソフトタブをon
":highlight bigSpace ctermbg=250
":call matchadd("bigSpace", '　')

":highlight return ctermbg=254
":call matchadd("return",'\n')
":highlight smallSpace ctermbg=253
":call matchadd("smallSpace",'\s')

let g:neocomplcache_enable_at_startup = 1
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 0
set sm
set ai

let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" for vim-go
" syntax-highlighting for Functions, Methods and Structs
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" err-hylighting
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/

" automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

" disable format on save
let g:go_fmt_autosave = 0
set backspace=indent,eol,start

set clipboard=unnamed,autoselect
