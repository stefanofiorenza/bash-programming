#!/bin/bash


#1) redirection of file into read
: '
read -r rowVarName < example.txt # read 1st line and return exit code 0 if any line available
echo $?

read -r rowVarName < emptyfile.txt # this will exit with 1 (no lines)
echo $? 
'

#2) redirection of file into while (read) 
: '
while read -r rowVarName
do
    echo $rowVarName
done < example.txt
'

#3) Is possible to read each line in tokens setting the IFS separator 

printf '%q\n' "$IFS"

IFS="=" # Internal Field Separator IFS (default <space><tab><newline>)

while read -r key value
do
    echo "key: $key value: $value"
done < keyValueFile.txt
