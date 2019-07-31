#!/bin/bash

oldpassword=$1
newpassword=$2

for i in `cat serverip.txt`

do
echo "ssh to $i via root user."
ip=$i
  
/usr/bin/expect <<FLAGEOF

set time 30
spawn ssh root@$ip
expect {
  "*yes/no*" {send "yes\r"; exp_continue}
  "*password:*" {send "${oldpassword}\r"}
}

expect "*#"
send "export LANG=en\r"
expect "*#"
send "passwd\r"
expect "*password:"
send "${newpassword}\r"
expect "*password:"
send "${newpassword}\r"
expect "*#"
send "exit\r"

interact
expect FLAGEOF
FLAGEOF

echo "modified root's password of $i."

done
