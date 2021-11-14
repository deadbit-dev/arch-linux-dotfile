"LOAD-PLUGINS
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'peterlundgren/vim-todo'
Plug 'mhinz/vim-startify'
Plug 'bling/vim-airline'

call plug#end()

filetype plugin indent on
syntax on

set relativenumber number
set tabstop=4 shiftwidth=4 expandtab
set incsearch
set smartcase smartindent
set nowrap
set noswapfile
set cursorline
set colorcolumn=80

"COPY-PAST-BUFFER
set clipboard=unnamedplus

"WHITESPACE-SYBOL
set list
set listchars=eol:¬

"OFF-ARROWS
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

"RESIZING WINDOWS
nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>

"MOVING-WINDOWS
tmap <C-w>k <C-\><C-n><C-w>k
tmap <C-w>j <C-\><C-n><C-w>j
tmap <C-w>h <C-\><C-n><C-w>h
tmap <C-w>l <C-\><C-n><C-w>l

"RG
nmap <C-f> :Rg

"COC-GOTO
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-refernces)

"RENAME
nmap <leader>rn <Plug>(coc-rename)

"SIGNCOLUMN
if has("nvim-0.5.0") || has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif

"COMPLITE-TAB
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"DOCUMENTATION
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

"COLORSCHEME
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

"NOT_NETRW
let loaded_netrwPlugin=1

"CTRLP-CONFIG
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <silent> <C-b> :CtrlPBuffer<CR>

"AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_z = "%3p%% "
map <Tab>k :bn<cr>
map <Tab>j :bp<cr>
map <Tab>d :bd<cr>

"STARTIFY
map ` :Startify<cr>

"NEOVIDE
let g:neovide_cursor_vfx_mode = "pixiedust"
set guifont=Hack\ Nerd\ Font:h15

" Highlight extra whitespaces at the end
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction
autocmd BufWritePre * call TrimWhiteSpace()

"NOT-HIGHLIGHT ~
hi! EndOfBuffer guibg=#1d2021 guifg=#1d2021
