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

export GOPATH=/Users/$USER/go
export PATH=$GOPATH/bin:$PATH
```
次に端末で`scicka init` とし、client id, client secretを取得するのだが、今現在(2020/03/19)このコマンドでは
ブラウザ上でのログインができない。よって[ここ](https://qiita.com/satackey/items/34c7fc5bf77bd2f5c633)を参考にしてskickaとGoogle ドライブを紐付ける。

