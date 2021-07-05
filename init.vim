if exists('g:vscode')
else
    if has('win32')
        call plug#begin('~/vimfiles/autoload')
    else
        call plug#begin('~/.config/nvim/plugged')
    endif

    Plug 'morhetz/gruvbox'
    Plug 'vim-scripts/IndentAnything'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'vim-scripts/YankRing.vim'
    Plug 'sjl/gundo.vim'
    Plug 'othree/html5.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'junkblocker/patchreview-vim'
    Plug 'ervandew/supertab'
    Plug 'mhinz/vim-signify'
    Plug 'int3/vim-extradite'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'millermedeiros/vim-statline'
    Plug 'scrooloose/syntastic'
    Plug 'godlygeek/tabular'
    Plug 'easymotion/vim-easymotion'

    Plug 'ryanoasis/vim-devicons'
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

    " lsp related stuff
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'kosayoda/nvim-lightbulb'

    " useful tim pope plugins
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-speeddating'
    Plug 'tpope/vim-surround'

    " css
    Plug 'ap/vim-css-color'
    Plug 'hail2u/vim-css3-syntax'

    " js
    Plug 'pangloss/vim-javascript'
    Plug 'elzr/vim-json'
    Plug 'mxw/vim-jsx'
    Plug 'millermedeiros/vim-esformatter'
    Plug 'leafgarland/typescript-vim'
    Plug 'prettier/vim-prettier'

    call plug#end()
endif

let mapleader=","

if exists('g:vscode')
    " VSCode specific stuff
else
    " CHADtree 
    " open
    nnoremap <C-n> <cmd>CHADopen<cr>
    " clear quickfix list
    nnoremap <leader>l <cmd>call setqflist([])<cr>

    " nvim-lightbulb activate
    autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
    

    " neovim specific stuff
    set nobackup
    set nowritebackup
    set noswapfile
    
    " indentation and wrapping
    set wrap
    set textwidth=120
    set formatoptions=qrn1
    set formatoptions-=o
    
    " remove sounds effects
    set noerrorbells
    set visualbell
    
    " turn on gruvbox in non-vscode environments
    set t_Co=256
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    colorscheme gruvbox
endif

" History
set history=999             " Increase history (default = 20)
set undolevels=999          " more undos (default=100)

" key configs
set backspace=2
set nostartofline

set expandtab
set formatoptions-=o

set nomodeline

set pastetoggle=<leader>p

" -----------------------------------------------------------------------------
" KEY MAPPINGS
" -----------------------------------------------------------------------------

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Return to visual block when indenting
vnoremap < <gv
vnoremap > >gv

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing
nnoremap S i<cr><esc><right>


if exists('g:vscode')
    " VSCode specific stuff
else
    " neovim specific stuff
    " movement by screen line instead of file line (for text wrap)
    nnoremap j gj
    nnoremap <down> gj
    nnoremap k gk
    nnoremap <up> gk

    " next tab
    nnoremap <C-Tab> :tabn<CR>

    " automatic esc, really uncommon to type jj,jk
    inoremap jj <ESC>
    inoremap jk <Esc>

    " Faster scrolling
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>

    " Duplicate lines, similar to Eclipse
    noremap <C-S-Up> YP
    noremap <C-S-Down> YP
    
    " --- COMMON STUFF / HELPERS ---

    " Toggle show tabs and trailing spaces
    nnoremap <leader>c :set nolist!<CR>
    
    " text wrap: Hard wrap paragraph text (similar to TextMate Ctrl+Q)
    nnoremap <leader>tw gqip
    nnoremap <leader>nw :set nowrap<CR>

    " Open file (useful for HTML)
    noremap <silent> <leader>o :!open %<CR>

    " Reformat code
    nnoremap <leader>rf gg=G

    " I use retab too much and it's hard to type
    nnoremap <leader>rt :retab!<CR>

    " Pull word under cursor into LHS of a substitute (find and replace)
    nnoremap <leader>rr :silent call KeywordsAll()<CR> :%s#\<<C-r>=expand("<cword>")<CR>\>#
    
    " Visually select the text that was last edited/pasted
    nnoremap <leader>v `[v`]

    " fast Ack
    nnoremap <leader>a :tab split<CR>:Ack<Space>
    nnoremap <leader>aw :silent call KeywordsAll()<CR> :tab split<CR>:Ack<cword><CR> :silent call KeywordsBasic()<CR>

    " Toggle spelling hints
    nnoremap <silent> <leader>ts :set spell!<CR>


    " Move between splits (windows)
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l

    " Move windows around (only works on same row)
    noremap <C-S-Right> <C-w>r
    noremap <C-S-Left> <C-w>R

    " Open current buffer in a new split
    noremap <leader>s :vsplit<cr>
    noremap <leader>i :split<cr>

    " close window
    noremap <leader>q :clo<CR>
    
    " resize splits (http://vim.wikia.com/wiki/Resize_splits_more_quickly)
    nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
    nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
endif
