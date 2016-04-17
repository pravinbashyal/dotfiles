" Set Mappings {{{
" make Ctrl + c to line break in between opening and closing quotes or brackets
imap <C-c> <CR><Esc>O

" navigate between multiplelines that don't have \n
noremap j gj
noremap k gk

" turn off searh highlight
nnoremap <leader>n :nohlsearch<CR>

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

" toggle vim hard mode
" nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" source vimrc
noremap <F5> :source $MYVIMRC<CR>

" smooth scroll maping
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

" nerdtree mapping
map <leader><CR> :NERDTreeToggle<CR>

" synstastic mapping
map <leader>c :SyntasticCheck<CR>

" Fugitive mapping
" map Gstatus
noremap <leader>gs :Gstatus<CR>

" Ctrlp-funky mappings
nnoremap <Leader>p :CtrlPFunky<Cr>
let g:ctrlp_funky_syntax_highlight = 1

" fzf mapping
noremap <C-p> :FZF<CR>

" fix for iterm under mac
nnoremap <BS> :TmuxNavigateLeft<CR>

"}}}
