#!/bin/bash

################################################################################
#: Title       : All Numbers
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Basic counter on given input number
#: Options     : NONE
################################################################################


# Example input on next line
read -p $'Insert a number lower than 50: \n' NUMBER 

if (( $NUMBER > 50))
    then 
    printf "Illegal value. Script will exit";
    exit 1
fi

 printf "Start countdown..  \n"

while (( $NUMBER > 0 ))
do 
    printf "$NUMBER \n"
    let NUMBER=$NUMBER-1  
done