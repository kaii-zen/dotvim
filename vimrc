" Enable mouse
set mouse=a

" Set <Leader> to comma
let mapleader=","

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Use macOS clipboard
set clipboard=unnamed

" Load filetype plugin and indent
filetype plugin on
filetype indent on

"### Airline ###

" Fix not loading at startup
set laststatus=2

" Enable Powerline fonts
let g:airline_powerline_fonts = 1

" Enable tabs
let g:airline#extensions#tabline#enabled = 1

"### /Airline ###

"### NERDTree ###

" Toggle with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Open a NERDTree automatically when...
autocmd StdinReadPre * let s:std_in=1
"    vim starts up if no files were specified:
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"    vim starts up on opening a directory:
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"### /NERDTree ###

"### vim-go ###
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_sameids = 1
"### /vim-go ###