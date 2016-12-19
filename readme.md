###  1. 以下にclone。

| windows | C:\conf |
|---------|---------|
| linux   | /var/lib/conf |

###  2. セットアップスクリプト実行。(それぞれソースコメント見てから）

| windows | _setup\win_setup.ps1 |
|---------|----------------------|
| linux   | _setup/linux_setup.sh |

###  3. GitBashで「_setup/dein_installer.sh $REPO_VIM」を実行。
※VIMを「C:\dev\vim\vim80」にインストール済みであること。

> vim : https://github.com/vim/vim-win32-installer/releases

###  4. コマンドプロンプトでvimを開く。プラグインインストール始まり、いろいろcloneされる。
###  6. $REPO_VIM\repos\github.com\Shougo\vimproc.vim にGitBashで移動
###  7. 64bitのVIMなら「mingw32-make -f make_mingw64.mak」を実行。32bitなら32bitのmak使う。
###  8. コマンドプロンプトでvimを開き、「:call dein#update()」
###  9. Windowsでは「$GIT_HOME\etc\bash.bashrc」に、以下を追加する。
```bash
# System-wide bashrc file
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
```
