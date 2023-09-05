# macos-auto-dns
Set your DNS server based on the SSID of your network

After MacOS removed the support to save dns servers based on your current profile, this repository contains somewhat of a fix for that.
It listens to wifi changes and updates the dns accordingly.

## Installation

This repo contains an installation script, just run it with `./install.sh`.
Edit `conf.txt` with SSID:DNS pairs you want to set.

If your current WiFi doesn't fit with any given SSID, it uses the default set by your system (or DHCP).
