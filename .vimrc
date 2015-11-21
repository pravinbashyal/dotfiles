source ~/.vim_config/sets.vim
source ~/.vim_config/keymap.vim

" All Plugins {{{
" "========================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ---------------------------------------------------------
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" closing quotes and brackets
Plugin 'Raimondi/delimitMate'

" javascript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/yajs.vim'

" jsx indentation and highlight
Plugin 'mxw/vim-jsx'

" vim-airline
Plugin 'bling/vim-airline'

" highlight ending html tag when pointing to the start
Plugin 'gregsexton/MatchTag'

" NerdTree plugin
Plugin 'scrooloose/nerdtree'

" Emmet.vim plugin for i don't know expanding html tags i guess
" i want to use it for sniplet of html structure
Plugin 'mattn/emmet-vim'

" tmuxline plugin
Bundle 'edkolev/tmuxline.vim'

" Seamless switch between vim and tmux splits
Bundle 'christoomey/vim-tmux-navigator'

" fugitive
Plugin 'tpope/vim-fugitive'

" CtrlP
Plugin 'kien/ctrlp.vim'

" gundo for visual undo
Plugin 'sjl/gundo.vim'

" goyo distraction free coding
Plugin 'junegunn/goyo.vim'

" neocomplete completion
Plugin 'Shougo/neocomplete.vim'

" vimproc used by neocomplete
Plugin 'Shougo/vimproc.vim'

" tern for vim
Plugin 'marijnh/tern_for_vim', { 'build': { 'mac': 'npm install' } }

" Ag for vim
Plugin 'rking/ag.vim'

" base16 colorschemes
Plugin 'chriskempson/base16-vim'

" fukurokujopro colorscheme
Bundle 'nemesit/vim-colors-fukurokujopro'

" Solorazied theme
Plugin 'altercation/vim-colors-solarized'

" --------------------------------------------------------------
call vundle#end()            " required
filetype plugin indent on    " required
filetype on
" ==============================================================

"}}}

source ~/.vim_config/general.vim
source ~/.vim_config/style.vim
source ~/.vim_config/plugin_settings.vim



" vim:foldmethod=marker:foldlevel=0
