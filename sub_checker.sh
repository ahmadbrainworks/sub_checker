#!/bin/bash

while read line
  do
    name=$line
echo -e " PAGE TILE: " && timeout 20   wget --quiet -O - $line \
  | sed -n -e 's!.*<title>\(.*\)</title>.*!\1!p'

echo -e "$line Response header" 
   curl -I http://$name --connect-timeout 20
 echo -e "$line DNS and Host records"
 timeout 20    host $name  && nslookup $name
 echo -e " ------------------------------------------------------------------------"   
done < $1 >>  "results.txt"
echo -e "saving file.."
echo -e "filename: /logs" && date +%Y-%m-%d-%s.log
mv results.txt  logs/`date +"%Y-%m-%d-%s.log"`
