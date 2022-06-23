" set json as javascript file
" autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead .babelrc setlocal filetype=json
autocmd BufNewFile,BufRead .eslintrc setlocal filetype=json
autocmd BufWritePre * :%s/\s\+$//e
" returns a string <branch/XX> where XX corresponds to the git status
" (for example "<master/ M>")
function CurrentGitStatus()
    let gitoutput = split(system('git status --porcelain -b '.shellescape(expand('%')).' 2>/dev/null'),'\n')
    if len(gitoutput) > 0
        let b:gitstatus = strpart(get(gitoutput,0,''),3) . '/' . strpart(get(gitoutput,1,'  '),0,2)
    else
        let b:gitstatus = ''
    endif
endfunc
autocmd BufEnter,BufWritePost * call CurrentGitStatus()
" example of use in the status line:
set stl=%f\ %(<%{b:gitstatus}>%)
