" Open the next file in the same directory (alphabetically)
nnoremap <leader>j :call OpenNextFile(1)<CR>
nnoremap <leader>k :call OpenNextFile(-1)<CR>

function! OpenNextFile(direction)
  " Get the directory of the current file
  let l:current = expand('%:p')
  if l:current == ''
    echo 'No active buffer with a file'
    return
  endif

  let l:dir = expand('%:p:h')

  " Get all files in the directory (not subdirectories), sorted
  let l:files = sort(filter(glob(l:dir . '/*', 0, 1), 'filereadable(v:val)'))

  if empty(l:files)
    echo 'No files in directory'
    return
  endif

  " Find current file index
  let l:idx = index(l:files, l:current)

  " Move in the requested direction
  let l:next_idx = l:idx + a:direction

  " Bounds check (no wrap-around — adjust if you want cycling)
  if l:next_idx < 0 || l:next_idx >= len(l:files)
    echo 'No ' . (a:direction > 0 ? 'next' : 'previous') . ' file'
    return
  endif

  execute 'edit ' . fnameescape(l:files[l:next_idx])
endfunction
