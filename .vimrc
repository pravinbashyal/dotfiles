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

"tags
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'

" vim hard mode
Plug 'wikitopian/hardmode'

" buffer management
"{{
  " Plug 'jlanzarotta/bufexplorer'
  Plug 'jeetsukumaran/vim-buffergator'
" }}

"vim repeat
Plug 'tpope/vim-repeat'

" indentaion move
Plug 'michaeljsmith/vim-indent-object'

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

" merginal
Plug 'idanarye/vim-merginal'

" asyncrun
Plug 'skywind3000/asyncrun.vim'

" fugitive
Plug 'tpope/vim-fugitive'

" git log
Plug 'vim-scripts/git-log'

" unimpaired
Plug 'tpope/vim-unimpaired'

" inline evaluation
Plug 'metakirby5/codi.vim'

" fzf async replacement of ctrlP
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" goyo distraction free coding
Plug 'junegunn/goyo.vim'

" youcompleteme
"Plug 'Valloric/YouCompleteMe'

" tern for vim
"Plug 'marijnh/tern_for_vim', { 'build': { 'mac': 'npm install' } }

" tcomment for vim
" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'

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
" Plug 'vim-syntastic/syntastic'

" fold
Plug 'Konfekt/FastFold'

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

" editor
Plug 'terryma/vim-multiple-cursors'

"save vim session
Plug 'tpope/vim-obsession'

" howdoi
" Plug 'laurentgoudet/vim-howdoi'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc', {'do': 'make'} " for tsuquyomi
Plug 'ervandew/supertab'
Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }

" -----------------------
filetype plugin on
au BufRead,BufNewFile *.ts		setlocal filetype=typescript
set rtp+=/Users/pravin/.vim/plugged/typescript-tools.vim/
" ======================

" javascript import
Plug 'galooshi/vim-import-js'

" easygrep
Plug 'dkprice/vim-easygrep'

" dispatch
Plug 'tpope/vim-dispatch'

" for test
Plug 'geekjuice/vim-mocha'
Plug 'janko-m/vim-test'

" vim tmux runner
Plug 'christoomey/vim-tmux-runner'

" neoformat
" Plug 'sbdchd/neoformat'

" vim-prettier
" Plug 'mitermayer/vim-prettier'

" ALE
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'

" vim-markdown
Plug 'plasticboy/vim-markdown'

" R
Plug 'jalvesaq/Nvim-R'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

" csv
Plug 'chrisbra/csv.vim'

command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

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
