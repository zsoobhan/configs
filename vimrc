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
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'

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

set textwidth=9999999
set wrap
set ai " (autoindent)
set si " (smart indent)
set nolist
set number

ab ip import ipdb; ipdb.set_trace()
ab ipt {% load debug_tags %} <CR> {% set_trace %}

map 0 ^ " Remap VIM 0 to first non-blank character

vnoremap <C-c> "+y

noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

set pastetoggle=<F6>
noremap <F2> :let @/ = "" <CR>  " clears seach
noremap <F3> :SyntasticReset<CR>
noremap <F4> :redraw!<CR>
noremap <F5> :Gblame<CR>
noremap <F7> <C-w>=

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap tr  :tabs<CR>
nnoremap to  :tabnew<CR>

" ------- Begin border control -----------------
set cc=80
hi ColorColumn ctermbg=black guibg=black
highlight OverLength ctermbg=black guibg=#592929
match OverLength /\%81v.\+/
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
let g:syntastic_python_flake8_args = "--max-complexity 10"
" --------End syntastic ------------------------




" Delete trailing white space on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.tex :call DeleteTrailingWS()
autocmd BufWrite .vimrc :call DeleteTrailingWS()



let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"