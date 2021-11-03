"Plugin
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vimfiles/plugged')

Plugin 'VundleVim/Vundle.vim'

""Temas
Plugin 'dracula/vim',{'name':'dracula'}

""IDE
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'grvcoelho/vim-javascript-snippets'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

"General Config
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set cursorline
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set showtabline=2
set hidden
set nobackup 
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

"Airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"" unicode symbols
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

"" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ㏑:'
let g:airline_symbols.maxlinenr = ' ' 
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#searchcount#enabled = 0
let g:airline_theme = 'raven'
let g:airline_powerline_fonts = 1

  "Color Apereance
hi CursorLine ctermbg=DarkGray
colorscheme dracula 
set termguicolors

"Shotcuts
let mapleader = " " 

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>ot :tabnew<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>e :Explore<CR>
nmap <Leader>pi :PluginInstall<CR>
nmap <Leader>pe :PlluginStatus<CR>
nmap <Leader>gs :Git status
nmap <Leader>ga :Git add
nmap <Leader>gc :Git commit -m 
