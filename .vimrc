call plug#begin('~/.local/share/nvim/site/autoload')

Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'leafgarland/typescript-vim'
Plug 'thaerkh/vim-workspace'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'easymotion/vim-easymotion'
Plug 'shime/vim-livedown'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'konfekt/fastfold'
Plug 'tmhedberg/simpylfold'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'xolox/vim-misc'
Plug 'ryanoasis/vim-devicons'
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
set encoding=UTF-8
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
set background=light
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

" Mappings based on filetype
au BufEnter *.json map <C-J> :%!python -m json.tool<CR>
au BufEnter *.py map <F5> <esc>:w\|!python %<CR>

" Insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

imap jk <Esc>
nmap ; :
nmap <C-S><C-C> :set spell spelllang=en_ca<CR>
nmap <C-C><C-S> :set nospell<CR>

nmap <F8> :TagbarToggle<CR>

map <C-n> :NERDTreeToggle<CR>

nmap gm :LivedownToggle<CR>

" Gruvbox theme

set t_Co=256

set termguicolors

colorscheme gruvbox

let mapleader=","

" NerdTree

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Indent_guides
let g:indent_guides_start_level = 2

" Gundo Keybinds
nnoremap <leader>gt :GundoToggle<cr>

" YCm
let g:ycm_add_preview_to_completeopt = 0

set mouse=a

" Workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_name = 'Session.vim'
let g:workspace_autosave = 1

" JSX
let g:jsx_ext_required = 1
