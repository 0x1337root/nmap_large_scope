#!/usr/bin/env sh

nmap -sn -iL "$1" -oA alive && cat alive.gnmap | cut -d " " -f2 | tee alive-cleaned.txt && nmap -O -A -p- --script vuln --reason --open -oA "$2" --stylesheet=/usr/share/nmap/nmap.xsl -iL alive-cleaned.txt && rm alive.gnmap alive.nmap alive.xml
