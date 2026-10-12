so ~/dev/df/vim/vim.vim
so ~/dev/df/vim/file_jk.vim
so ~/dev/df/vim/c.vim
so ~/dev/df/vim/sql.vim
so ~/dev/df/vim/go_dart.vim

inoremap << <><left>
inoremap (( ()<left>
inoremap [[ []<left>
inoremap {{ {<cr>}<esc>O

inoreabbrev bw between


if &diff
  colorscheme retrobox
endif

set laststatus=2
set statusline=%n\ %t\ %m
set notimeout
filetype on
let mapleader = ";"


map ,e :e <C-R>=expand("%:p:h") . "/" <CR>


nnoremap u <nop>
nnoremap U u

nnoremap Y y$
nnoremap <leader>y "+y
vnoremap <leader>y "+y

nnoremap <leader>d "+d
vnoremap <leader>d "+d

nnoremap `` :helpc<cr>:ccl<cr> 
nnoremap <leader>w :wa<cr>
nnoremap <leader>e :e<cr>
nnoremap <leader>q :bd<cr>

nnoremap <leader>ve :e $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>be :e ~/.bashrc<cr>
nnoremap <leader>bs :!source ~/.bashrc<cr>

"add corresponding normal mode remaps that surround the word under the cursor
vnoremap <leader>b <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>

nnoremap <leader>ff :vim //j **/*.dart<cr>:copen<cr>


" nnoremap <c-h> <c-w>h
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-l> <c-w>l

" " Center screen when jumping
" nnoremap n nzzzv
" nnoremap N Nzzzv
" nnoremap <C-d> <C-d>zt
" nnoremap <C-u> <C-u>zt
" nnoremap <C-o> <C-o>zt
" nnoremap <C-i> <C-i>zt



augroup pandoc_g
  au!
  au BufWritePost ~/small_talk/g.md silent !pandoc % -o %:r.html
augroup END


" netrw
nnoremap - :Explore %:p:h<CR>
let g:netrw_browse_split = 0
let g:netrw_fastbrowse = 0

" file handling
set autoread
set noswapfile
set noundofile

" search
set incsearch
set nohlsearch
set ignorecase
set smartcase

" miscelaneous
set hidden
set autoindent
set noruler
set nowrap
set scrolloff=10
set sidescrolloff=8
set number
set signcolumn=number
set relativenumber
set path+=**
set wildmenu
set wildmode=list:longest,full


" Flutter / Dart
set wildignore+=*/.dart_tool/*
set wildignore+=*/.pub-cache/*
set wildignore+=*/.pub/*
set wildignore+=*/build/*
set wildignore+=*/.flutter/*
set wildignore+=*.g.dart          " generated files (json_serializable etc.)
set wildignore+=*.freezed.dart

" Node
set wildignore+=*/node_modules/*
set wildignore+=*/dist/*
set wildignore+=*/.npm/*

" Version control
set wildignore+=*/.git/*
set wildignore+=*/.svn/*

" OS / editor noise
set wildignore+=*.DS_Store
set wildignore+=*/.idea/*
set wildignore+=*/.vscode/*

" Compiled / binary
set wildignore+=*.o,*.obj,*.class
set wildignore+=*.pyc,*.pyo,__pycache__

" set autocomplete
"nnoremap <leader>n :call ToggleAutocomplete()<cr>
"function! ToggleAutocomplete()
"	if &autocomplete
"		set noautocomplete
"	else
"		set autocomplete
"	endif
"endfunction



" command! -nargs=2 Switch call s:Switch(<f-args>)
" function! s:Switch(switch_character, buffer_number)
"     execute "nnoremap ;".a:switch_character." :b ".a:buffer_number."\r"
" endfunction

command! -nargs=1 Fstl call s:Fstl(<q-args>)
function! s:Fstl(className)
    execute "normal! i" . "class " .a:className. " extends StatelessWidget { const " .a:className. "({super.key}); @override Widget build(BuildContext context) { return ; } }"
endfunction


command! -nargs=1 Fstf call s:Fstf(<q-args>)
function! s:Fstf(CN)
	execute "normal! i" . "class " .a:CN. " extends StatefulWidget { const " .a:CN. "({super.key}); @override State<" .a:CN. "> createState() => _" .a:CN. "State(); } class _" .a:CN. "State extends State<" .a:CN. "> { @override void initState() { super.initState(); } @override void didChangeDependencies() { super.didChangeDependencies(); } @override void dispose() { super.dispose(); } @override Widget build(BuildContext context) { } }"
endfunction


" pascalCase to snake_case
function! PascalToSnake()
  let word = expand('<cword>')
  let converted = substitute(word, '\C\([A-Z]\)', '_\l\1', 'g')
  execute 'normal! ciw' . converted
endfunction

nnoremap crs :call PascalToSnake()<CR>


ec "Vim Loaded. Proceed!"
