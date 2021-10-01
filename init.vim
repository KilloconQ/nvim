" Set compatible to Vim only
set nocompatible
set nolist
set rnu 
set numberwidth=1
set clipboard=unnamed
set ruler 
set cursorline
set showmatch
set mouse=a
set sw=2

filetype plugin indent on 
syntax on

set modelines=0
set ttyfast
set wrap

set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=5

set backspace=indent,eol,start

set laststatus=2

set showmode
set showcmd

set matchpairs+=<:>

set number

set encoding=utf-8

set hlsearch

set incsearch

set ignorecase

set smartcase

set viminfo='99,<9999,s100

autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* silent loadview"
let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>gs :CoCSearch
noremap <leader>q :q<cr>
noremap <leader>fs :Files<cr>
nnoremap <silent><leader>n :noh<cr>


set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

 
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

"Themes
Plug 'b4skyx/serenade'
"Tree
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

"Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"IDE
Plug 'junegunn/fzf', {'do':{ -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

"Autocomplete
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

"Status bar
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]
if has('termguicolors')
      set termguicolors
    endif
    let g:serenade_enable_italic = 1
    let g:serenade_disable_italic_comment = 1
    colorscheme serenade
let g:airline_theme = 'serenade'
let g:lightline = {'colorscheme' : 'serenade'}
let g:deopplete#enable_at_startup=1
let g:indentline_setColors=0
let g:indentline_char_list=['|']
let g:jsx_ext_required=0
let NERDTreeQuitOnOpen=1

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<cr>
nmap <leader>ft :FlutterRun<cr>
map <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>
