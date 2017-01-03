<#** 
  powershellを管理者権限で立ち上げ、「Set-ExecutionPolicy RemoteSigned」で権限つけてから実行。
  以下を上書きするので注意。
   $HOME\.vimrc
   $HOME\.bashrc
   $HOME\.bash_profile
#>
# 環境変数追加
function setEnv($key, $val){
 $oldenv = [System.Environment]::GetEnvironmentVariable($key)
 if( -! $oldenv) {
    [System.Environment]::SetEnvironmentVariable($key,$val, [System.EnvironmentVariableTarget]::Machine)
 } elseif($val -ne $oldenv) {
    echo ($key + "は設定されています。 : " + $oldenv)
 }
}

#ディレクトリ作成
function mkdirIfNonExists($path){
    if($path -and -! (Test-Path $path)) { mkdir $path }
}

setEnv "VIMHOME" "C:\dev\vim\vim80"
setEnv "CONF" "C:\conf"
setEnv "CONF_VIM" "C:\conf\vim"
setEnv "REPO" "C:\repo"
setEnv "REPO_VIM" "C:\repo\vim"
setEnv "ANACONDA" "C:\dev\Anaconda3"

mkdirIfNonExists $env:CONF
mkdirIfNonExists $env:CONF_VIM
mkdirIfNonExists $env:REPO
mkdirIfNonExists $env:REPO_VIM

cp $env:CONF\_setup\.vimrc $HOME
cp $env:CONF\_setup\_bash_profile_win $HOME\.bash_profile
cp $env:CONF\_setup\_bashrc_win $HOME\.bashrc
cp $env:CONF\_setup\_gvimrc $HOME