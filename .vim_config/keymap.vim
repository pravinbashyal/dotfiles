" Set Mappings {{{
" make Ctrl + c to line break in between opening and closing quotes or brackets
imap <C-c> <CR><Esc>O

" turn off searh highlight
nnoremap <leader>n :nohlsearch<CR>

" spaec open/closes fold
nnoremap <space><space> za

" toggle gundo <leader> u because it is a super undo :P
nnoremap <leader>u :GundoToggle<CR>

" goyo map distraction free mode
map <leader>z :Goyo<CR>

" buffer mapings
" mappings for vertical split increment by 5 units
nnoremap + :exe "vertical resize " . (winwidth(0) * 9/8)<CR>
nnoremap - :exe "vertical resize " . (-5)<CR>
" map :b# to <space><space>
nmap <leader><space> :b#<CR>

" : to ;
nmap ; :

" last pasted text
nnoremap gp `[v`]

" set syntax highlight scan from start
noremap <F5>:syntax sync fromstart<CR>

"}}}
