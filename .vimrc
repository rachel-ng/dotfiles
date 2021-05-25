set nocompatible

filetype plugin indent on
if has('autocmd')
    " https://stackoverflow.com/a/21323445
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab      " tabs for Makefiles 
endif
syntax enable

set autoindent 

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab 
" existing tabs are 4 spaces
" indenting with > is 4 spaces 
" tab inserts spaces
" 4 columns for a tab, makes spaces feel like real tabs 

set backspace=indent,eol,start

set nomodeline

set number
set laststatus=2
set ruler
set wildmenu
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

set encoding=utf-8
set nrformats-=octal


set cursorline

set ttyfast
set lazyredraw

if !&scrolloff
    set scrolloff=1
endif
if !&sidescrolloff
    set sidescrolloff=5
endif
set display+=lastline

set linebreak
set wrap

set showmode 
set showcmd

set mouse=a

set title

set complete-=i

set showmatch
set matchpairs+=<:>

if has('extra_search')
    set incsearch
    set hlsearch
endif
set ignorecase
set smartcase 

if has('syntax')
    set spelllang=en_us             " Set the spellchecking language.
endif



set history=10000
set tabpagemax=50


" <Space> key toggle a selected fold opened/closed.
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space> zf


" https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim

" solarized color scheme 

set background=dark
"let g:solarized_termcolors = 16
"let g:solarized_termtrans = 1
colorscheme solarized





