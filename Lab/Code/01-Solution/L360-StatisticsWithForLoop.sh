#!/bin/bash

################################################################################
#: Title       : Statistics with For Loop
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Area Calculator for different shapes
#: Options     : NONE
################################################################################


read -p $'How many numbers you want to enter?: \n' HOW_MANY 

read -p $' Insert Number \n' CURRENT 
let MAX=$CURRENT;
let MIN=$CURRENT;
let SUM=$CURRENT;
let AVG=$CURRENT;

for ((COUNTER=$HOW_MANY;  COUNTER>1; COUNTER=$COUNTER-1 )) 
do 
   read -p $' Insert Number \n' CURRENT 

    if (( $CURRENT < $MIN ))
    then 
        MIN=$CURRENT
    fi

    if (( $CURRENT > $MAX ))
    then 
        MAX=$CURRENT
    fi

    let SUM=$SUM+$CURRENT    
done

printf "Max is %s \n" $MAX
printf "Min is %s \n" $MIN
printf "SUM is %s \n" $SUM


# printf %.3f "$((10**9 * 100/3))e-9"
printf "AVERAGE is "
printf %.3f "$(( 10**9 * $SUM/$HOW_MANY ))e-9"
printf "\n"
