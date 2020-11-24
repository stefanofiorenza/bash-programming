#! /usr/bin/env bash


#1) read can get many parameters on same line
: '
echo "insert 5 numbers separated by space"
read a b c d e
echo "Inserted a:$a b:$b c:$c d:$d e:$e "
'

#2) read -a reads all input in one array
: '
echo "insert N numbers separated by space"
read -a INPUT_IN_ARRAY 
i=0
for ELEMENT in ${INPUT_IN_ARRAY[@]}
do
    let i=$i+1
    echo "line $i: $ELEMENT" 
done
'

#3) read and some flags
: '
#
#  Waiting for the user to press any key
#    -n 1: one character is enough
#    -s  : suppress echoing the key that was pressed
#    -p  : What should be prompted
#

echo "program was doing something useful, but now will wait for user input to terminate"
read -n 1 -s -p "Press any key to continue"
'



