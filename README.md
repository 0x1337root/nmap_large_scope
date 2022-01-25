# nmap_large_scope

## This is a one-liner tool for nmap large scope scan.
It runs `nmap -sn -iL <scope.txt> -oA alive && cat alive.gnmap | cut -d " " -f2 | tee alive-cleaned.txt && nmap -O -A -p- --script vuln --reason --open -oA <report_name> --stylesheet=/usr/share/nmap/nmap.xsl -iL alive-cleaned.txt && rm alive.gnmap alive.nmap alive.xml` commands.
<br><br>This commands is hard to remember and write so I make this basic tool for only type<br> `./nmap_large_scope.sh <arg1> <arg2>`
<br><br> This exports reports 3 main formats at the end of the runtime.
## Installation
1. `git clone https://github.com/0x1337root/nmap_large_scope.git`
2. `cd nmap_large_scope`
3. `chmod +x nmap_large_scope.sh`
## Usage
* `./nmap_large_scope.sh <scope.txt> <report_name>`
