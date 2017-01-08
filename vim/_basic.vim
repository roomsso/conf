"----------------------------------------------
"  基本設定
"----------------------------------------------
syntax on
set nobackup             " バックアップ取らない  
set noswapfile           " スワップファイル作らない
set autoread             " 他で書き換えられた自動で読み直す
set incsearch            " インクリメントサーチ
set wrapscan             " 最後まで検索したら先頭に戻る
set clipboard+=unnamed   " OSのクリップボードを使用
set clipboard=unnamed    " ヤンクした文字は、システムのクリップボードへ
set tabstop=4            " タブ表示幅
set shiftwidth=4         " タブ挿入幅
set history=200          " 履歴数
set encoding=utf-8       " 文字コード
set hidden               " 未保存のファイルがあっても別ファイル開ける
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
" set fileformats=unix,dos,mac
set fenc=utf-8

"----------------------------------------------
"   表示
"----------------------------------------------
set hlsearch          " 検索文字列ハイライト
set cursorline        " カーソルライン有効化
"highlight CursorLine  cterm=underline ctermbg=NONE
set shortmess+=I      " 起動時のスプラッシュ表示しない
set number            " 行番号表示
set showmatch         " 括弧の対応をハイライト
set list              " 不可視文字表示
set listchars=tab:^\  
set shellslash        " Winでパス区切りに/を使えるように
" set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set laststatus=2      " 末尾から2行目にステータスラインを常に表示

" if !has("gui_running")
	" set t_Co=256
" endif

"----------------------------------------------
"   キーマップ
"----------------------------------------------

nmap <ESC><ESC> :nohlsearch<CR><ESC>
nmap <F6>   :bnext<CR>
nmap <S-F6> :bprevious<CR>

"----------------------------------------------
"   denite キーマップ
"----------------------------------------------
nnoremap [denite] <Nop>
nmap <C-u> [denite]

nnoremap <silent> [denite]<C-u> :<C-u>Denite file_mru<CR>
nnoremap <silent> [denite]<C-g> :<C-u>Denite grep<CR>
nnoremap <silent> [denite]<C-f> :<C-u>Denite file_rec<CR>
nnoremap <silent> [denite]2 :<C-u>Denite buffer<CR>
nnoremap <silent> [denite]3 :<C-u>Denite<Space>bookmark<CR>
nnoremap <silent> [denite]f :<C-u>DeniteBufferDir -buffer-name=files file<CR>
nnoremap <silent> [denite]d :<C-u>Denite directory_mru<CR>

call denite#custom#var('file_rec', 'command', ['pt', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['pt', '--nogroup', '--nocolor', '--smart-case'])
call denite#custom#var('grep', 'default_opts', [])
call denite#custom#var('grep', 'recursive_opts', [])

"----------------------------------------------
"   vimshell キーマップ
"----------------------------------------------
nnoremap   [vimshell] <Nop>
nmap <C-q> [vimshell]

nnoremap <silent> [vimshell]py  :VimShellInteractive python<CR><ESC><C-w><C-w>
nnoremap <silent> [vimshell]l   <S-v>:VimShellSendString<CR>
vmap     <silent> t             :VimShellSendString<CR>
nnoremap <silent> [vimshell]e   :VimShellClose<CR>

"----------------------------------------------
"  emmet
"----------------------------------------------
" source $HOME/.vim/bundle/webapi-vim/autoload/webapi/json.vim
"let g:user_emmet_leader_key='<c-e>'
"let g:user_emmet_settings=webapi#json#decode(join(readfile(expand('$HOME/dotfiles/_snippets_custom.json')), "\n"))

