#! /usr/bin/env bash

declare -a FILES
let I=0

for FILE in $(ls) # all file names in this dir 
do
	FILES[$I]=$FILE
    echo ${FILES[$I]}
    I=$I+1  
done

#1) Array Length
echo ${#FILES[@]}

#2) access all ${arrayVar[@]}
echo ${FILES[@]}


#3) access by position ${arrayVar[index]}
echo ${FILES[3]}




