#!/bin/zsh

sed "s/PWD/$(pwd | sed 's/\//\\\//g')/g" ./local.auto-dns.plist \
  >~/Library/LaunchAgents/local.auto-dns.plist

echo "Launch Agent successfully installed."
