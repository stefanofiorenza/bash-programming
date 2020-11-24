#! /usr/bin/env bash

################################################################################
#: Title       : Calculator
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Calculator for basic operation
#: Options     : NONE
################################################################################


read -p $'Insert First number \n' OP1 
read -p $'Insert Second number \n' OP2
read -p $'Insert Operator \n' OPERATOR

case $OPERATOR in 
   [+])
     printf "Result is "$(($OP1 + $OP2))" \n" 
     ;;
   [-])
       printf "Result is "$(($OP1 - $OP2)) " \n"
     ;;
   [*])
       printf "Result is "$(($OP1 * $OP2))" \n" 
        ;;
   [/])
      printf "Result is %.3f\n" "$((10**3 * $OP1 / $OP2))e-3"
      
        ;;
   *)
     printf "Illegal selection"
     ;;
 esac