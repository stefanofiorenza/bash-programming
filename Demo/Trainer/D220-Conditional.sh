#! /usr/bin/env bash

#1. If Block (No Else)
: '
PROCEED=YES
if [ "$PROCEED" = "YES" ]
then
    echo "Performing task..."
fi
'


#2. If-Else-If
# See other comparison operators https://www.shellscript.sh/quickref.html

: ' 
VALUE=-10
if [ "$VALUE" -lt 0 ]; then
    echo "VALUE is less than 0"
elif [ "$VALUE" -eq 0 ]; then
    echo "VALUE is 0"
else
    echo "VALUE is greater than 0"
fi
'	

	
#3. Conditions and Boolean operators (&& || !)
: '
VALUE=10
if [ $VALUE -ge 1 && $VALUE -le 10 ]; then
    echo "VALUE is in interval"
else
    echo "VALUE is NOT in interval"
fi
'




# 4. Nested:
: '
VALUE=10

if [ "$VALUE" -lt 0 ]; then
    echo "VALUE is less than 0"
else
    echo "VALUE is greater than 0"
    if [ "$VALUE" -le 10 ]; then
        echo "VALUE is less than or equal to 10"
    else
        echo "VALUE is greater than 10"
    fi # end of nested if block
fi # end of parent if block
'

#5. Conditional
# (Better version of test) Double brackets use a keyword instead of builtin (new process) 
: '
VALUE=8

if [[  $VALUE -gt 1 ]]  &&  [[ $VALUE -le 10 ]] 
then
    echo "VALUE in interval"
else
    echo "VALUE out of interval"  
fi # end of parent if block
'

#6. Conditional with Arithmetic Expression Rounded Brackets (( ))
: '
VALUE=12

if ((  $VALUE >= 1  &&  $VALUE <= 10  ))
then
    echo "VALUE in interval"
else
    echo "VALUE out of interval"  
fi # end of parent if block
'

# MORE RESOURCES:
# See https://tldp.org/LDP/abs/html/comparison-ops.html
# File test operators https://tldp.org/LDP/abs/html/fto.html