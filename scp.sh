#!/usr/bin/expect
set timeout 30
spawn scp -r -P [lindex $argv 0] [lindex $argv 4] [lindex $argv 1]@[lindex $argv 2]:[lindex $argv 5]
expect {
        "(yes/no)?"
        {send "yes\n";exp_continue}
        "password:"
        {send "[lindex $argv 3]\n"}
}
interact
