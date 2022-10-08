call plug#begin('~/AppData/Local/nvim/plugged')

"Temas
Plug 'dracula/vim',{'name':'dracula'}

"IDE
Plug 'easymotion/vim-easymotion' 		"Movimiento instantaneo
Plug 'scrooloose/nerdtree' 			"Gestor de archivos
Plug 'christoomey/vim-tmux-navigator' 		"Navegación entre archivos abiertos
Plug 'vim-airline/vim-airline' 			"Diseño barra de utilidades
Plug 'vim-airline/vim-airline-themes' 		"Temas vim-airline
Plug 'airblade/vim-gitgutter' 			"git diff a un costado
Plug 'mattn/emmet-vim' 				"Just Emmet
Plug 'Yggdroot/indentLine' 			"Indentacion automatica
Plug 'jiangmiao/auto-pairs' 			"Autocompletado de comillas, llaves, etc
Plug 'KarimElghamry/vim-auto-comment'		"Autocomentar una o varias lineas
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/nerdtree-project-plugin'
"Plug 'PhilRunninger/nerdtree-visual-selection'

call plug#end()            " required

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
"let g:airline_symbols.colnr = ' ㏇:'
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = ' ␊:'
"let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

"" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ' ㏑:'
"let g:airline_symbols.maxlinenr = ' ' 
"let g:airline_symbols.dirty='⚡'

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#searchcount#enabled = 0
"let g:airline_theme = 'raven'
"let g:airline_powerline_fonts = 1

"NerdTree
""Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif 
""Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
""Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

"Emmet
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"Color Apereance
hi CursorLine ctermbg=DarkGray
colorscheme dracula 
set termguicolors

"Shotcuts
let mapleader = " " 

nmap <Leader>s <Plug>(easymotion-prefix)	"Activa el plugin EasyMotion
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>nt :NERDTreeFind<CR>	
nmap <Leader>ot :tabnew<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>pi :PlugInstall<CR>
nmap <Leader>pe :PlugStatus<CR>
nmap <Leader>gs :Git status
nmap <Leader>ga :Git add
nmap <Leader>gc :Git commit -m
nmap <Leader>ss :mks!<CR>gg
