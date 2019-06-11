set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'tweekmonster/impsort.vim'
Plugin 'dracula/vim'

call vundle#end()
filetype plugin indent on

" Nerdtree start
let g:nerdtree_tabs_open_on_console_startup=1

" Line Numbering
set nu

" Clipboard
set clipboard=unnamed

" Hidden .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1
set encoding=utf-8

" All the split to happen below
set splitbelow

" Auto reload NERDTree after :w
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

" Toggle the NERDTree
nmap <F6> :NERDTreeToggle<CR>


"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za

" colors
:color dracula

"----------Stop python PEP 8 stuff--------------
