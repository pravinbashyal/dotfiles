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

" Ctrlp-funky mappings
nnoremap <Leader>p :CtrlPFunky<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" ack mapping
noremap <C-p> :Ack<Space>

"tab width
nnoremap <space>tw :Tw<space>

" fix for iterm under mac
nnoremap <BS> :TmuxNavigateLeft<CR>

"fugitive mapping
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
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
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
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
omap ,iw <Plug>CamelCaseMotion_iw
xmap ,iw <Plug>CamelCaseMotion_iw

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
inoremap <tab> <c-r>=Smart_TabComplete()<CR>

" tsuquyomi
" nnoremap <space>ti :TsuImport <CR>
nnoremap <space>tf :TSSreferences<CR>
nnoremap <space>td :TSSdefsplit<CR>
nnoremap <space>tp :TSSdefpreview<CR>
" nnoremap <space>tF :TsuImplementation <CR>

" syntastic
" nnoremap <leader>tl :SyntasticCheck tslint<CR>
nnoremap <space>tm :SyntasticToggleMode <CR>
nnoremap <space>tR :TsuRenameSymbol<CR>
nnoremap <C-n> :lnext<CR>
nnoremap <C-b> :lprev<CR>

" map ' to ``
nnoremap ' `
vnoremap ' `

vnoremap <space>gc :normal yssg <CR>

nnoremap <space>jc yss * <CR> yss / <CR> yss { <CR>

" vim tmux runner
nnoremap <space>f :VtrFocusRunner<CR>

" ALE
nnoremap <C-]> :ALEGoToDefinitionInTab <CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" log
let g:GITLOG_default_mode = 2
map <silent> <f7> :call GITLOG_ToggleWindows()<cr>
map <silent> <f5> :call GITLOG_FlipWindows()<cr>
"}}}
