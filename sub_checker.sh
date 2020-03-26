#!/bin/bash


#!/bin/bash

                   

                                      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"

                                      echo "             _            _                  _               ";
                                      echo "            | |          | |                | |              ";
                                      echo " ___  _   _ | |__    ___ | |__    ___   ___ | | __ ___  _ __ ";
                                      echo "/ __|| | | || '_ \  / __|| '_ \  / _ \ / __|| |/ // _ \| '__|";
                                      echo "\__ \| |_| || |_) || (__ | | | ||  __/| (__ |   <|  __/| |   ";
                                      echo "|___/ \__,_||_.__/  \___||_| |_| \___| \___||_|\_\\___||_|   ";
                                      echo "               ______                                        ";
                                      echo "              |______|                                       ";

                                      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m Coded by @ahmadbrainworks, website:https://ahmadbrain.works"
echo -e "Default \e[39m"





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
echo -e "filename:" && date +%Y-%m-%d-%s.log
mv results.txt  `date +"%Y-%m-%d-%s.log"`


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
echo -e "filename:" && date +%Y-%m-%d-%s.log
mv results.txt  `date +"%Y-%m-%d-%s.log"`
