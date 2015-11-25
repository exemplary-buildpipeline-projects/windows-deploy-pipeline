# Windows上にJenkinsの最新をインストールするPowerShellスクリプト
#
# PowerShellV4を期待(Expand-Archive なんてもっと前からつけとけよ！)
# パッケージ管理 chocolatey 経由でインストールする。(自力を断念)
# ※おそらく、2015/12 付近でしか動かない。(Pluginの名前などがこの時点基準であるため)

# 定数
$JENKINS_URL = "http://localhost:8080"
$JENKINS_HOME = "C:\Program Files\Jenkins"
$DEFAULT_ZIP = ".\default_setting_and_jobs.zip"

# 実処理

# chocolatey 自体をインストール
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Jenkinsインストール
choco install jre8
choco install jenkins

# JekinsCLIを使って、必要と思われるPluginを入れる。

# Jenkins自体からjenkins-cli.jarを吐き出させる(PowerShellのそうとう古いやつでもいけるwget構文)
$client = new-object System.Net.WebClient
$client.DownloadFile( "$JENKINS_URL/jnlpJars/jenkins-cli.jar", "$pwd\jenkins-cli.jar" )

# Pluginインストール
# TODO java -jar jenkins-cli.jar -s $JENKINS_URL install-plugins pluginNameA pluginNameB pluginNameC...
# FIXME ここはあとで再起動するからいらない…かも？ java -jar jenkins-cli.jar -s $JENKINS_URL safe-restart

# 本体の設定 & ジョブの設定をZIPから展開し、インストールディレクトリにかぶせる & 再起動
Expand-Archive -Path $DEFAULT_ZIP -DestinationPath $JENKINS_HOME -Force
java -jar jenkins-cli.jar -s $JENKINS_URL safe-restart
