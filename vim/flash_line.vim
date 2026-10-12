function! FlashCursorline()
  set cursorline 
  call timer_start(150, {-> execute('set nocursorline nocursorcolumn')})
endfunction

nnoremap <c-h> <c-w>h<cmd>call FlashCursorline()<cr>
nnoremap <c-j> <c-w>j<cmd>call FlashCursorline()<cr>
nnoremap <c-k> <c-w>k<cmd>call FlashCursorline()<cr>
nnoremap <c-l> <c-w>l<cmd>call FlashCursorline()<cr>

" Center screen when jumping
nnoremap n nzzzv<cmd>call FlashCursorline()<cr>
nnoremap N Nzzzv<cmd>call FlashCursorline()<cr>
nnoremap <C-d> <C-d>zt<cmd>call FlashCursorline()<cr>
nnoremap <C-u> <C-u>zt<cmd>call FlashCursorline()<cr>
nnoremap <C-o> <C-o>zt<cmd>call FlashCursorline()<cr>
nnoremap <C-i> <C-i>zt<cmd>call FlashCursorline()<cr>

" Flash on buffer enter
augroup flash_cursorline
  au!
  au BufEnter * call FlashCursorline()
augroup END

