" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" Plugin 'VundleVim/Vundle.vim'

" Plugin 'vim-airline/vim-airline'

" Plugin 'vim-airline/vim-airline-themes'

" Plugin 'sonph/onehalf', {'rtp': 'vim/' }


call vundle#end()

" For plugins to load correctly
filetype plugin indent on
set autoindent

" ---------------------
"  Basic editing config
"  --------------------

" Encoding
set encoding=utf-8

" Turn on syntax highlighting
syntax on

" Disable the defautlt vim startup message
set shortmess+=I

" Show line numbers
set number
set relativenumber

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
set lbr " line break

" Whitespace
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Cursor motion
set scrolloff=5
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Show file stats
set ruler

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
" smart case-sensitivesearch
set ignorecase
set smartcase
set showmatch

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" set mouse on
set mouse+=a
" Allow cursor keys in insert mode
set esckeys

" ---------------------------
"  misc configurations
" ---------------------------

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
nmap <C-a> <Nop>
nmap <C-x> <Nop>

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>;

" map ESC to home row
inoremap jk <ESC>
inoremap kj <ESC>
" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Set svelte to be treated as html
au! BufNewFile,BufRead *.svelte set ft=html

" map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
" inoremap <F1> <ESC>:set invfullscreen<CR>a
" nnoremap <F1> :set invfullscreen<CR>
" vnoremap <F1> :set invfullscreen<CR>

" Formatting
" map <leader>q gqip

" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
" map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme onehalfdark
" let g:airline_theme='molokai'
