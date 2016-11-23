set shell=/bin/sh
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'surround.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'morhetz/gruvbox'
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

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set wrap                        " wrap lines
set linebreak                   " only wrap at breakat char 
set list
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting<F37>
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set textwidth=0
set wrapmargin=0
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" More
set ruler  " Ruler on
set nu  " Line number on
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set cursorline
set background=dark
colorscheme gruvbox
set termguicolors

set t_ut=
set re=1
set ttyfast
set lazyredraw

set nobackup
set noswapfile

set clipboard+=unnamedplus

" let mapleader=","

"" Buffers
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
"
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"" IndentLine
let g:indentLine_char = '┆'

"" airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:ctrlp_working_path_mode = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

"" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"" Notes
let g:notes_directories = ['~/Clouds/Google Drive/Notes']
"" True Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" open ag.vim
nnoremap <leader>a :Ag
"" No use the arrow keys !
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <leader>f :call OpenRanger()<CR>

map <c-s> <Esc>:w<CR>
imap <c-s> <Esc>:w<CR>i
