#!/usr/bin/expect
set timeout 30
spawn ssh [lindex $argv 0]
expect {
        "Password:"
        {send "[lindex $argv 1]\n"}
        "PIN + TAP YUBIKEY:"
        {send "[lindex $argv 2]"}
}
interact
