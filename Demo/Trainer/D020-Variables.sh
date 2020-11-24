#! /usr/bin/env bash

# 1) DECLARATION & INITIALIZATION
<< 'VAR-INIT-SECTION'

# Uppercase by convention
# Letters, numbers, underscores
# ATTENTION!!! no spaces allowed before and after (=) symbol in assignment

    # Legit names
    NAME="Stefano" 
    NAME_SINGLE_QUOTE='Stefano-SQ'
    NAME1='Stefano-1'
    _NAME_SINGLE_QUOTE='StartWithUnderscore-Stefano-1'

    # Illegal names (17 -23 reported in standard error):
    1NAME="Stefano" # can't start with number
    $NAME="Stefano" # can't start with symbols other than underscore
    %NAME="Stefano" # can't start with symbols other than underscore
    NAME= "Stefano" # Illegal space after = symbol
    NAME = "Stefano" # Illegal space before and after = symbol
    NAME ="Stefano" # Illegal space before = symbol
    NAME$SURNAME ="Stefano" # Illegal $ symbol
  
# echo prints on the terminal shell (more on this on InputOutput demo)
# Everything after echo is threated as string, but there quotes are working in a different way:

    echo "My name is $NAME"
    echo "My name is ${NAME}"
    echo 'My name is ${NAME}' # this will not substitute var with value
    echo My name is $NAME
VAR-INIT-SECTION

# 2) ALL VARS ARE STRING BY DEFAULT:
: '
    MY_VAR=1
    MY_VAR=$MY_VAR+1 # var is substitute with value, but operation doesnt happen
    echo $MY_VAR
'

# 3) declare -i for var to be used as integer

: '
    declare -i MY_VAR  # The script will treat subsequent occurrences of MY_VAR as an integer.
   
    MY_VAR=3
    echo "MY_VAR = $MY_VAR"     # MY_VAR = 3

    MY_VAR=three
    echo "MY_VAR = $MY_VAR"     # Tries to evaluate the string "three" as an integer. Doesnt manage then MY_VAR=0
  

    MY_VAR="3+3"
    echo "MY_VAR = $MY_VAR"     # this will succeed 6
'


# 4) declare -r for Constant (readonly var)
: '
    declare -r MY_CONST=5

    echo $MY_CONST;
    MY_CONST=11 # here I will get a message on standard error
    echo $MY_CONST; # value is still 5
'