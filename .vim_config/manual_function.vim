
" ruby map functions
function! GenerateController(input)
  execute "Rgenerate controller ".a:input
  " execute "NERDTreeFind ".a:input."_controller.rb"
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

source ~/.dotfiles/.vim_config/function_calls.vim
