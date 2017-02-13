set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
"
"
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'

" My plugins
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-projectionist'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'The-NERD-Commenter'
Plugin 'Auto-Pairs'
Plugin 'surround.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Lovely linenumbers
set nu

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Trigger configuration for snippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ignore certain files when searching

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
:let mapleader = "\<Space>"
nnoremap <Leader>e :Explore<CR>
set backspace=indent,eol,start
" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
set laststatus=2

" highlight the current line
set cursorline

" Highlight active column
set cuc cul"
set tabstop=2
set shiftwidth=2
set expandtab
	
" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" put vi in background and return to terminal
:nnoremap <Leader>8 <C-z>

" switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_enable_highlighting=0

" CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Fuzzy Finder
let g:ctrlp_map = '<Leader>p'

" Highlight Entire Line
:nnoremap <S-l> <S-v>

" Create new tab, move b/w tabs
:nnoremap <Leader>t :tabedit<CR><bar>:Explore<CR> 
:nnoremap <Leader>0 gt 
:nnoremap <Leader>9 gT 

syntax on
