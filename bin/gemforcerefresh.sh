#!/bin/sh
renice -n 10 $$

gem list|egrep -o '.* \('|egrep -o '.* '|xargs gem install --no-ri --no-rdoc

