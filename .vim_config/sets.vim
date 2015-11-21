" Set VIM Options {{{
" mode line tells vim to setting for this file only
" and equals to 1 tells vim to check last line for the settings
set modelines=1
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set line number 
set nu

let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
  let base16colorspace=256
endif

" set right side column
set colorcolumn=100

" leader is comma
let mapleader="," 

" set tab length to 4 columns
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Always indent/outdent to nearest tabstop
set shiftround

" Indent to correct location with tab
set smarttab

" turnon autoindent
set autoindent

" copy the indentation of previous line if autoindent doesn't know what to do
set copyindent

" retain indentation on the next line
set smartindent

" enable search Highlighting
set hlsearch

" highlight currentline
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when needed; makes vim faster
set lazyredraw

"set notimeout
set timeout timeoutlen=1000 ttimeoutlen=100

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

" set fold method to syntax
set fdm=syntax

"}}}