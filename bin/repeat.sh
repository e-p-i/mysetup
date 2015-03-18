#!/bin/dash

sec=

[ $1 -gt 0  ] 2>/dev/null && sec=$1 && shift

str=$*

while true;do
  $str
  [ $sec ] && sleep $sec
done

