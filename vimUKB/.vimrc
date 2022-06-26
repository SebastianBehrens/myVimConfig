syntax on

set noerrorbells
set vb t_vb=
set tabstop=4 softtabstop=4
set showbreak=+++
set shiftwidth=4
set expandtab
set clipboard=unnamed
set smartindent
set breakindent
set breakindentopt=shift:2
set nu
set smartcase
set noswapfile
set incsearch
set foldmethod=indent
set foldlevel=99
set colorcolumn=80
set number relativenumber
set scrolloff=8
set hidden
set formatoptions=tcq
set ignorecase
set smartcase
set showcmd
let NERDTreeShowHidden=1
colorscheme onehalflight
highlight LineNrAbove guifg=grey ctermfg=grey
highlight LineNrBelow guifg=grey ctermfg=grey
set cursorline

set textwidth=0
set wrapmargin=0
set wrap
set linebreak

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dkarter/bullets.vim'
Plug 'tc50cal/vim-terminal'
Plug 'davidhalter/jedi-vim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'gaalcaras/ncm-R'
" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
" Plug 'lyuts/vim-rtags'
Plug 'jiangmiao/auto-pairs'
Plug 'mattly/vim-markdown-enhancements'
Plug 'vim-pandoc/vim-criticmarkup'
Plug 'davidhalter/jedi-vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'godlygeek/tabular'
Plug 'makerj/vim-pdf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
call plug#end()

let g:airline_theme='bubblegum'
"""""""""""""""""""" CUSTOM KEYBINDINGS
let mapleader = " "
nnoremap <A>f :Files<CR>
nnoremap <leader>dd :NERDTreeToggle<CR>
nnoremap <leader>do :NERDTree 
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>m :Marks<CR>
" nnoremap <leader>t :TerminalVSplit ls<CR> " currently not in use
nnoremap <leader>so :so %

nnoremap <leader>w :w

nnoremap <leader>qq :bd


nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>sn :bn<CR>
nnoremap <leader>sp :bp<CR>

nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h
nnoremap <leader>= <C-w>=
nnoremap <leader>+ <C-w>+
nnoremap <leader>- <C-w>-
nnoremap <leader>> <C-w>>
nnoremap <leader>< <C-w><

nnoremap <leader>hy :set hlsearch
nnoremap <leader>hn :nohlsearch

nnoremap <left> ^
nnoremap <right> $

nnoremap <leader>mc i{++++}<esc>hhi
nnoremap <leader>mc i{++++}<esc>hhi

nnoremap <leader>i <C-i>
nnoremap <leader>o <C-o>
nnoremap - <C-x>
nnoremap + <C-a>

nnoremap <leader>runr :!Rscript %
nnoremap <leader>runp :!clear && echo "\n\n\n\n\n" && python3 % && echo "\n\n\n\n\n"
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j
"""""""""""""""""""" CUSTOM COMMANDS
command! FormatYouTubeTranscript normal! :%s/^\d\+:\d\+\n\(>>\)\@!//g<CR>:g/^$/d<CR>:%s/\s>>/\r>>/g<CR>:%s/\(\d\n\)\@<\!>>\s//g<CR>gg2000J:%s/>>/\r>>/g<CR>:%s/\s\(\d\+:\d\+\)\@=/\r/g<CR>
command! TransformExtractionComment normal! 0d4f_i>jpa€kb€kb€kb€ýaF_hxx
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
set wildmenu
set wildmode=full
set wildmode=longest:list
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
