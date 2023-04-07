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
"Plugin 'tpope/vim-fugitive'
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
"Plugin 'adelarsq/vim-matchit'	" required for vim-textobj-rubyblock
"Plugin 'kana/vim-textobj-user'  " required for vim-textobj-rubyblock
"Plugin 'nelstrom/vim-textobj-rubyblock'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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

 " vim-textobj-rubyblock config ------------------
   " set nocompatible required
" runtime macros/matchit.vim

 "if has ("autocmd")
"	 filetype indent plugin on
 "endif

