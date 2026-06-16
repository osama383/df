" these mappings should not use the default register for yank and delete

set notimeout
filetype on
let mapleader = ";"

iabbrev <l <lea<left><right>der>

map ,e :e <C-R>=expand("%:p:h") . "/" <CR>

nnoremap <leader>j :bnext<cr>
nnoremap <leader>k :bprev<cr>

nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>vt :vsplit ~/vimtips<cr>

nnoremap <leader>be :vsplit ~/.bashrc<cr>
nnoremap <leader>bs :!source ~/.bashrc<cr>

nnoremap Y y$
nnoremap u <nop>
nnoremap U u

nnoremap `` :helpc<cr>:ccl<cr> 
nnoremap <leader>ff *:vim //j **/*.dart<cr>:copen<cr>

nnoremap <leader>w :wa<cr>
nnoremap <leader>e :e<cr>
nnoremap <leader>q :bd<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

vnoremap <leader>b <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>

nnoremap <leader>fad :find app_data.dart<cr>
nnoremap <leader>fas :find app_state.dart<cr>
nnoremap <leader>fgo :find routes.dart<cr>
nnoremap <leader>fbo :find bootstrap.dart<cr>

" ehp home page
" ecp customers page
" ecm customers modal
" etp trips page
" ebp build trip page
" edp drive trip page
" esm settings modal

nnoremap <leader>ehp :e apps/lr_client/lib/features/home/
nnoremap <leader>ecp :e apps/lr_client/lib/features/customers/
nnoremap <leader>ecm :e apps/lr_client/lib/features/customers/
nnoremap <leader>etp :e apps/lr_client/lib/features/trips/
nnoremap <leader>ebp :e apps/lr_client/lib/features/:/
nnoremap <leader>edp :e apps/lr_client/lib/features/home/
nnoremap <leader>esm :e apps/lr_client/lib/features/neo_settings/


augroup filetype_vim
au!
au FileType vim :iabbrev <buffer> ba <><left>
au FileType vim nnoremap <leader>c mq0i" <esc>`q
au FileType vim vnoremap <leader>c :normal 0i" <cr>
augroup END

augroup filetype_sql
au!
au FileType sql vnoremap <leader>r :w !psql $DATABASE_URL > sql.out <cr>

au FileType sql nnoremap <leader>c mq0i-- <esc>`q
au FileType sql vnoremap <leader>c :normal 0i-- <cr>

au FileType sql :iabbrev <buffer> sel SELECT
au FileType sql :iabbrev <buffer> select SELECT

au FileType sql :iabbrev <buffer> from FROM
au FileType sql :iabbrev <buffer> fro FROM

au FileType sql :iabbrev <buffer> where WHERE
au FileType sql :iabbrev <buffer> whe WHERE

au FileType sql :iabbrev <buffer> and AND

au FileType sql :iabbrev <buffer> exists EXISTS
au FileType sql :iabbrev <buffer> exi EXISTS

au FileType sql :iabbrev <buffer> update UPDATE
au FileType sql :iabbrev <buffer> upd UPDATE

au FileType sql :iabbrev <buffer> alter ALTER
au FileType sql :iabbrev <buffer> alt ALTER

au FileType sql :iabbrev <buffer> table TABLE
au FileType sql :iabbrev <buffer> tab TABLE

au FileType sql :iabbrev <buffer> add ADD

au FileType sql :iabbrev <buffer> create CREATE
au FileType sql :iabbrev <buffer> cre CREATE

au FileType sql :iabbrev <buffer> insert INSERT
au FileType sql :iabbrev <buffer> ins INSERT

au FileType sql :iabbrev <buffer> into INTO
au FileType sql :iabbrev <buffer> int INTO

au FileType sql :iabbrev <buffer> enable ENABLE
au FileType sql :iabbrev <buffer> ena ENABLE

au FileType sql :iabbrev <buffer> rls ROW LEVEL SECURITY
augroup END


augroup filetype_dart
au!

au FileType dart nnoremap <leader>df <cmd>DartFmt<cr>
au FileType dart nnoremap <leader>da :cgetexpr system('dart analyze apps/lr_client')<cr>:copen<cr>
au FileType dart nnoremap <leader>dt :!ctags -R .<cr>

au FileType dart nnoremap <leader>iy :let @"=expand('%')<cr>
au FileType dart nnoremap <leader>ip ggOimport '<esc>pa';<esc>0f'apackage:<esc>ld/lib<cr>ciwlr_client<esc>vip:sort<cr>Vip:uniq<cr>:DartFmt<cr>
au FileType dart nnoremap <leader>io  0f/lyt':find ./apps/lr_client/lib/<c-R>"<cr>

au FileType dart nnoremap <leader>c mqI// <esc>`q 
au FileType dart vnoremap <leader>c :normal 0i// <cr>

au FileType dart nnoremap <leader>bi /Widget build(BuildContext context) {<cr>

au FileType dart :iabbrev <buffer> br ()<left>
au FileType dart :iabbrev <buffer> bc {}<left>
au FileType dart :iabbrev <buffer> bs []<left>
au FileType dart :iabbrev <buffer> ba <><left>
au FileType dart :iabbrev <buffer> brbc (){}<left>
au FileType dart :iabbrev <buffer> brabc ()async{}<left>
au FileType dart :iabbrev <buffer> fa =>

au FileType dart :iabbrev <buffer> rn return
au FileType dart :iabbrev <buffer> ea EdgeInsets.all(),<left><left>
au FileType dart :iabbrev <buffer> spa spacing:,<left>
au FileType dart :iabbrev <buffer> imfb import 'package:flutter_bloc/flutter_bloc.dart';
au FileType dart :iabbrev <buffer> immb import 'package:lr_client/core/widgets/modal_builder/modal_builder.dart';
au FileType dart :iabbrev <buffer> imsl import 'package:lr_client/injection.dart';
au FileType dart :iabbrev <buffer> inis @override initState() { super.initState(); }<esc><esc>
au FileType dart :iabbrev <buffer> maa  mainAxisAlignment: MainAxisAlignment.,<left>

au FileType dart :iabbrev <buffer> lm class Modal extends LongModal { @override Bloc<dynamic, dynamic>? get bloc => null; @override Widget content(BuildContext context) { return Container( color: context.colorScheme.surface, padding: EdgeInsets.all(24), child: ZoneLocations(),); } @override Stream<bool> get isBusyStream => Stream.value(false); @override void popWithValue(BuildContext context) { context.pop(); } @override Widget title(BuildContext context) { return Text('Locations'); } @override LongModalConfiguration configure(BuildContext context) { return LongModalConfiguration(useDefaultContentPadding: false); } }

au FileType dart nnoremap <leader>p yiwoprint('<esc>pa: ${<esc>pa}');<esc>
au FileType dart vnoremap <leader>p yoprint('<esc>pa: ${<esc>pa}');<esc>

au FileType dart nnoremap <leader>flww ebi(child:<esc>f(%a)<esc>%i
au FileType dart nnoremap <leader>flwc ebiColumn(crossAxisAlignment:CrossAxosAlignment.stretch,children:[<esc>f(%a])<esc>
au FileType dart nnoremap <leader>flwr ebiRow(crossAxisAlignment:CrossAxosAlignment.start,children:[<esc>f(%a])<esc>
au FileType dart nnoremap <leader>flwbp ebv/(<cr>%diBlocProvider<Bloc>.value(value: , child: )<esc>P%/:<cr>a
au FileType dart nnoremap <leader>flwbb ebv/(<cr>%diBlocBuilder<Bloc, State>(builder:(context, state){return ;})<esc>hhhp

au FileType dart nnoremap <leader>flrw mt/child:<cr>/(<cr>bvw%d`tebvw%p
augroup END

" netrw
nmap _ :Lexplore<CR>
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
let g:netrw_winsize = 20
" let g:netrw_keepdir = 1
" nnoremap <leader>dd :Lexplore %:p:h<CR>
" nnoremap <Leader>da :Lexplore<CR>

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
set splitright
set splitbelow
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


" Center screen when jumping
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-d> <C-d>zt
nnoremap <C-u> <C-u>zt
nnoremap <C-o> <C-o>zt
nnoremap <C-i> <C-i>zt


" :DartFmt — format current file with dart format
command! DartFmt call s:DartFmt()
function! s:DartFmt()
  let l:file = expand('%:p')
  if l:file ==# ''
    echohl ErrorMsg | echom 'Buffer has no file name' | echohl None
    return
  endif
  write
  let l:result = system('dart format ' . shellescape(l:file))
  if v:shell_error != 0
    echohl ErrorMsg | echom 'dart format failed: ' . l:result | echohl None
  else
    edit
"    echom 'Formatted: ' . expand('%:t')
  endif
endfunction

autocmd VimEnter * echo "Vim Loaded! Proceed."

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
nnoremap <leader>n :call ToggleAutocomplete()<cr>
function! ToggleAutocomplete()
	if &autocomplete
		set noautocomplete
	else
		set autocomplete
	endif
endfunction

" let g:is_quickfix_open = 0
" let g:is_help_open = 0
" function! OnBackticks()
"   	 if g:is_help_open
"   		 helpc
"   		 let g:is_help_open = 0
"   	 else if g:is_quickfix_open
"   		 copen
"   		 let g:is_quickfix_open = 1
"   	endif
" 	if g:is_quickfix_open
" 		ccl
" 		let g:is_quickfix_open = 0
" 	endif
" endfunction
