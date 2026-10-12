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
au FileType dart :iabbrev <buffer> bre (e)
au FileType dart :iabbrev <buffer> bc {}<left>
au FileType dart :iabbrev <buffer> bs []<left>
au FileType dart :iabbrev <buffer> ba <><left>
au FileType dart :iabbrev <buffer> brc ({})<left><left>
au FileType dart :iabbrev <buffer> brbc (){}<left>
au FileType dart :iabbrev <buffer> brabc ()async{}<left>
au FileType dart :iabbrev <buffer> fa =>
au FileType dart :iabbrev <buffer> brfa ()=>
au FileType dart :iabbrev <buffer> brefa (e)=>
au FileType dart :iabbrev <buffer> brec (e){}<left>


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
au FileType dart :iabbrev <buffer> ipi import 'package:pointer_interceptor/pointer_interceptor.dart';
au FileType dart :iabbrev <buffer> iff import 'package:flutter/foundation.dart';
au FileType dart :iabbrev <buffer> ifs import 'package:flutter/services.dart';
au FileType dart :iabbrev <buffer> iex import 'package:lr_client/core/util/extensions/extensions.dart';
au FileType dart :iabbrev <buffer> iin import 'package:intl/intl.dart';

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
