augroup filetype_c
au!
au FileType c nnoremap <leader>s :r! cat ~/dev/df/snippets/c/

au FileType c inoremap {{ {<cr>}<esc>O

au FileType c :iabbrev <buffer> ioh #include<stdio.h>
augroup END
