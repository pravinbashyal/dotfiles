source ~/.vim_config/sets.vim
source ~/.vim_config/keymap.vim

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

Plug 'jparise/vim-graphql'

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


" Plug 'SirVer/ultisnips'

Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

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
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}

" Rust
" Plugin 'rust-lang/rust.vim'

command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

" --------------------------------------------------------------
call plug#end()
syntax enable
filetype plugin indent on
filetype on
filetype plugin on
" ==============================================================

"}}}

source ~/.vim_config/general.vim
source ~/.vim_config/style.vim
source ~/.vim_config/plugin_settings.vim

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" Add truecolor support
" set-option -ga terminal-overrides ",xterm-256color:Tc"
" Default terminal is 256 colors
" set -g default-terminal "screen-256color"


" vim:foldmethod=marker:foldlevel=0
autocmd BufNewFile,BufRead *.js setlocal filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
command! -nargs=0 Prettier :CocCommand prettier.formatFile

set swapfile
set dir=~/.swap-files

