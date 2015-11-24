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
IISConfig.ps1
```

