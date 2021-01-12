source ~/.dotfiles/.vim_config/sets.vim
source ~/.dotfiles/.vim_config/keymap.vim

" All Plugins {{{
" "========================================================
call plug#begin('~/.vim/plugged')

" lexima replacement for deliMate
Plug 'cohama/lexima.vim'

Plug '/kkoomen/vim-doge'

" javascript Plugs
Plug 'pangloss/vim-javascript'

" jsx indentation and highlight
Plug 'mxw/vim-jsx'

" vim hard mode
" Plug 'wikitopian/hardmode'

" buffer management
"{{
  Plug 'jeetsukumaran/vim-buffergator'
" }}

"vim repeat
Plug 'tpope/vim-repeat'

" indentaion move
Plug 'michaeljsmith/vim-indent-object'

"ack
Plug 'mileszs/ack.vim'

" highlight ending html tag when pointing to the start
Plug 'gregsexton/MatchTag'

" NerdTree Plug
Plug 'scrooloose/nerdtree'

" Seamless switch between vim and tmux splits
Plug 'christoomey/vim-tmux-navigator'

" merginal
Plug 'idanarye/vim-merginal'

" asyncrun
Plug 'skywind3000/asyncrun.vim'

" fugitive
Plug 'tpope/vim-fugitive'

" unimpaired
Plug 'tpope/vim-unimpaired'

" goyo distraction free coding
" Plug 'junegunn/goyo.vim'

Plug 'tpope/vim-commentary'

" smooth scroll Plug
Plug 'terryma/vim-smooth-scroll'

" matchit
Plug 'tmhedberg/matchit'

" vim surround
Plug 'tpope/vim-surround'

" syntastic
Plug 'vim-syntastic/syntastic'

" fold
Plug 'Konfekt/FastFold'

" colors for vim
" Plug 'chriskempson/base16-vim'
" Plug 'nemesit/vim-colors-fukurokujopro'
" Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'chase/focuspoint-vim'
Plug 'charliesbot/night-owl.vim'
" Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'ajh17/Spacegray.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'flazz/vim-colorschemes'

" typescript
" Plug 'leafgarland/typescript-vim'
Plug 'ervandew/supertab'
Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'ryanolsonx/vim-lsp-typescript'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or latest tag
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Or build from source code by use yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'kkoomen/vim-doge'

" easygrep
" Plug 'dkprice/vim-easygrep'

" dispatch
Plug 'tpope/vim-dispatch'

" ALE
" Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'

" vim-markdown
Plug 'plasticboy/vim-markdown'

" csv
Plug 'chrisbra/csv.vim' " Track the engine.

Plug 'ekalinin/Dockerfile.vim'

Plug 'w0ng/vim-hybrid'
Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell.vim'


Plug 'SirVer/ultisnips'

Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'Xuyuanp/nerdtree-git-plugin'

if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'severin-lemaignan/vim-minimap'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Rust
Plugin 'rust-lang/rust.vim'

command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

" --------------------------------------------------------------
call plug#end()
syntax enable
filetype plugin indent on
filetype on
filetype plugin on
" ==============================================================

"}}}

source ~/.dotfiles/.vim_config/general.vim
source ~/.dotfiles/.vim_config/style.vim
source ~/.dotfiles/.vim_config/plugin_settings.vim
source ~/.dotfiles/.vim_config/manual_function.vim

" vim:foldmethod=marker:foldlevel=0
autocmd BufNewFile,BufRead *.js setlocal filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
command! -nargs=0 Prettier :CocCommand prettier.formatFile

set swapfile
set dir=~/.swap-files

