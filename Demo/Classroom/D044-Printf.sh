#!/bin/bash


############## printf builtin command for output ##############
# printf FORMAT [ARGUMENT]...
: '
printf "1st message"
printf "2nd message" # printf doesnt go on new line by default
printf "3rd message\n" # Necessary \n escape caracther doesnt go on new line by default
printf "4th message"
'

#1)  printf format symbols

alphabet='abcdefghi'

printf "This is substitution of symbol (%%s) %s  \n" $alphabet
printf "This is substitution of symbol (%%.5s) %.5s \n" $alphabet # will print abcde
printf "This is substitution of symbol (%%.3s) %.3s \n" $alphabet # will print abc
printf "This is substitution of symbol (%%-20s) %-20s inside a longer text \n" $alphabet # %-N var will be substitute by a 20 chars string (padding if necessary)
printf "This is substitution of symbol (%%d) %d inside a longer text \n" 100 # symbol d for integer in decimal format
printf "This is substitution of symbol (%%f) %f inside a longer text \n" 100.1234567 # symbol f for float (default precision is 6) rounded here
printf "This is substitution of symbol (%%.3f) %.3f inside a longer text \n" 100.1234567 # Float precision could be defined (3) in this case
printf "This is substitution of symbol (%%b) %b this will go on next line \n" "string \t with escaped (tab) interpreted \n"
printf 'this will go to a variable not printed ' -v varname
echo "$varname printed by echo "


#More resources:
# 
#  https://www.computerhope.com/unix/uprintf.htm
#  https://wiki.bash-hackers.org/commands/builtin/printf