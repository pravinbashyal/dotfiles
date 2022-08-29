" Set Mappings {{{
" make Ctrl + c to line break in between opening and closing quotes or brackets
imap <C-c> <CR><Esc>O

" navigate between multiplelines that don't have \n
noremap j gj
noremap k gk

" spaec open/closes fold
nnoremap <space> za

" toggle gundo <leader> u because it is a super undo :P
nnoremap <leader>u :GundoToggle<CR>

" goyo map distraction free mode
map <leader>z :Goyo<CR>

" buffer mapings
" mappings for vertical split increment by 5 units
nnoremap + :exe "vertical resize " . (winwidth(0) * 9/8)<CR>
nnoremap _ :exe "vertical resize " . (-5)<CR>
" map :b# to <space><space>
nmap <leader><space> :b#<CR>

" last pasted text
nnoremap gp `[v`]

" set syntax highlight scan from start
"noremap <F5>:syntax sync fromstart<CR>

" source vimrc
noremap <F5> :source $MYVIMRC<CR>

" smooth scroll maping
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

" nerdtree mapping
map <leader><CR> :NERDTreeToggle<CR>

" fzf
noremap <c-f> :FZF<CR>

" ack mapping
noremap <leader><space> :Ack<Space>

let g:SuperTabMappingForward = '<c-n>'
let g:SuperTabMappingBackward = '<c-N>'

"tab width
nnoremap <space>tw :Tw<space>

" fix for iterm under mac
nnoremap <BS> :TmuxNavigateLeft<CR>

"fugitive mapping
nnoremap <space>gs :Git<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gn :Git commit --no-verify<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>dg :diffget<CR>
nnoremap <space>dg[ :diffget //2<CR>
nnoremap <space>dg] :diffget //3<CR>
nnoremap <space>dp :diffput<CR>
nnoremap <space>du :diffupdate<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! 0Glog<CR>:bot copen<CR>
nnoremap <space>gll :Glog -- %<CR>:bot copen<CR>
nnoremap <space>gL :Glog -10 -- <CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :MerginalToggle <CR>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" vim test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" buffer
nnoremap <space>o :only<CR>
nnoremap <space>r :bufdo e<CR>
nnoremap <leader>q :bd <CR>

"camelcase
" omap ,iw <Plug>CamelCaseMotion_iw
" xmap ,iw <Plug>CamelCaseMotion_iw

" toggle search highlight
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" toggle hard mode
nnoremap <leader>H <Esc>:call ToggleHardMode()<CR>

" set read only
nnoremap <Space>R :set nomodifiable<CR>
nnoremap <Space>W :set modifiable<CR>

" buffer
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" copy to clipboard
vnoremap <space>co :call Copy(@*)<CR>


" source vimrc
nnoremap <space>w :source ~/.vimrc<CR>

" buffergator
nnoremap <leader>f :BuffergatorToggle<CR>

" only
nnoremap <leader>o :only<CR>

" tab completion
" inoremap <C-n> <c-r>=Smart_TabComplete()<CR>

" tsuquyomi
nnoremap <space>ti :TsuImport <CR>
nnoremap <space>tf :TsuReferences<CR>
nnoremap <space>td :TSSdefsplit<CR>
nnoremap <space>tp :TSSdefpreview<CR>
" nnoremap <space>tF :TsuImplementation <CR>

" syntastic
" nnoremap <leader>tl :SyntasticCheck tslint<CR>
" nnoremap <space>tm :SyntasticToggleMode <CR>
" nnoremap <space>tR :TsuRenameSymbol<CR>

" map ' to ``
nnoremap ' `
vnoremap ' `

vnoremap <space>gc :normal yssg <CR>

nnoremap <space>jc yss * <CR> yss / <CR> yss { <CR>

" vim tmux runner
nnoremap <space>f :VtrFocusRunner<CR>

" ALE
" nnoremap <C-]> :ALEGoToDefinitionInTab <CR>
nnoremap <C-t> :q <CR>
" nmap <silent> <C-k> :ALEPreviousWrap <CR>
" nmap <silent> <C-j> :ALENextWrap <CR>
" nmap <silent> <C-]> :ALEGoToDefinition <CR>
nmap <silent> <C-t> :bprevious<CR>

" log
let g:GITLOG_default_mode = 2
map <silent> <f7> :call GITLOG_ToggleWindows()<cr>
map <silent> <f5> :call GITLOG_FlipWindows()<cr>

" nerd tree find
nmap ,nf :NERDTreeFind<CR>

nmap ,w :w <CR>
nmap ,wq :wq <CR>

" camelcase navigate
nnoremap <c-k> :<c-u>call search('\u')<cr>
vmap <c-k> :<c-u>call search('\u')<cr>

" vim-coc
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>hh <Plug>(coc-type-definition)
nmap <C-]> <Plug>(coc-definition)
nmap <leader>r <Plug>(coc-references)
nmap <C-n> <Plug>(coc-diagnostic-next-error)
nmap <C-p> <Plug>(coc-diagnostic-prev-error)
nmap <leader>ii <plug>(coc-codeaction-line)
xmap <space>a  <Plug>(coc-codeaction-selected)
nmap <space>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>rf :CocCommand workspace.renameCurrentFile <CR>
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" markdown preview
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" Use K to show documentation in preview window
nnoremap K :call <SID>show_documentation()<CR>

nnoremap <leader>js :JsDoc <cr>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"}}}
