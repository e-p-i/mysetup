#!/bin/sh

for i in $*;do
  systemctl start $i
done


