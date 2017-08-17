"Sets Vi to incompatible mode to enable improved Vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'tmhedberg/SimplylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic' "conflicts with ale
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\-$'] "ignore files in NERDTree


"Enable syntax highlighting
let python_highlight_all=1
syntax on

"Enable line number and ruler
set number ruler

"Enable search highlithing and ignore casei, smart case and incremental
"search (i.e. partial matches)
set hlsearch
set ignorecase
set smartcase
set incsearch

"Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"Stop certain movements from always going to the first character of a line.
"While this behaviour deviates from that of Vi, it does what most users
"coming from other editors would expect
set nostartofline

"Always display the status line, even if only one window is displayed
set laststatus=2

"Instead of failing a command because of unsaved changes, instead raise a 
"dialogue asking if you wish to save changed files.
set confirm

"Use visual bell instead of beeping when doing something wrong
set visualbell

"Enable the use of the mouse for all modes
set mouse=a

"Set the command window height to 2 lines, to avoid many cases of having
"to proess Enter to continue
set cmdheight=2

set hidden
set wildmenu
set autoindent

set encoding=utf-8

"Enable code folding
set foldmethod=indent
set foldlevel=99

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set clipboard=unnamed

