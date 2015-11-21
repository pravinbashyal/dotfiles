" Plugins Options and Other Settings {{{

"set colorscheme
"set background=dark
"colorscheme base16-ocean

" vim-jsx option to enable for js files too
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0

" NERDTree Options
" Toggle NERDTree with ctrl + n
map <C-n> :NERDTreeToggle<CR>
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" vim-airline configuration
set laststatus=2 "enable status line
let g:airline#extensions#tabline#enabled = 1 "enable powerline fonts 
let g:airline_powerline_fonts = 1 "enable powerline fonts
let g:airline#extensions#tagbar#enabled = 0 "speeds up the load time by disabling tagbar integration
let g:airline#extensions#tabline#fnamemod = ':p.'
let g:airline#extensions#tabline#fnamecollapse = 0
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

" Emmet Options
" Enabling just for html and css
let g:user_emmet_install_global = 1
autocmd FileType html,css,js EmmetInstall

"Neocomplete options
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#max_list = 10
let g:neocomplete#use_vimproc = 1
let g:neocomplete_enable_camel_case_completion = 0
let g:neocomplete_enable_fuzzy_completion_start_length = 2

" Fix the omnicompletion for NeoComplete with force.
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

let g:neocomplete#sources#vim#complete_functions = {
        \     'Unite': 'unite#complete_source',
        \     'VimShell': 'vimshell#complete',
        \     'VimFiler': 'vimfiler#complete',
        \ }
call neocomplete#custom#source('ultisnips', 'rank', 500)
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=tern#Complete
" Disable the neosnippet preview candidate window. Or it will ruin your overview, especially when splits are used. 
set completeopt-=preview

"}}}

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
