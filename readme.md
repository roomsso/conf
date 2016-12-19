###  1. 以下にclone。

| OS | パス |
|-----|-----|
| windows | C:\conf |
| linux   | /var/lib/conf |

###  2. セットアップスクリプト実行。(それぞれソースコメント見てから）

| OS | スクリプト |
|---------|----------------------|
| windows | _setup\win_setup.ps1 |
| linux   | _setup/linux_setup.sh |

###  3. GitBashで「_setup/dein_installer.sh $REPO_VIM」を実行。
※VIMを「C:\dev\vim\vim80」にインストール済みであること。

> vim : https://github.com/vim/vim-win32-installer/releases

###  4. コマンドプロンプトでvimを開く。プラグインインストール始まり、いろいろcloneされる。
###  5. Cコンパイル環境(Winの場合「MinGW」)があるなら以下実行。なければ「6.」へ。
1. $REPO_VIM\repos\github.com\Shougo\vimproc.vim にGitBashで移動
1. 以下、makeコマンド実行  

| OS | コマンド |
|---------|----------------------|
| windows(x64) | mingw32-make -f make_mingw64.mak |
| windows(x86) | mingw32-make -f make_mingw32.mak |
| linux   | make |

###  6. (「5.」が出来た場合は「7.」へ。) 以下実行。
1. $REPO_VIM\repos\github.com\Shougo\vimproc.vim\lib に以下をコピー  

| OS | ファイル |
|---------|----------------------|
| windows(x64) | _setup\vimproc_win64.dll |
| windows(x86) | なし |
| linux   | なし |

###  7. コマンドプロンプトでvimを開き、「:call dein#update()」
###  8. Windowsでは「$GIT_HOME\etc\bash.bashrc」に、以下を追加する。
```bash
# System-wide bashrc file
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
```
