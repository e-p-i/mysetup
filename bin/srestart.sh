#!/bin/sh

for i in $*;do
  systemctl restart $i
done


