#!/bin/sh

for i in $*;do
  systemctl stop $i
done


