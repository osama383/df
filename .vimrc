if &diff
  colorscheme retrobox
endif


" these mappings should not use the default register for yank and delete

set laststatus=2
set statusline=%n\ %t\ %m
set notimeout
filetype on
let mapleader = ";"

iabbrev <l <lea<left><right>der>

map ,e :e <C-R>=expand("%:p:h") . "/" <CR>

" nnoremap <leader>j :bnext<cr>
" nnoremap <leader>k :bprev<cr>

nnoremap <leader>ve :e $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>vt :e ~/vimtips<cr>

nnoremap <leader>be :e ~/.bashrc<cr>
nnoremap <leader>bs :!source ~/.bashrc<cr>

nnoremap Y y$
nnoremap u <nop>
nnoremap U u

nnoremap `` :helpc<cr>:ccl<cr> 
nnoremap <leader>ff :vim //j **/*.dart<cr>:copen<cr>

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

au FileType sql :iabbrev <buffer> is IS
au FileType sql :iabbrev <buffer> in IN
au FileType sql :iabbrev <buffer> or OR
au FileType sql :iabbrev <buffer> and AND
au FileType sql :iabbrev <buffer> add ADD
au FileType sql :iabbrev <buffer> not NOT
au FileType sql :iabbrev <buffer> set SET
au FileType sql :iabbrev <buffer> key KEY

au FileType sql :iabbrev <buffer> primary PRIMARY
au FileType sql :iabbrev <buffer> pri PRIMARY

au FileType sql :iabbrev <buffer> column COLUMN
au FileType sql :iabbrev <buffer> col COLUMN

au FileType sql :iabbrev <buffer> select SELECT
au FileType sql :iabbrev <buffer> sel SELECT

au FileType sql :iabbrev <buffer> from FROM
au FileType sql :iabbrev <buffer> fro FROM

au FileType sql :iabbrev <buffer> where WHERE
au FileType sql :iabbrev <buffer> whe WHERE

au FileType sql :iabbrev <buffer> exists EXISTS
au FileType sql :iabbrev <buffer> exi EXISTS

au FileType sql :iabbrev <buffer> update UPDATE
au FileType sql :iabbrev <buffer> upd UPDATE

au FileType sql :iabbrev <buffer> alter ALTER
au FileType sql :iabbrev <buffer> alt ALTER

au FileType sql :iabbrev <buffer> table TABLE
au FileType sql :iabbrev <buffer> tab TABLE

au FileType sql :iabbrev <buffer> create CREATE
au FileType sql :iabbrev <buffer> cre CREATE

au FileType sql :iabbrev <buffer> insert INSERT
au FileType sql :iabbrev <buffer> ins INSERT

au FileType sql :iabbrev <buffer> into INTO
au FileType sql :iabbrev <buffer> int INTO

au FileType sql :iabbrev <buffer> enable ENABLE
au FileType sql :iabbrev <buffer> ena ENABLE

au FileType sql :iabbrev <buffer> drop DROP
au FileType sql :iabbrev <buffer> dro DROP

au FileType sql :iabbrev <buffer> cascade CASCADE
au FileType sql :iabbrev <buffer> cas CASCADE

au FileType sql :iabbrev <buffer> unique UNIQUE
au FileType sql :iabbrev <buffer> uni UNIQUE

au FileType sql :iabbrev <buffer> null NULL
au FileType sql :iabbrev <buffer> nul NULL

au FileType sql :iabbrev <buffer> references REFERENCES
au FileType sql :iabbrev <buffer> ref REFERENCES

au FileType sql :iabbrev <buffer> default DEFAULT
au FileType sql :iabbrev <buffer> def DEFAULT

au FileType sql :iabbrev <buffer> true TRUE
au FileType sql :iabbrev <buffer> tru TRUE

au FileType sql :iabbrev <buffer> false FALSE
au FileType sql :iabbrev <buffer> fal FALSE

au FileType sql :iabbrev <buffer> bool BOOL
au FileType sql :iabbrev <buffer> boo BOOL

au FileType sql :iabbrev <buffer> between BETWEEN
au FileType sql :iabbrev <buffer> bet BETWEEN

au FileType sql :iabbrev <buffer> function FUNCTION
au FileType sql :iabbrev <buffer> fun FUNCTION

au FileType sql :iabbrev <buffer> replace REPLACE
au FileType sql :iabbrev <buffer> rep REPLACE

au FileType sql :iabbrev <buffer> index INDEX
au FileType sql :iabbrev <buffer> ind INDEX

au FileType sql :iabbrev <buffer> check CHECK
au FileType sql :iabbrev <buffer> che CHECK

au FileType sql :iabbrev <buffer> constraint CONSTRAINT
au FileType sql :iabbrev <buffer> con CONSTRAINT

au FileType sql :iabbrev <buffer> rls ROW LEVEL SECURITY
augroup END


augroup filetype_dart
au!

au FileType dart nnoremap <leader>df <cmd>DartFmt<cr>
au FileType dart nnoremap <leader>da :cgetexpr system('dart analyze apps/lr_client')<cr>:copen<cr>
au FileType dart nnoremap <leader>dt :!ctags -R .<cr>

au FileType dart nnoremap <leader>iy :let @"=expand('%')<cr>
au FileType dart nnoremap <leader>ip ggOimport '<esc>pa';<esc>0f'apackage:<esc>ld/lib<cr>ciwlr_client<esc>vip:sort<cr>Vip:uniq<cr>:DartFmt<cr>
au FileType dart nnoremap <leader>gf  0f/lyt':find ./apps/lr_client/lib/<c-R>"<cr>

au FileType dart nnoremap <leader>c mqI// <esc>`q 
au FileType dart vnoremap <leader>c :normal 0i// <cr>

au FileType dart nnoremap <leader>bi /Widget build(BuildContext context) {<cr>

au FileType dart :iabbrev <buffer> br ()<left>
au FileType dart :iabbrev <buffer> bc {}<left>
au FileType dart :iabbrev <buffer> bs []<left>
au FileType dart :iabbrev <buffer> ba <><left>
au FileType dart :iabbrev <buffer> brc ({})<left><left>
au FileType dart :iabbrev <buffer> brbc (){}<left>
au FileType dart :iabbrev <buffer> brabc ()async{}<left>
au FileType dart :iabbrev <buffer> fa =>


au FileType dart :iabbrev <buffer> ifb import 'package:flutter_bloc/flutter_bloc.dart';
au FileType dart :iabbrev <buffer> imb import 'package:lr_client/core/widgets/modal_builder/modal_builder.dart';
au FileType dart :iabbrev <buffer> ida import 'package:dartz/dartz.dart' hide id;
au FileType dart :iabbrev <buffer> iad import 'package:lr_client/app_data.dart';
au FileType dart :iabbrev <buffer> iac import 'dart:async';
au FileType dart :iabbrev <buffer> ieq import 'package:equatable/equatable.dart';
au FileType dart :iabbrev <buffer> isl import 'package:lr_client/injection.dart';
au FileType dart :iabbrev <buffer> igm import 'package:google_maps_flutter/google_maps_flutter.dart';
au FileType dart :iabbrev <buffer> ima import 'package:flutter/material.dart';
au FileType dart :iabbrev <buffer> ivo import 'package:lr_client/core/models/common/value_object/value_object.dart';
au FileType dart :iabbrev <buffer> itb import 'package:lr_client/core/table_builder/view/table_builder/table_builder.dart';

au FileType dart :iabbrev <buffer> ret return
au FileType dart :iabbrev <buffer> req required
au FileType dart :iabbrev <buffer> thi this.
au FileType dart :iabbrev <buffer> ea EdgeInsets.all(),<left><left>
au FileType dart :iabbrev <buffer> spa spacing:,<left>
au FileType dart :iabbrev <buffer> goc getOrCrash
au FileType dart :iabbrev <buffer> ini @override initState() { super.initState(); }<esc><esc>
au FileType dart :iabbrev <buffer> maa mainAxisAlignment: MainAxisAlignment.,<left>
au FileType dart :iabbrev <buffer> caa crossAxisAlignment: CrossAxisAlignment.,<left>
au FileType dart :iabbrev <buffer> sbs SizedBox.shrink(),
au FileType dart :iabbrev <buffer> sbs SizedBox.shrink(),
au FileType dart :iabbrev <buffer> wid widget.
au FileType dart :iabbrev <buffer> mbl MultiBlocListener( listeners: [ BlocListener<Bloc, State>( listenWhen: (prev, curr) {}, listener: (context, state) {},), ], child: ChildA(),)

au FileType dart :iabbrev <buffer> lm class Modal extends LongModal { @override Bloc<dynamic, dynamic>? get bloc => null; @override Widget content(BuildContext context) { return Container( color: context.colorScheme.surface, padding: EdgeInsets.all(24), child: ZoneLocations(),); } @override Stream<bool> get isBusyStream => Stream.value(false); @override void popWithValue(BuildContext context) { context.pop(); } @override Widget title(BuildContext context) { return Text('Locations'); } @override LongModalConfiguration configure(BuildContext context) { return LongModalConfiguration(useDefaultContentPadding: false); } }
au FileType dart :iabbrev <buffer> wbb return BlocBuilder<Bloc, State>( builder: (context, state) {return ;},);<left><left><left><left><left>

au FileType dart nnoremap <leader>p yiwoprint('<esc>pa: ${<esc>pa}');<esc>
au FileType dart vnoremap <leader>p yoprint('<esc>pa: ${<esc>pa}');<esc>

au FileType dart nnoremap <leader>fww ebi(child:<esc>f(%a)<esc>%i
au FileType dart nnoremap <leader>fwc ebiColumn(crossAxisAlignment:CrossAxisAlignment.stretch,children:[<esc>f(%a])<esc>
au FileType dart nnoremap <leader>fwr ebiRow(crossAxisAlignment:CrossAxisAlignment.start,children:[<esc>f(%a])<esc>
au FileType dart nnoremap <leader>fwbp ebv/(<cr>%diBlocProvider<Bloc>.value(value: , child: )<esc>P%/:<cr>a
au FileType dart nnoremap <leader>fwbb ebv/(<cr>%diBlocBuilder<Bloc, State>(builder:(context, state){return ;})<esc>hhhp

au FileType dart nnoremap <leader>flrw mt/child:<cr>/(<cr>bvw%d`tebvw%p
augroup END


" netrw
nnoremap - :Lexplore %:p:h<CR>
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
let g:netrw_winsize = 20
" let g:netrw_keepdir = 1
nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <Leader>da :Lexplore<CR>

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
