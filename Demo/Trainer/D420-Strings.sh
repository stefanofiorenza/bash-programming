#!/bin/bash

var="some text in Var "
varUppercase='SOME TEXT IN UPPER CASE'
formattedString='  %-20s => %-s\n';
alphabet='abcdefghi'
mirror='abcABC123ABCabc'
empty=''
x=3
y=2

########################################################################
######### Quotes and escape chars in echo ###########################
########################################################################

#0) About quoting strings
<< 'QUOTES-IN-BASH'
echo '${var}'  # single quote use all symbols as literals (doesnt run code)
echo  "${var}" # double quote are intepreted as symbols and substitution occurs if needed

# if [ $alphabet \> $var]; then echo '$alphabet > $var  : true '; else echo '$alphabet > $var : false ' ; fi # this will give exception too many parameters
# if [[ $alphabet > $var ]]; then echo '$alphabet > $var  : true '; else echo '$alphabet > $var : false ' ; fi # DOUBLE [[ and no escape on > will work resolving the string with whitespaces
QUOTES-IN-BASH

#0) echo -e enable escape characters (\t \n ..)
<< 'ECHO-ESCAPE'
echo '${var}' "\t" 'another string ' # echo doesnt escape chars (\n, \t, ..) by default....
echo -e '${var}' "\t" 'another string ' # ...It needs -e flag to do so
ECHO-ESCAPE


########################################################################
######### Using Parameter Expansion ${ paramterExpression } #########
########################################################################

#1) String length
<< 'STRING-LENGTH'
echo '${var}' "${var}"   # Value in $var
echo '${var}' "${#var}"  # Length of $var
echo '${empty}' "${empty}"  # Value in $empty
echo '${empty}' "${#empty}"  # Length of $empty
STRING-LENGTH


#2) Case Conversion 
<< 'CASE-CONVERSION'
echo -e 'Value in ${var}:                        ' "\t\t"      "${var}"              # Value in $var
echo -e 'Swap upper/lower case first ${var}:     ' "\t\t"      "${var~}"             # Swap upper/lower case on first char 
echo -e 'Transpose Case for ${var} :             ' "\t\t"      "${var~~}"            # Swap upper/lower case on whole string
echo -e 'Lower case first for ${varUppercase} :  ' "\t\t"      "${varUppercase,}"    # Lower case first
echo -e 'Lower case all for ${varUppercase} :    ' "\t\t"      "${varUppercase,,}"   # Lower case all
echo -e 'Upper case first in ${var}              ' "\t\t"      "${var^}"             # Upper case first
echo -e 'Upper case all ${var}                   ' "\t\t"      "${var^^}"            # Upper case all
CASE-CONVERSION

#3) Extract substring positional # 0-based index
<< 'EXTRACTION'
echo -e 'Extract chars : from 1 to end :          ' "\t" '${alphabet: 1}' "\t\t" "${alphabet: 1}"             # Extract from 1 to end
echo -e 'Extract chars : 3 chars from 1:          ' "\t" '${alphabet: 1: 3}' "\t\t" "${alphabet: 1: 3}"       # Extract 3 chars from 1 to end
echo -e 'Extract chars : from 1 to last-3rd:      ' "\t" '${alphabet: 1: -3}' "\t\t" "${alphabet: 1: -3}"     # Extract chars from 1 to 3 before last
echo -e 'Extract chars : from last-3rd:           ' "\t" '${alphabet: -3}' "\t\t" "${alphabet: -3}"           # Extract chars from last-3rd to end 
echo -e 'Extract chars : from last-3rd 2 chars:   ' "\t" '${alphabet: -3: 2}' "\t\t" "${alphabet: -3: 2}"     # Extract chars : from last-3rd 2 chars: 
echo -e 'Extract chars : index and length as vars ' "\t" '${alphabet:  $x: $y}' "\t\t" "${alphabet:  $x: $y}" # Extract chars : same as above for x=3 and y=2:  
EXTRACTION

#4) Replacement by pattern
<< 'REPLACE-BY-PATTERN'
echo -e 'Normal value for ${mirror}                         '      "\t"     "${mirror}"            # Normal value for $mirror
echo -e 'Replace first abc with xyz ${mirror/abc/xyz}       '      "\t"     "${mirror/abc/xyz}"    # Replace first abc with xyz
echo -e 'Replace all abc with xyz ${mirror//abc/xyz}        '      "\t"     "${mirror//abc/xyz}"   # Replace all abc with xyz
echo -e 'Replace front abc with xyz ${mirror/#abc/xyz}      '      "\t"     "${mirror/#abc/xyz}"   # Replace front abc with xyz
echo -e 'Replace last abc with xyz ${mirror/%abc/xyz}       '      "\t"     "${mirror/%abc/xyz}"   # Replace last abc with xyz
REPLACE-BY-PATTERN


#5) Use expr command
<< 'EXPR-FUNCTIONS'
echo $(expr length $alphabet ) # Length of string
echo $(expr substr $alphabet 3 3) # extract substring
echo $(expr index $alphabet b) # position of char b if any
echo $(expr index $alphabet z) # position of char z NOT FOUND
echo $(expr index $empty a) # position of char z -> Syntax error on empty string
EXPR-FUNCTIONS


#6) string comparisation
<< 'STR-COMPARISATION'
if [[ $alphabet = $alphabet ]] ; then echo '[ $alphabet = $alphabet ]: true ' ; else echo  '[ $alphabet = $alphabet ]: false '; fi
if [[ $alphabet != $alphabet ]]; then echo '[ $alphabet != $alphabet ]: true ' ; else echo  '[ $alphabet != $alphabet ]: false '; fi
if [[ $var == *text* ]]; then echo '[[ $var == *text* ]]: true ' ; else echo  '[[ $var == *text* ]]: false '; fi # partial Match (contains literal case sensitive)
if [[ "$alphabet" > "$var" ]]; then echo '$alphabet > $var  : true '; else echo '$alphabet > $var : false ' ; fi
if [[ "$alphabet" < "$var" ]]; then echo '$alphabet < $var  : true '; else echo '$alphabet < $var : false ' ; fi
if [[ -z "$empty" ]]; then echo '-z "$empty" : true '; else echo '-z "$empty" : false ' ; fi # -z string - True if the string length is zero.
if [[ -n "$empty" ]]; then echo '-n "$empty" : true '; else echo '-n "$empty" : false ' ; fi # -n string - True if the string length is non-zero.
STR-COMPARISATION



#7) regular expression matching
# if [[ "$alphabet" =~  .*bcd.* ]]; then echo '$alphabet ~=*bcd* : true '; else echo '$alphabet ~=*bcd* : false ' ; fi #  string ~= regular expression


# More examples at: http://www.tldp.org/LDP/abs/html/string-manipulation.html

