# Windows上にJenkinsの最新をインストールするスクリプト
#
# 前提として「PowerShell-V5」でしか動かない。
# (下位互換を極力考えたが、機能がしょぼすぎて記述がつらすぎる)

#　定数宣言
$WORKDIR = ".\work"
$JENKINS_INST_URL = "http://mirrors.jenkins-ci.org/windows/latest"

# 作業用ディレクトリ作成 & カレント移動
if (Test-Path $WORKDIR) { Remove-Item $WORKDIR -Recurse; }
mkdir $WORKDIR
cd $WORKDIR

# Jenkinsインストーラダウンロード
Invoke-WebRequest -Uri $JENKINS_INST_URL -OutFile .\jenkins.zip
# 解凍
Expand-Archive .\jenkins.zip -DestinationPath ./
# サイレントインストール
# msiexec.exe /i .\jenkins.msi /quiet /l* ./jekins-install.log
#.\Setup.exe /v"/qn"
msiexec /i jenkins.msi /quiet JENKINSDIR="C:\Program Files\Jenkins\"
# TODO が、上記がうまく動かない。
