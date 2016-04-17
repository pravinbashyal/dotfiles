source ~/.vim_config/sets.vim
source ~/.vim_config/keymap.vim

" All Plugins {{{
" "========================================================
call plug#begin('~/.vim/plugged')

" lexima replacement for deliMate
Plug 'cohama/lexima.vim'

" javascript Plugs
Plug 'pangloss/vim-javascript'
" Plug 'othree/yajs.vim'

" jsx indentation and highlight
Plug 'mxw/vim-jsx'

" Window-swap plugin
Plug 'wesQ3/vim-windowswap'

" eighties-vim
Plug 'justincampbell/vim-eighties'

" vim-airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" highlight ending html tag when pointing to the start
Plug 'gregsexton/MatchTag'

" NerdTree Plug
Plug 'scrooloose/nerdtree'

" Emmet.vim Plug for i don't know expanding html tags i guess
" i want to use it for sniplet of html structure
 Plug 'mattn/emmet-vim'

" tmuxline Plug
Plug 'edkolev/tmuxline.vim'

 " Seamless switch between vim and tmux splits
Plug 'christoomey/vim-tmux-navigator'

" SnipMate
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'

  Plug 'honza/vim-snippets'

" fugitive
Plug 'tpope/vim-fugitive'

" fzf async replacement of ctrlP
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  
" CtrlP
Plug 'kien/ctrlp.vim'

" CtrlP-funky ctrlp for finding function calls
Plug 'tacahiroy/ctrlp-funky'

" gundo for visual undo
Plug 'sjl/gundo.vim'

" goyo distraction free coding
Plug 'junegunn/goyo.vim'

" vimproc used by neocomplete
Plug 'Shougo/vimproc.vim'

" youcompleteme
Plug 'Valloric/YouCompleteMe'

" tern for vim
Plug 'marijnh/tern_for_vim', { 'build': { 'mac': 'npm install' } }

" Ag for vim
Plug 'rking/ag.vim'

" tcomment for vim
Plug 'tomtom/tcomment_vim'

" smooth scroll Plug
Plug 'terryma/vim-smooth-scroll'

" VIM Hard mode disable all micro movment and bunch of other stuffs
" Plug 'wikitopian/hardmode'

" Vim lib syntax
" Plug 'othree/javascript-libraries-syntax.vim'

" HTML5 Plug
" Plug 'othree/html5.vim'

" matchit
Plug 'tmhedberg/matchit'

" vim surround
Plug 'tpope/vim-surround'

" syntastic
Plug 'scrooloose/syntastic'

" base16 colorschemes
Plug 'chriskempson/base16-vim'

" fukurokujopro colorscheme
Plug 'nemesit/vim-colors-fukurokujopro'

" gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Solorazied theme
Plug 'altercation/vim-colors-solarized'

" dracula theme
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" Hybrib material theme
Plug 'kristijanhusak/vim-hybrid-material'


" --------------------------------------------------------------
call plug#end()
filetype plugin indent on    " required
filetype on
" ==============================================================

"}}}

source ~/.vim_config/general.vim
source ~/.vim_config/style.vim
source ~/.vim_config/plugin_settings.vim

" vim:foldmethod=marker:foldlevel=0
