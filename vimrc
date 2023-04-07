set nocompatible	"be iMproved, required
syntax on		"enable syntax highlighting
filetype on		"enable filetype detection
filetype indent on	"enable filetype-specific indenting
filetype plugin on	"enable filetype-specific plugins
set laststatus=2	"needed for lightline plugin
set noshowmode		"remove redundant mode banner for lightline
set mouse=a		"allow trackpad to interact with vim
set number		"include line numbers

" key maps
inoremap jk <Esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'vim-ruby/vim-ruby'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'dense-analysis/ale'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'itchyny/vim-gitbranch'
Plugin '907th/vim-auto-save'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ALE config --------------------------------------
let g:ale_linters = {
\ 'ruby': ['standardrb', 'rubocop'],
\ 'python': ['flake8', 'pylint'],
\ 'javascript': ['eslint'],
\}

" gitbranch config -------------------------------
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" vim-autosave-config ----------------------------
" enable AutoSave on Vim startup
let g:auto_save = 1
