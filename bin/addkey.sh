#!/bin/sh

expect -c "
spawn ssh-add ~/.ssh/id_rsa__
expect \"Enter passphrase for ~/.ssh/id_rsa__: \"
send \"EXAMPLE_PASSWORD\n\"
puts \r

sleep 0.1
puts end
"

