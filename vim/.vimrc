set encoding=UTF-8
set termguicolors
set relativenumber
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set noswapfile

set ttimeoutlen=10

set ruler

set undolevels=1000
set backspace=indent,eol,start

set completeopt-=preview

call plug#begin('~/.vim/plugged')
Plug 'ghifarit53/tokyonight-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

colorscheme tokyonight

let &t_SI.="\e[5 q"
let &t_SR.="\e[3 q"
let &t_EI.="\e[1 q"

let g:tokyonight_style = 'night'
let g:tokyonight_style = 'night'
let g:airline_theme = "tokyonight"
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%p%%"
let g:Powerline_symbols='unicode'

autocmd BufWritePre * :%s/\s\+$//e

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
