
# Windows上にFIrefoxの最新をインストールするPowerShellスクリプト
#
# PowerShellV5を期待(Expand-Archive なんてもっと前からつけとけよ！)
# ここから、msiを落とし、インストール : https://www.microsoft.com/en-in/download/confirmation.aspx?id=48729
# パッケージ管理 chocolatey 経由でインストールする。(自力を断念)
# ※おそらく、2015/12 付近でしか動かない。(Pluginの名前などがこの時点基準であるため)

# 定数

# 実処理

# chocolatey 自体をインストール
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Firefoxインストール
choco install firefox --force

