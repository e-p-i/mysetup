#!/bin/sh
#LANG=C;export LANG
renice 10 $$ 2&>/dev/null
while [ "$1" != "" ]
do
  case "$1" in
    *.tar.gz|*.tgz)
      tar xzvf "$1"
      ;;
    *.tar.bz2|*.tbz)
      tar xjvf "$1"
      ;;
    *.zip|*.ZIP|*.Zip)
      ~/bin/unzip932.pl "$1"
      ;;
    *.lzh|*.LZH)
      lha -x "$1"
      ;;
    *)
      echo "$1" 'is not in patterns!'
      ;;
  esac
  shift
done

