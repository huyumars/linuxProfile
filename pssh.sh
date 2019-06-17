#!/usr/bin/expect
set timeout 30
spawn ssh -t [lindex $argv 0] " ssh  slc-rnpci-bas01-2047159.stratus.slc.ebay.com"
expect {
        "Password:"
        {send "[lindex $argv 1]\n"}
        "PIN+TAP YUBIKEY"
        {send "[lindex $argv 2]"}
}
interact
