#!/bin/sh
str=$*
echo $str




`$str`
while [ ! $? ]
do
  `$str`
done

