#!/bin/dash

for i in $*;do
  plist=$(pgrep -d, "$i")
  if [ $plist ];then
    ps -Fp $plist
  else
    echo no such process  '"'$i'"'
  fi
done

