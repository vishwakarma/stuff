#!/bin/bash

#download and parse files
wget -qO- http://localhost:55555/hosts/ | html2text -width 1000 > parsed_file.txt 

#Remove scrap output from tool
sed -e '1,9d' -e '$d' -i parsed_file.txt
sort -nr -t, -k$1 parsed_file.txt
