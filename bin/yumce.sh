#!/bin/sh
renice 19 $$
yum clean expire-cache --disablerepo fedora

