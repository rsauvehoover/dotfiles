call plug#begin('~/.config/nvim/plugged')

"Plug 'jiangmiao/auto-pairs'
Plug 'shime/vim-livedown'
Plug 'elzr/vim-json'
Plug 'nvie/vim-flake8'
Plug 'joonty/vdebug'
Plug 'ervandew/supertab'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'konfekt/fastfold'
Plug 'tmhedberg/simpylfold'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'xolox/vim-misc'
Plug 'roman/golden-ratio'
Plug 'sjl/gundo.vim'
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" line number map ctrl n twice to toggle numbers
" nmap <C-N><C-N> :set invnumber<CR>
" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" Return to visual block when indenting
vnoremap < <gv
vnoremap > >gv
set backspace=2
set diffopt=horizontal
set nohlsearch
set nocompatible
set tabstop=8
set softtabstop=4
set expandtab
set shiftwidth=4
set wrapmargin=0
set wrap
set ignorecase
set autoindent
set nu
"set background=dark
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2
syntax on

" Allows us to use bash movement in VIM command line

" start of line
cnoremap <C-A>		<Home>
" back one character
cnoremap <C-B>		<Left>
" delete character under cursor
cnoremap <C-D>		<Del>
" end of line
cnoremap <C-E>		<End>
" forward one character
cnoremap <C-F>		<Right>
" recall newer command-line
cnoremap <C-N>		<Down>
" recall previous (older) command-line
cnoremap <C-P>		<Up>
" back one word
cnoremap <Esc><C-B>	<S-Left>
" forward one word
cnoremap <Esc><C-F>	<S-Right>

" Convenient mappings

" " Insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

imap jk <Esc>
nmap ; :
nmap <C-S><C-C> :set spell spelllang=en_ca<CR>
nmap <C-C><C-S> :set nospell<CR>

map <C-n> :NERDTreeToggle<CR>

nmap gm :LivedownToggle<CR>

" Gruvbox theme

set t_Co=256

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

let mapleader=","

" NerdTree

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Indent_guides
let g:indent_guides_start_level = 2

" Gundo Keybinds
nnoremap <leader>gt :GundoToggle<cr>

" YCm
 let g:ycm_add_preview_to_completeopt = 0
