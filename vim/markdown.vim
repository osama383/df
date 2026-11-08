augroup filetype_markdown
au!
au BufWritePost *.md silent !pandoc % -o %:r.html
augroup END


