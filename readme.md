###  1. �ȉ���clone�B

| windows | C:\conf |
|---------|---------|
| linux   | /var/lib/conf |

###  2. �Z�b�g�A�b�v�X�N���v�g���s�B(���ꂼ��\�[�X�R�����g���Ă���j

| windows | _setup\win_setup.ps1 |
|---------|----------------------|
| linux   | _setup/linux_setup.sh |

###  3. GitBash�Łu_setup/dein_installer.sh $REPO_VIM�v�����s�B
��VIM���uC:\dev\vim\vim80�v�ɃC���X�g�[���ς݂ł��邱�ƁB

> vim : https://github.com/vim/vim-win32-installer/releases

###  4. �R�}���h�v�����v�g��vim���J���B�v���O�C���C���X�g�[���n�܂�A���낢��clone�����B
###  6. $REPO_VIM\repos\github.com\Shougo\vimproc.vim ��GitBash�ňړ�
###  7. 64bit��VIM�Ȃ�umingw32-make -f make_mingw64.mak�v�����s�B32bit�Ȃ�32bit��mak�g���B
###  8. �R�}���h�v�����v�g��vim���J���A�u:call dein#update()�v
###  9. Windows�ł́u$GIT_HOME\etc\bash.bashrc�v�ɁA�ȉ���ǉ�����B
```bash
# System-wide bashrc file
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
```
