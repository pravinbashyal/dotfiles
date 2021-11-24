set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
au! BufNewFile,BufRead *.svelte set ft=html
