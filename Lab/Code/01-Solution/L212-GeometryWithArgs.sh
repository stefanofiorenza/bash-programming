#! /usr/bin/env bash

################################################################################
#: Title       : Geometry With Args
#: Date        : 2018-03-04
#: Author      : Stefano Fiorenza
#: Version     : 1
#: Description : Area Calculator for different shapes by Script Args
#: Options     : NONE
################################################################################


SHAPE=$1

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
     exit 1
     ;;
 esac