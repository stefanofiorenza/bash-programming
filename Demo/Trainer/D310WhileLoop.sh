#! /usr/bin/env bash

### SYNTAX: 

#   while [ condition ]
#   do
#       command1
#       command2
#       command3
#   done


#   
#   while [ condition ]; do commands; done
#

#1) While loop:
: '
COUNTER=0
while [  $COUNTER -lt 10 ]; do
    echo The counter is $COUNTER
    let COUNTER=COUNTER+1 
done
'



#2) With Arithmetic Expansion:
: '
COUNTER=0

while ((  $COUNTER < 10 )); do
    echo The counter is $COUNTER
    let COUNTER=COUNTER+1 
done
'


#3) While .. break (alternative exit condition)
: '
FLAG=0
while [ $FLAG -eq 0 ]
do
	read -p "Enter two numnbers separated by space ( - 1 to quit ) : " a b
	if [ $a -eq -1 ]
	then
		break
	fi
	SUM=$(( a + b ))
	echo "Sum is "$SUM
done
'


#4) While .. continue (skip this cycle) ..break 
: '

FLAG=100
while [ $FLAG -ge 0 ]
do
    let FLAG=FLAG-1

    if (( $FLAG % 2 != 0 ))
    then
        #echo " Odd number "
		continue
	  fi

    if [ $FLAG == 10 ]
         then 
         # echo " Found 10"
         break
    fi

    echo "FLAG is "$FLAG
done

'

