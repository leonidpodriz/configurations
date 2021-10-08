set nocompatible
filetype off
set mouse=a
set number
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set cursorline
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'preservim/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'git://github.com/PhilRunninger/nerdtree-visual-selection.git'
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'junegunn/fzf.vim'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'mattn/emmet-vim'
    Plugin 'dense-analysis/ale'
    Plugin 'git://github.com/airblade/vim-gitgutter.git'
    Plugin 'raimon49/requirements.txt.vim'
    Plugin 'hdima/python-syntax'
    Plugin 'jmcantrell/vim-virtualenv'
    Plugin 'git://github.com/ycm-core/YouCompleteMe.git'
call vundle#end()
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let b:ale_linters = ['pyflakes', 'flake8', 'pylint', 'mypy']
set backspace=indent,eol,start

