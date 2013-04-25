#!/usr/bin/ruby -w
##To check the raid card battery status of HP Server
## Luis R. Lavina Jr.

batstat = `sudo /usr/sbin/hpacucli ctrl all show detail | grep -i "Capacitor Status"`

if batstat.split[2] != "OK" then
  puts "NOTOK"
else 
  puts "OK"
end 





