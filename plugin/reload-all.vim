function! ReloadAll()
  let l:buf = bufnr('%')
  let l:confirm = &confirm
  set noconfirm
  bufdo e!
  let &confirm = l:confirm
  exec 'b' l:buf
  syntax on
endfunction

command! ReloadAll call ReloadAll()
