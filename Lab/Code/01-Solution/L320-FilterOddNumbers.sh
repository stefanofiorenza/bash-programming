#!/bin/bash

################################################################################
#: Title       : Filter Odd Numbers
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Filter only ODD numbers
#: Options     : NONE
################################################################################


# Example input on next line
read -p $'Insert a number lower than 50: \n' NUMBER 

if (( $NUMBER > 50))
    then 
    printf "Illegal value. Script will exit";
    exit 1
fi


 printf "Numbers filtered:  \n"
 printf "$NUMBER \n" # First one we print out from loop

while (( $NUMBER > 0 ))
do 

    let NUMBER=$NUMBER-1  

    if (( $NUMBER % 2 == 0))
    then 
        continue
    fi

    printf "$NUMBER \n"   
done