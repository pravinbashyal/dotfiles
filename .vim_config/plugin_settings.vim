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
  autocmd FileType html,css,js EmmetInstall
"}}}

" Deoplete Settings {{{
  let g:deoplete#enable_at_startup=0
  let g:deoplete#max_list=10
  let g:deoplete#auto_completion_start_length=2
  let g:deoplete#enable_smart_case=1
  let g:deoplete#file#enable_buffer_path=1

  " Manually trigger tag autocomplete
  inoremap <silent> <expr> <C-]> deoplete#mappings#manual_complete("tag")
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  "<BS>: close popup and delete backword char.
  inoremap <expr><BS> deoplete#mappings#close_popup()."\<C-h>"

  " omni completion for different file extensions
  au FileType css setlocal omnifunc=csscomplete#CompleteCSS
  au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  au FileType javascriptx setl omnifunc=tern#Complete

  if !exists('g:deoplete#omni_patterns')
    let g:deoplete#omni_patterns = {}
  endif

  " disable the documentation buffer
  set completeopt-=preview
" }}}

"CtrlP settings {{{
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
  let g:syntastic_mode_map = {
        \ "mode": "passive" }
" }}}

" vim:foldmethod=marker:foldlevel=0
