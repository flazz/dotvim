call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"set title

set nocp
set showcmd
set hidden
set wildmenu
set scrolloff=3
set mouse=a

set encoding=utf-8


syntax enable
set autoindent smartindent
set showmatch
set expandtab smarttab shiftwidth=2 shiftwidth=2 softtabstop=2

filetype plugin on
filetype indent on

colorscheme jelleybeans

set number
set ruler
set cursorline
"set cursorcolumn

map ,d A<Space>do<Esc>oend<Esc>
map ,b mmO<Esc>`mo<Esc>`m
map ,t I<% <Esc>A %><Esc>

"get rid of trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"search ruby project
" TODO just search everything but ignore .git beecause its slow
command -nargs=1 Rbgrep :vimgrep "<args>" {lib,spec}/**/*.rb

" fold by syntax highlighting
"set foldmethod=syntax

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set ttyfast
set nobackup
set noswapfile
set hlsearch
set nowrap
set incsearch

let g:netrw_hide=1
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+,\.o$,\.hi$,\.hspp$,\.erlc$'

au BufRead,BufNewFile *.md set filetype=*.mkd
au BufRead,BufNewFile Gemfile set filetype=ruby
au BufRead,BufNewFile *.zsh-theme set filetype=zsh

"imap <Tab> <Esc>==i
