#! /usr/bin/env bash

#
# case expression in
#    pattern1 )
#        statements ;;
#    pattern2 )
#        statements ;;
#    ...
#esac

# EXPLANATION:

    # Case statement first expands the expression and tries to match it against each pattern.
    # - When a match is found all of the associated statements until the double semicolon (;;) are executed.
    # - After the first match, case terminates with the exit status of the last command that was executed.
    # - If there is no match, exit status of case is zero.



# EXAMPLES:

# 1) Basic example
: '
 read  -p $'Insert a numner between 1 and 3 \n ' NUMBER

case $NUMBER in 
    1) echo "Entered 1 ";;
    2) echo "Entered 2 ";;
    3) echo "Entered 3 ";;
    *) echo "Illegal value"
esac
 '



# 2) More cases in pattern using || operator and wildcard (*)
: '
 read -p "Are you 21 or over? Y/N " ANSWER
 case "$ANSWER" in 
   [yY] | [yY][eE][sS])
     echo "You can have a beer :)"
     ;;
   [nN] | [nN][oO])
     echo "Sorry, no drinking"
     ;;
   *)
     echo "Please enter y/yes or n/no"
     ;;
 esac
 '



