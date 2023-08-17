#!/bin/zsh

conf="./conf.txt"
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID:/ {print substr($0, index($0, $2))}')
echo "$timestamp: connected to $ssid"

dns=$(grep "$ssid" $conf | sed -E 's/.*:(.*)/\1/')

if [ -z "$dns" ]; then
  echo "$timestamp: no dns config found, using default by DHCP"
  networksetup -setdnsservers Wi-Fi Empty
else
  echo "$timestamp: dns config found, using $dns"
  networksetup -setdnsservers Wi-Fi "$dns"
fi
