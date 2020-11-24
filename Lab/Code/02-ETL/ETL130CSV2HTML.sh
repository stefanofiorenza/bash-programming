#!/bin/bash

previousIFS=$IFS
printf '%q\n' "$IFS"

IFS=","
CURRENT_LINE=''
LINE_N=0

rm ./Cars.html
touch Cars.html

HTML_TABLE='\n<table border="1">\n\t<tr><th>Id</th><th>Car Model</th><th>Price</th></tr>\nTABLE_CONTENT</table>'
HTML_BODY='<html>\n<head><title>some Title</title></head>\n<body>\n'"$HTML_TABLE"'\n</body>\n</html>'

while read -r id car price
do   
    let LINE_N=$LINE_N+1

    #echo -e $CURRENT_LINE
    if (( $LINE_N==1 ))
    then
        continue
    else
      CURRENT_LINE=$CURRENT_LINE"\t<tr><td>$id</td><td>$car</td><td>$price</td></tr>\n"
    fi

    #if (( $LINE_N==5 ))
    #then
    #   break    
    #fi

done < Cars.csv
IFS=$previousIFS # need to restore it to default. Otherwise echo will skip , symbol in its output

#CURRENT_LINE='Hello'
HTML_BODY=${HTML_BODY/TABLE_CONTENT/${CURRENT_LINE}}
echo -e $HTML_BODY >> Cars.html