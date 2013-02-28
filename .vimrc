call pathogen#infect()
set number
set ignorecase 
set smartcase
set title
set autoindent
set smartindent
set sw=4
set scrolloff=3
set ruler
" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

set visualbell "instead of audible one
" you can also toggle through the matches by tab
set wildmode=list:longest,full

" use confirm instead of aborting an action
set confirm

" current directory is always matching the
" content of the active window
set autochdir

" remember some stuff after quiting vim:
" marks, registers, searches, buffer list
set viminfo='20,<50,s10,h,%

" use console dialogs instead of popup
" dialogs for simple choices
set guioptions+=c
" Hide the mouse pointer while typing
set mousehide
" Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" remapr leader key to ','
let mapleader = ","
" finds if/else and other clauses in many languages
runtime macros/matchit.vim
" scroll with mouse
 set mouse=a
 map <ScrollWheelUp> <C-Y>
 map <ScrollWheelDown> <C-E>
" show or hide tagbar 
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>
" da formato al tagbar
let g:tagbar_indent = 3
let g:tagbar_singleclick = 1
" activa la deteccion de errores de 
" sintaxis en java
let g:syntastic_check_on_open=1
let g:syntastic_python_checker="flake8"