# auto_upload
一定期間ごとにディレクトリをバックアップするシェルスクリプト

## 詳細
引数から指定したディレクトリをzipで圧縮し、Googleドライブにアップロードする。
## 使用手順
これはGo言語を利用できる環境を前提とする。

このスクリプトはskickaというGoogleドライブのCLIツールを用いる。
そのため、まずskickaを利用できるよう環境を整える。
```
go get github.com/google/skicka
go build github.com/google/skicka
```
