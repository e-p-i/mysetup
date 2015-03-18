#!/bin/sh

for i in $*;do
  systemctl reload $i
done


