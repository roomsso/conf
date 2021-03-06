if &compatible
  set nocompatible               " Be iMproved
endif

let g:python3_host_prog = $ANACONDA . '/python'

" Required:
set runtimepath+=$REPO_VIM/repos/github.com/Shougo/dein.vim


" Required:
call dein#begin($REPO_VIM)

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': {'windows': 'mingw32-make', 'linux':'make'}})
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/denite.nvim')
call dein#add('itchyny/lightline.vim')
call dein#add('rking/ag.vim')
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('simeji/winresizer')

" Add or remove your plugins here:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')


call dein#end()

" Required:
filetype plugin indent on
syntax enable

" vimprocを最初にインストール
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif

" 未インストールがあったらインストール
if dein#check_install()
  call dein#install()
endif

let g:winresizer_start_key = '<C-q><C-q>'

if has('win32')
  let g:vimproc_dll_path = $REPO_VIM . '/repos/github.com/Shougo/vimproc.vim/lib/vimproc_win64.dll'
elseif has('win64')
  let g:vimproc_dll_path = $REPO_VIM . '/repos/github.com/Shougo/vimproc.vim/lib/vimproc_win64.dll'
endif
