#! /usr/bin/env bash

###  Arithmetic with floating point:
###  Bash doesnt support arithmetic with floating points

#1) Arithmetic Expansion works only on integers:
: '
    echo $((100/3)) #  will yeld 33 (decimals are lost)
'

#2) How to solve it without external tools or other languages:
: '

# One of the way to solve this is to use printf command using power of 10 and formatting:
# printf %.<precision>f "$((10**<multiplier> * 100/3))e-<multiplier>"

printf %.3f "$((10**9 * 100/3))e-9" #precision=3 multiplier=9
'


### To better understand it let's break it in more steps:

# 2.1) Precision
: '
    printf %.3f "33.3333333333333" # we choose to add only 3 decimals after dot
'

# 2.2) Multiplier 
: '

#  multiplier should be >= precision
# printf %.3f "$((10**2 * 100/3))e-2" # this will loose 3rd decimal

# printf %.3f "$((10**8 * 100/3))e-9" # wrong result !  multiplier in inconsistent in 10 power and e notation

# printf %.3f "$((10**9 * 100/3))e-9" # this one will work multiplier>precision and consistent in 10 exponents and e notation


#  See more here:
#  https://www.shell-tips.com/bash/math-arithmetic-calculation/

'
