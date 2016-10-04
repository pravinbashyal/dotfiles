source ~/.dotfiles/.vim_config/sets.vim
source ~/.dotfiles/.vim_config/keymap.vim

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

"ctrlP
Plug 'ctrlpvim/ctrlp.vim'

"vim for rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-projectionist'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-bundler'

" neocomplete
Plug 'Shougo/neocomplete.vim'

"camelcase
Plug 'bkad/CamelCaseMotion'

"ack
Plug 'mileszs/ack.vim'

" vim-airline
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" highlight ending html tag when pointing to the start
Plug 'gregsexton/MatchTag'

" NerdTree Plug
Plug 'scrooloose/nerdtree'

" Emmet for vim
Plug 'mattn/emmet-vim'

" Seamless switch between vim and tmux splits
Plug 'christoomey/vim-tmux-navigator'

" SnipMate
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
"Plug 'honza/vim-snippets'

" fugitive
Plug 'tpope/vim-fugitive'

" fzf async replacement of ctrlP
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  
" goyo distraction free coding
Plug 'junegunn/goyo.vim'

" youcompleteme
"Plug 'Valloric/YouCompleteMe'

" tern for vim
"Plug 'marijnh/tern_for_vim', { 'build': { 'mac': 'npm install' } }

" Ag for vim
Plug 'rking/ag.vim'

" tcomment for vim
Plug 'tomtom/tcomment_vim'

" smooth scroll Plug
Plug 'terryma/vim-smooth-scroll'

" VIM Hard mode disable all micro movment and bunch of other stuffs
" Plug 'wikitopian/hardmode'

" HTML5 Plug
" Plug 'othree/html5.vim'

" matchit
Plug 'tmhedberg/matchit'

" vim surround
Plug 'tpope/vim-surround'

" syntastic
Plug 'scrooloose/syntastic'

" colors for vim
Plug 'chriskempson/base16-vim'
Plug 'nemesit/vim-colors-fukurokujopro'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ajh17/Spacegray.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'flazz/vim-colorschemes'

" --------------------------------------------------------------
call plug#end()
filetype plugin indent on    " required
filetype on
" ==============================================================

"}}}

source ~/.dotfiles/.vim_config/general.vim
source ~/.dotfiles/.vim_config/style.vim
source ~/.dotfiles/.vim_config/plugin_settings.vim
source ~/.dotfiles/.vim_config/manual_function.vim

" vim:foldmethod=marker:foldlevel=0
