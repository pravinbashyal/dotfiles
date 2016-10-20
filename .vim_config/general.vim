" set json as javascript file
" autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead .babelrc setlocal filetype=json
autocmd BufNewFile,BufRead .eslintrc setlocal filetype=json
autocmd BufWritePre * :%s/\s\+$//e
