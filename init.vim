" ============================================================
" Neovim 0.5.1 - Windows x86 IDE Configuration -@shi
" ============================================================


" ============================================================
" PLUGINS
" ============================================================

call plug#begin(stdpath('data') . '/plugged')

Plug 'preservim/nerdtree', { 'tag': '6.9.5' }
Plug 'nvim-lua/completion-nvim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'

call plug#end()


" ============================================================
" EDITOR
" ============================================================

set number
set relativenumber
set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

set hidden
set nowrap

set splitright
set splitbelow

set scrolloff=5
set sidescrolloff=5

set ignorecase
set smartcase
set incsearch
set hlsearch

set mouse=a
set encoding=utf-8

set completeopt=menuone,noinsert,noselect

syntax enable
filetype plugin indent on

set signcolumn=yes
set laststatus=2

set background=dark
colorscheme gruvbox


" ============================================================
" LEADER
" ============================================================

let mapleader = "\<Space>"


" ============================================================
" NERDTREE - PERMANENT LEFT EXPLORER
" ============================================================

let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 25

" Never close the tree when opening a file.
let g:NERDTreeQuitOnOpen = 0

" Do not replace the tree with a file.
let g:NERDTreeAutoDeleteBuffer = 0

" Show hidden files.
let g:NERDTreeShowHidden = 1

" Keep the tree open.
let g:NERDTreeMinimalUI = 1

" Open/focus the tree.
nnoremap <leader>e :NERDTreeFocus<CR>


" ============================================================
" START WITH PERMANENT LEFT TREE
" ============================================================

augroup IDE_NERDTREE
    autocmd!
    autocmd VimEnter * if argc() == 0 | execute 'NERDTree' | wincmd p | endif
augroup END

" ============================================================
" WINDOW NAVIGATION
" ============================================================

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" ============================================================
" SPLITS
" ============================================================

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

nnoremap <leader><Left> :vertical resize -5<CR>
nnoremap <leader><Right> :vertical resize +5<CR>
nnoremap <leader><Up> :resize +3<CR>
nnoremap <leader><Down> :resize -3<CR>


" ============================================================
" FILES / BUFFERS
" ============================================================

nnoremap <leader>w :write<CR>
nnoremap <leader>x :quit<CR>
nnoremap <leader>z :write<CR>:quit<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>d :bdelete<CR>

nnoremap <leader>h :nohlsearch<CR>


" ============================================================
" SEARCH / MOVEMENT
" ============================================================

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz


" ============================================================
" TERMINAL
" ============================================================

nnoremap <leader>t :split<CR>:terminal<CR>

tnoremap <Esc> <C-\><C-n>

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l


" ============================================================
" COMPLETION
" ============================================================

let g:completion_enable_auto_popup = 1
let g:completion_enable_auto_hover = 1
let g:completion_enable_auto_signature = 1

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ============================================================
" QUALITY OF LIFE
" ============================================================

set undofile
set noswapfile
set updatetime=300

set noerrorbells
set novisualbell


" ============================================================
" REMEMBER CURSOR POSITION
" ============================================================

augroup remember_cursor_position
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   execute "normal! g`\"" |
        \ endif
augroup END

" ============================================================
" NERDTREE FILE OPERATIONS
" ============================================================

" Create new file
autocmd FileType nerdtree nnoremap <buffer> <leader>n :call nerdtree#ui_glue#invokeKeyMap('m')<CR>

" NERDTree menu
autocmd FileType nerdtree nnoremap <buffer> m :call nerdtree#ui_glue#invokeKeyMap('m')<CR>

" Windows-style copy/paste
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+



