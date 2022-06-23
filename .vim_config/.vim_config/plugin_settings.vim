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
  " let g:user_emmet_leader_key='<tab>'
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
  " set diffopt+=vertical
  let g:fugitive_pty = 0
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
  " imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
  " smap <C-J> <Plug>snipMateNextOrTrigger
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
  " set completeopt-=preview
"}}}

" vim:foldmethod=marker:foldlevel=0

" vim rails
" set nocompatible
" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_rails = 1

" let g:tsuquyomi_completion_detail = 1
" let g:syntastic_typescript_checkers = ['tslint', 'tsuquyomi']
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
" autocmd FileType typescript setlocal completeopt+=menu,preview
" let g:tsuquyomi_completion_detail = 1

" surround
let b:surround_103 = "{/* \r */}"

"use ag
if executable('ag')
 let g:ackprg = 'ag --vimgrep'
endif

"camelcase
" call camelcasemotion#CreateMotionMappings('<leader>')

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

let g:ale_sign_column_always = 1

let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'typescript.tsx': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

let g:ale_linters = {
\   'typescript': ['tsserver', 'eslint'],
\   'typescript.tsx': ['tsserver', 'eslint'],
\   'javascript.jsx': ['tsserver', 'eslint'],
\}
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_typescript_prettier_use_local_config = 1
" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" filetype plugin indent on
" imap <Tab> <C-R>=UltiSnips#ExpandSnippets()<CR>

" }}
"
" UltiSnips {{{
  let g:UltiSnipsUsePythonVersion=3
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<c-j>"
  let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
  let g:UltiSnipsSnippetsDir = $HOME."/.dotfiles/UltiSnips"
  let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.dotfiles/UltiSnips']
  let g:UltiSnipsEnableSnipMate = 0
  let g:UltiSnipsEditSplit="vertical"
"}}}

" vim-doge
let g:doge_mapping="<leader>dg"

"CocVim {{{
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <TAB>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<TAB>" :
		  \ coc#refresh()

"}}}

  " In your VIMRC
  " lua require'colorizer'.setup({ '*'; css = { rgb_fn = true; };  html = { no_names = true; } })
  "

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '?${name}?'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
