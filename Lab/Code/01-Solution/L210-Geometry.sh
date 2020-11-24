#! /usr/bin/env bash

################################################################################
#: Title       : Geometry
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Area Calculator for different shapes
#: Options     : NONE
################################################################################


read -p $'Please Choose R-Rectangle or S-Square \n' SHAPE 

case $SHAPE in 
   [Rr])
     read -p $'Insert Width \n' WIDTH 
     read -p $'Insert Height \n' HEIGHT 
     echo "Area is "$(($WIDTH * $HEIGHT)) 
     ;;
   [Ss])
      read -p $'Insert Edge: \n' EDGE
      echo "Area is "$(($EDGE*$EDGE)) 
     ;;
   *)
     echo "Illegal selection"
     ;;
 esac