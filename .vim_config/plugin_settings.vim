" vim-jsx option to enable for js files too {{{
  let g:jsx_ext_required = 0
"}}}

" vim-airline configuration {{{
  set laststatus=2 "enable status line
  let g:airline#extensions#tabline#enabled = 1 "enable powerline fonts
  let g:airline_powerline_fonts = 1 "enable powerline fonts
  let g:airline#extensions#tagbar#enabled = 0 "speeds up the load time by disabling tagbar integration
  let g:airline#extensions#tabline#fnamemod = ':.'
  let g:airline#extensions#tabline#fnamecollapse = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1 "show buffer number in tabline
  let g:airline#extensions#tabline#buffer_idx_mode = 1 "show buffer index on tabline
  " maps for switching between buffers
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
"}}}

" Emmet Options {{{
" Enabling just for html and css
  let g:user_emmet_install_global = 1
  let g:user_emmet_mode='n'
  let g:user_emmet_leader_key='<tab>'
  autocmd FileType html,css,js EmmetInstall
"}}}

"CtrlP settings {{{
  let g:ctrlp_map = '<c-f>'
  if exists("g:ctrlp_user_command")
    unlet g:ctrlp_user_command
  endif
  if executable('ag')
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command =
      \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
  else
    " Fall back to using git ls-files if Ag is not available
    let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
  endif

  " Default to filename searches - so that appctrl will find application
  " controller
  "let g:ctrlp_by_filename = 1

  " Don't jump to already open window. This is annoying if you are maintaining
  " several Tab workspaces and want to open two windows into the same file.
  let g:ctrlp_switch_buffer = 0
"}}}

" NerdTree settings {{{
  set splitright
  set splitbelow
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}}}

"vim-windowswap settings {{{
  let g:windowswap_map_keys = 0 "prevent default bindings
  nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
  nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
  nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
"}}}

" fugitive.vim {{{
  set diffopt+=vertical
" }}}

" syntastic Settings {{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_javascript_checkers = ['standard']
" }}}

" tern settings {{{
  let g:tern_map_keys=1
  let g:tern_show_argument_hints='on_hold'
" }}}

" snipmate settings {{{
  "to prevent clash with youcompleteme, change snippet trigger
  imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
  smap <C-J> <Plug>snipMateNextOrTrigger
" }}}
"

" test vim
function! JimMorrison(cmd)
  " echo 'It works! Command for running tests: ' . a:cmd
  " echo " export NODE_ENV='test';".a:cmd
  :VtrOpenRunner
  call VtrSendCommand("export NODE_ENV='test';".a:cmd)
endfunction

let g:test#custom_strategies = {'jimmorrison': function('JimMorrison')}
let g:test#strategy = 'jimmorrison'
let test#javascript#minitest#file_pattern = 'Test.js'

" YouCompeleteMe settings {{{
  set completeopt-=preview
"}}}

" vim:foldmethod=marker:foldlevel=0

"deoplete
let g:deoplete#enable_at_startup = 1

" vim rails
set nocompatible
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" syntastic typescript
let g:tsuquyomi_single_quote_import = 1
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_shortest_import_path = 1
let g:tsuquyomi_single_quote_import = 1
let g:tsuquyomi_use_vimproc = 1
let g:tsuquyomi_completion_detail = 1
let g:syntastic_typescript_checkers = ['tslint', 'tsuquyomi']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['typescript']}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_w = 1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

autocmd FileType typescript nmap <buffer> <space>h : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:tsuquyomi_completion_detail = 1

" surround
let b:surround_103 = "{/* \r */}"

"use ag
if executable('ag')
 let g:ackprg = 'ag --vimgrep'
endif

"camelcase
call camelcasemotion#CreateMotionMappings('<leader>')

let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'typescript.tsx': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_typescript_prettier_use_local_config = 1
" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" Enable completion where available.
let g:ale_completion_enabled = 0

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" vim prettier
" max line lengh that prettier will wrap on
" " {{
"   let g:prettier#config#print_width = 80

"   " number of spaces per indentation level
"   let g:prettier#config#tab_width = 2

"   " use tabs over spaces
"   let g:prettier#config#use_tabs = 'false'

"   " print semicolons
"   let g:prettier#config#semi = 'false'

"   " single quotes over double quotes
"   let g:prettier#config#single_quote = 'true'

"   " print spaces between brackets
"   let g:prettier#config#bracket_spacing = 'true'

"   " put > on the last line instead of new line
"   let g:prettier#config#jsx_bracket_same_line = 'false'

"   " none|es5|all
"   let g:prettier#config#trailing_comma = 'es5'

"   " flow|babylon|typescript|postcss|json|graphql
"   let g:prettier#config#parser = 'flow'

"   let g:loaded#prettier = 0

"   " when running at every change you may want to disable quickfix
"   " let g:prettier#quickfix_enabled = 0

"   let g:prettier#autoformat = 0
"   autocmd BufWritePre *.ts,*.tsx,*.js,*.json,*.css,*.scss,*.less,*.graphql Prettier
" }}
