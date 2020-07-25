filetype plugin on " Runs scripts depending on filetype

" GUI options
set termguicolors " Makes colours nicer
" Highlight line number but nothing else
highlight CursorLineNR cterm=bold
set number " Show line numbers
set relativenumber " Show relative line numbers
set noerrorbells
set mouse=a " enable mouse for scrolling and resizing
set background=dark " Use colours to suit a dark background
set showmatch " show matching parentheses
colorscheme default

" Default indentation config
set autoindent
set tabstop=4
set softtabstop=4
set noexpandtab

" Default folding config
set foldmethod=syntax
set foldnestmax=1
set foldlevel=1

" Search options
set hlsearch " Enable search highlighting
set ignorecase
set smartcase " Automatically switch to case sensitive when caps in string

" Text rendering options
set encoding=utf-8
set fileencoding=utf-8
set scrolloff=5  " Number of lines to keep above and below cursor
syntax enable " syntax highlighting on

" Nerdtree config - toggle with C-W+n
nmap <C-W>n :NERDTreeToggle<CR>
