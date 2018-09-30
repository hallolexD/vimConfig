set nocompatible              "be iMproved, required"
filetype off                  "required"

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My own Plugins
" Plugin 'bling/vim-airline'
" Plugin 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/snipMate'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'FuzzyFinder'
Bundle 'vim-scripts/L9'

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

set encoding=utf-8
if !has("gui_running")
	set term=xterm-256color
	set termencoding=utf-8
	let t_Co=256
endif

" General settings
let mapleader=','
set laststatus=2
syntax enable
colorscheme monokai
set cursorline
set number
set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
" Other customizations
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
" To clear search highlight
nmap <silent> ,/ :nohlsearch<CR>
" Get out of insert mode quickly
imap jl <Esc>
" When needing root priviliges for saving changes
cmap w!! w !sudo tee % >/dev/null
" filetype specific settings
if has("autocmd")
	autocmd filetype python set expandtab
endif
if has("autocmd")
	autocmd filetype html,xml set listchars-=tab:>.
endif

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
:filetype plugin on

" Minibufferexplorer
map <Leader>e :MBEOpen<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>

" Powerline
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline:h14
set fillchars+=stl:\ ,stlnc:\
if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h14
	endif
endif

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" FuzzyFinder
:map tn :tabnew \| FufFile<CR>

nmap <leader>ff :FufFile \*\*/<CR>
nmap <leader>ft :FufFile<CR>
nmap <leader>fb :FufBuffer<CR>
nmap <leader>fl :FufLine<CR>
nmap <leader>fr :FufRenewCache<CR>






