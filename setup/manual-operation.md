# Manual Operation

Powershellなどのコードに落とせない手動オペレーションを記録するテキスト。

## git install

[https://git-for-windows.github.io/](https://git-for-windows.github.io/) から、
最新のインストーラを落とし、インストール。

※初期状態でWindowsサーバのIEはファイルダウンロードデキないので、
[ここ](http://blogs.technet.com/b/jpieblog/archive/2009/06/19/3256750.aspx)
を参考に権限を緩める。

## DSC Server startup

PowerShellコンソールで以下のコマンドを実行。

```
Install-WindowsFeature DSC-Service
```

## 端末特有情報取得＆MOFファイル作成

PowerShellコンソールで以下のコマンドを実行。

```
cd .\setup\powershell
IISConfig.ps1
```

## DSC実行、IISインストール

```
Start-DscConfiguration -ComputerName localhost -Path IISConfiguration -Wait -Verbose -Credential $(Get-Credential)
```

## Jenkinsセットアップ

```
.\jenkins-install.ps1
```

## SQLServer(Express)セットアップ

手動にてインストールします。

### 下準備

[ここ](https://technet.microsoft.com/ja-jp/library/ee210665.aspx)を参考に「ロケール情報を日本に」合わせます。
ランゲージパック系の話は[ここ](http://recipe.kc-cloud.jp/archives/3703)を参照。

次に「サーバマネージャー」から、「役割と機能の追加」で「.NET Framework 3.5」を追加します。
