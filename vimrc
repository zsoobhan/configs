set nocompatible
filetype off
set encoding=utf-8

colorscheme lanox

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'fisadev/vim-isort'
Plugin 'tpope/vim-fugitive'
Plugin 'mindriot101/vim-yapf'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'seeamkhan/robotframework-vim'
" Plugin 'kristijanhusak/vim-carbon-now-sh'


call vundle#end()

filetype plugin indent on
syntax on
set wildmenu
set incsearch
" set cursorline

set synmaxcol=200
set undofile
set undodir=~/.vim/undo
set undolevels=5000

set backup
set backupdir=~/.vim/backup/
set writebackup
set directory=~/.vim/swap/
set smartindent
set autoread

set hlsearch
set ignorecase
set ruler

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" set textwidth=9999999
set wrap
set ai " (autoindent)
set si " (smart indent)
set nolist
set number
set laststatus=2  " always show status line -- `:help 'laststatus'`

map j gj
map k gk

ab ip import ipdb; ipdb.set_trace()
ab ipp import pytest;pytest.set_trace()
ab ippp import pdb;pdb.set_trace()

" maps for navigating splits
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

noremap <F2> :let @/ = "" <CR>  " clears seach
noremap <F5> :Gblame<CR>
set pastetoggle=<F6>
noremap <F8> :call DeleteTrailingWS()<CR>
noremap <F9> :UndotreeToggle<CR>
" set shellcmdflag=-ic  " makes the vim shell source bashrc i.e. !<aliased-command>


" ------- Begin border control -----------------
set cc=120
hi ColorColumn ctermbg=darkgrey guibg=darkgrey
" highlight OverLength ctermbg=darkgrey guibg=#592929
" match OverLength /\%81v.\+/
" ------- End border control --------------------


" Visual mode pressing * or # searches for the currently highlighted text

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

map <Left> :echo "Use h instead of the Left Arrow!"<cr>
map <Right> :echo "Use l instead of the Right Arrow!"<cr>
map <Up> :echo "Use k instead of the Up Arrow!"<cr>
map <Down> :echo "Use j instead of the Down Arrow!"<cr>

" --------Begin Git Guttering ------------------------

highlight SignColumn ctermbg=black
set updatetime=750
let g:badwolf_darkgutter = 1
" let g:badwolf_css_props_highlight = 1
" let g:badwolf_tabline = 2
" --------End Git Guttering ------------------------

" Delete trailing white space on save
func! DeleteTrailingWS()
    %s/\s\+$//e
endfunction

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.tex :call DeleteTrailingWS()

" ------Begin NERDTree----------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFind<CR>

let NERDSpaceDelims=1
let NERDDefaultAlign='left'
" -----End NERDTree-------------

" -----Begin worp ale-------------
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2
" let g:ale_python_flake8_args = '-m flake8 --max-complexity 10 --max-line-length=100'
let g:ale_python_flake8_args = '-m flake8 --max-complexity 10 '
let g:ale_python_pylint_executable = 'python3'   " or 'python' for Python 2
" let g:ale_python_pylint_options = '-rcfile /path/to/pylint.rc'
let g:ale_linters = {
\   'perl': ['perl'],
\}
" -----End worp ale-------------


" let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
"       let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
let g:airline_theme='dark'
