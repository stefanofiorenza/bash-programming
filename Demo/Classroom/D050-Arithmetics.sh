#! /usr/bin/env bash


#1) declare -i
: '
    # as we saw in Variables Demo we can force var to be of type integer with declare
    A=2+2
    echo "A is string by default: A= $A"
     
    declare -i A=2+2
    echo "Now A can be only threated as integer, or will default to zero A= $A"

    A="Stefano" # unparseable into integer, default to zero
    echo $A
'

#2) Declare with let
: '
    # EXPLANATION:
    # declare -i force me to keep always the type to integer 
    # if I want to keep possibility to change A into other type later on
    # then let might be better choice
        
    let A=2+2
    echo $A

    A="Stefano" #Now A is a string
    echo $A
'

#3) Arithmetic Expansion $(( expression ))
: '
    ADD=$(( 1 + 2 ))
    echo $ADD       
    MUL=$(( $ADD * 5 ))
    echo $MUL
    SUB=$(( $MUL - 5 ))
    echo $SUB
    DIV=$(( $SUB / 2 ))
    echo $DIV
    MOD=$(( $DIV % 2 ))
    echo $MOD
'

#4) Expression expr
: '

    # The expr command evaluates expressions and prints the value of provided expression to standard output.
    expr 5 - 3

    # As we saw in Command Demo 
    # is possible to run a shell inside rounded brackets with syntax $(command)
    # and return its value to a variable:     
    FILES_IN_THIS_DIR=$( ls )
    echo $FILES_IN_THIS_DIR;
  
    #Puttin together the 2 above we can write:
    RES= $( expr 5 - 3 )
    echo $RES;
'
  
#5) # Arithmetic Operators (available for both Expansion or $(expr) ):

: '
    # With expr
     expr 5 - 3
     expr 3 + 5
     expr 15 % 3
     expr 5 \* 3    #  symbol * needs to be escaped
     expr 20 / 4


    # With Arithmetic Expansion
    echo $(( 5 - 3))
    echo $((3 + 5))
    echo $(( 15 % 3))
    echo $(( 5 * 3))    #  no need to escape *
    echo $(( 20 / 4))
'

 #6) Logical and Boolean Operators (available for both Expansion or $(expr) ):

    # return either
    # 0 = false
    # 1 = true

: '
    myBoolVar1=$( expr 5 \<= 3 ) #  symbol < needs to be escaped 
    myBoolVar2=$( expr 5 \>= 3 ) #  symbol < needs to be escaped 
    myBoolVar3=$( expr 5 \!= 3 )#  symbol ! needs to be escaped 
    myBoolVar4=$( expr 5 == 3 )
    echo " 5<=3 is false:  $myBoolVar1"       
    echo " 5>=3 is true: $myBoolVar2"      
    echo " 5!=3 is true: $myBoolVar3"      
    echo " 5==3 is false: $myBoolVar4"


    # with Expansion:
    myBoolVar1=$(( 5 <= 3 )) 
    myBoolVar2=$(( 5 >= 3 )) 
    myBoolVar3=$(( 5 != 3 ))
    myBoolVar4=$(( 5 == 3 ))

    echo " 5\<=3 is false:  $myBoolVar1"       
    echo " 5>=3 is true: $myBoolVar2"      
    echo " 5!=3 is true: $myBoolVar3"      
    echo " 5==3 is false: $myBoolVar4" 
'


    #With aritmetic expansion is more readable: (no escapes needed)
: '    
    myBoolVarArithmExpansion=$(( 5 > 3))
    echo  $myBoolVarArithmExpansion
'

