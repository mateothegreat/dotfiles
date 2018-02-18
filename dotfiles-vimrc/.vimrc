set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/plugins')


	Plugin 'VundleVim/Vundle.vim'

	Plugin 'scrooloose/nerdtree'
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'elzr/vim-json'
	Plugin 'luan/vim-concourse'
	Plugin 'luan/flytags'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'majutsushi/tagbar'
"	Plugin 'edkolev/tmuxline.vim'

call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on

" let g:airline_theme='luna'
" let g:airline_theme='papercolor'let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree 
" https://github.com/scrooloose/nerdtree
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "Show NERDTree if no file or directory was passed. 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-f> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

"
" Tagbar
" https://github.com/majutsushi/tagbar
"
nmap <C-t> :TagbarToggle<CR>

"
" tmux statusline
" https://github.com/edkolev/tmuxline.vim
"

