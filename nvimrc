call plug#begin('~/.local/share/nvim/plugged')

" plugin on GitHub repo
Plug 'tomtom/tcomment_vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
" Plug 'francoiscabrol/ranger.vim'
Plug 'vifm/neovim-vifm'
Plug 'rbgrouleff/bclose.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'justinmk/vim-sneak'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

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

set mouse=a
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
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_right_sep=' '
let g:airline_left_sep=' '
let g:airline_right_alt_sep='|'
let g:airline_left_alt_sep='|'
let g:airline#extensions#tabline#tab_nr_type = 1 " splits and tab number
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
let g:airline#extensions#tabline#show_tabs = 0

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

let g:terminal_color_0 = '#3B4252'
let g:terminal_color_1 = '#BF616A'
let g:terminal_color_2 = '#A3BE8C'
let g:terminal_color_3 = '#EBCB8B'
let g:terminal_color_4 = '#81A1C1'
let g:terminal_color_5 = '#B48EAD'
let g:terminal_color_6 = '#88C0D0'
let g:terminal_color_7 = '#E5E9F0'
let g:terminal_color_8 = '#4C566A'
let g:terminal_color_9 = '#BF616A'
let g:terminal_color_10 = '#A3BE8C'
let g:terminal_color_11 = '#EBCB8B'
let g:terminal_color_12 = '#81A1C1'
let g:terminal_color_13 = '#B48EAD'
let g:terminal_color_14 = '#8FBCBB'
let g:terminal_color_15 = '#ECEFF4'

"use alt + j,k,hl to navigate windows from any mode
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" Exit terminal mode with esc
:tnoremap <Esc> <C-\><C-n>
