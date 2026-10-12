augroup filetype_vim
au!
au BufWritePost ~/.vimrc so
au BufWritePost *.vim so $MYVIMRC
au FileType vim nnoremap <leader>c mq0i" <esc>`q
au FileType vim vnoremap <leader>c :normal 0i" <cr>
au FileType vim iabbrev <l <lea<left><right>der>
augroup END
