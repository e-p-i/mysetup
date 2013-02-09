#!/bin/sh
/sbin/service polipo stop
rm -f /var/run/polipo/polipo.pid
/sbin/service polipo start

