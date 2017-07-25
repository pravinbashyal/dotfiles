" Set VIM Options {{{
" mode line tells vim to setting for this file only
" and equals to 1 tells vim to check last line for the settings
set modelines=1
set nocompatible              " be iMproved, required
" if $TMUX == ''
  set clipboard+=unnamed
" endif
filetype off                  " required
syntax on

" set line number as relative as well as absolute
set nu
set rnu

let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
  let base16colorspace=256
endif

" set undofile for undo persistance when navigating between buffers
set undofile
set undodir=$HOME/.vim/undo

" set right side column
set colorcolumn=100
highlight ColorColumn ctermbg=8

" leader is comma
let mapleader=","

" set tab length to 4 columns
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Always indent/outdent to nearest tabstop
set shiftround

" Indent to correct location with tab
set smarttab

"easy tag
" let g:easytags_async

" copy the indentation of previous line if autoindent doesn't know what to do
set copyindent

" indent as file type
filetype plugin indent on

" enable search Highlighting
set hlsearch

" highlight currentline
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when needed; makes vim faster
set lazyredraw

" open all folds on start
set foldlevelstart=99

" speedup syntax highlighting
set nocursorcolumn
set nocursorline
" scan min lines for highlight
syntax sync minlines=100
" scan max lines for highlight
syntax sync maxlines=240
" don't highlight lines longer than 800 chars
set synmaxcol=900

" fold
set fdm=syntax
set foldlevel=0

" set case insensitive search
set ignorecase
set smartcase

" set sane timeouts
" set notimeout
" set ttimeout
" set ttimeoutlen=10
set timeoutlen=1000 ttimeoutlen=0

" spell check
setlocal spell spelllang=en_us

" status bar
set statusline=%F%m%r%h%w\  "fullpath and status modified sign
set statusline+=\ %y "filetype
set statusline+=\ %{fugitive#statusline()}

" assume the /g flag on :s substitutions to replace all matches in a line
set gdefault

" set trail to tabs
set list listchars=tab:»·,trail:·

runtime macros/matchit.vim

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

set nospell

set directory^=$HOME/.vim/tmp//
" XML folding
let g:xml_syntax_folding=1
au FileType html setlocal foldmethod=manual

" set mouse mode on
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" indent for slim
autocmd FileType slim setlocal foldmethod=indent

filetype plugin on
set omnifunc=syntaxcomplete#Complete


"}}}

