set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mbbill/undotree'
Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ------Begin NERDTree----------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore = ['\.pyc$']
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFind<CR>
map j gj
map k gk

let NERDSpaceDelims=1
" -----End NERDTree-------------


"set clipboard=unnamedplus


syntax on
set synmaxcol=200
set undofile
set undodir=~/.vim/undo
set undolevels=5000

set backupdir=~/.vim/backup/
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

ab ip import ipdb; ipdb.set_trace()
ab ipp import pytest;pytest.set_trace()
ab ipt {% load debug_tags %} <CR> {% set_trace %}
ab ipu from pudb import set_trace; set_trace()

map 0 ^ " Remap VIM 0 to first non-blank character

vnoremap <C-c> "+y

noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

noremap <F2> :let @/ = "" <CR>  " clears seach
noremap <F3> :SyntasticReset<CR>
noremap <F4> :redraw!<CR>
noremap <F5> :Gblame<CR>
noremap <F7> <C-w>=
set pastetoggle=<F6>
noremap <F8> :call DeleteTrailingWS()<CR>
noremap <F9> :UndotreeToggle<CR>


" ------- Begin border control -----------------
set cc=100
hi ColorColumn ctermbg=darkgrey guibg=darkgrey
"highlight OverLength ctermbg=darkgrey guibg=#592929
"match OverLength /\%81v.\+/
"
" highlight Trace ctermbg=red guibg=#592929
" match Trace /import ipdb; ipdb\.set_trace()/
" match Trace /set_trace()/
" ------- End border control --------------------


" Visual mode pressing * or # searches for the currently highlighted text

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" ARROW KEYS ARE UNACCEPTABLE
map <Left> :echo "Use h instead of the Left Arrow!"<cr>
map <Right> :echo "Use l instead of the Right Arrow!"<cr>
map <Up> :echo "Use k instead of the Up Arrow!"<cr>
map <Down> :echo "Use j instead of the Down Arrow!"<cr>

" --------Begin Git Guttering ------------------------

highlight SignColumn ctermbg=black
set updatetime=750
" let g:gitgutter_sign_removed = '='
" let g:gitgutter_sign_added = '+'
" let g:gitgutter_sign_modified = '~'
" let g:gitgutter_sign_removed_first_line = '^'
" let g:gitgutter_sign_modified_removed = 'w'

" --------End Git Guttering ------------------------
"
" --------Begin syntastic ------------------------
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_flake8_args = "--max-complexity 10 --max-line-length=100"
" --------End syntastic ------------------------




" Delete trailing white space on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.tex :call DeleteTrailingWS()



let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
