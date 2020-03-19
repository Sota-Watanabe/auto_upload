#!/bin/bash

function usage() {
cat <<_EOT_
Usage:
  $0 [-p pathname] arg1 ...

Description:
  ディレクトリをzipし、googleドライブにアップロードする

Options:
  -p    アップロードのパスを指定する
  -h    ヘルプを参照する

_EOT_
exit 1
}

ARG_P='./'

if [ "$OPTIND" = 1 ]; then
  while getopts p:h OPT
  do
    case $OPT in
      p)
        ARG_P+=$OPTARG
        # echo "ARG_P is $ARG_P"              
        ;;
      h)
        echo "h option. display help"       
        usage
        ;;
      \?)
        echo "Try to enter the h option." 1>&2
        ;;
    esac
  done
else
  echo "No installed getopts-command." 1>&2
  exit 1
fi

shift `expr $OPTIND - 1` # オプション部分を切り捨てる。

export GOPATH=/Users/$USER/go
export PATH=$GOPATH/bin:$PATH

zip -r $1.zip $1
skicka upload $1.zip $ARG_P
