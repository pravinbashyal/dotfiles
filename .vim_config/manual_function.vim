
" ruby map functions
function! GenerateController(input)
  execute "Rgenerate controller ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
endfunction

function! TabWidth(input)
  execute "set tabstop=".a:input
  execute "set shiftwidth=".a:input
  execute "let g:prettier#config#tab_width=".a:input
endfunction

function! PrettierSet(arg1, arg2)
  let command = "let g:prettier#config#".a:arg1."='".a:arg2."'"
  echo command
  execute command
endfunction

function! GenerateModel(input)
  execute "Rgenerate model ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
endfunction

function! DestroyController(input)
  execute "Rdestroy controller ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
endfunction

function! DestroyModel(input)
  execute "Rdestroy model ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
endfunction

function! GenerateMailer(input)
  execute "Rgenerate mailer ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
endfunction

function! DestroyMailer(input)
  execute "Rdestroy mailer ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
endfunction

function! Copy(str)
  normal gv"+y
  let result = getreg("+")
endfunction

function! NewFileHere(str)
  let currentDirectoryArray = split(expand('%:p'), '/')[0:-2]
  let currentDirectory = join(currentDirectoryArray, '/').'/'
  echo currentDirectory
endfunction

function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

source ~/.dotfiles/.vim_config/function_calls.vim
