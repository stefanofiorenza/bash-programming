#!/bin/bash

previousIFS=$IFS
printf '%q\n' "$IFS"

IFS=","
CURRENT_LINE=''
LINE_N=0

touch Cars.Json

while read -r id car price
do   
    let LINE_N=$LINE_N+1

    if (( $LINE_N==1 ))
    then
        continue # skip headers 
    fi

    if (( $LINE_N==2 ))
    then
         CURRENT_LINE="{\n \"car\": \"$car\",\n  \"price\":$price \n}"  # 1st record has no comma 
    else
      CURRENT_LINE=$CURRENT_LINE",{\n \"car\": \"$car\",\n  \"price\":$price \n}" # 2nd to nth record start with comma        
    fi
done < Cars.csv

IFS=$previousIFS # need to restore it to default. Otherwise echo will skip , symbol in its output
echo -e "["$CURRENT_LINE"]" >> Cars.Json