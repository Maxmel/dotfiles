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
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'pbogut/fzf-mru.vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
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
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
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
colorscheme nord
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
" FZF search buffers
nmap <leader>t :Buffers<cr>

" Open new empty buffe
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

" fzf file searching
nmap <leader>p :Files<CR>

"" IndentLine
let g:indentLine_char = '│'

"" airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:ctrlp_working_path_mode = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

"" Notes
let g:notes_directories = ['~/Clouds/Google Drive/Notes']
"" True Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" open ag.vim
nnoremap <leader>a :Ag<CR>
"" No use the arrow keys !
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" NERDTree configuration
nmap <Tab><Tab> :NERDTreeToggle<CR>
" reveal the current file in NERDTree
map <Leader>f :NERDTreeFind<CR>

map <c-s> <Esc>:w<CR>
imap <c-s> <Esc>:w<CR>i

" preview replace etc.
if exists('&inccommand')
  set inccommand=split
endif
