#! /usr/bin/env bash

# 1) test builtin
: ' 
type test
whatis test
which test
'
# 2) [ link to test builtin
: ' 
type [
whatis [
which [
'

# 3) use test (both commands)
# test runs and returns exit code (no output on stdout)

# 3.1) test builtin
: '
    MY_VAR="stefano"
    test $MY_VAR = "stefano"  && echo "They are equals"
  # test $MY_VAR = "stefano2" && echo "They are equals" || echo "They are NOT equals"
'

# 3.2) test alias [ condition ] ATTENTION Leave space between operators
: '
  MY_VAR="stefano"
  #  [ $MY_VAR = "stefano" ]  && echo "They are equals"
   [ $MY_VAR = "stefano2" ]  && echo "They are equals" || echo "They are NOT equals"  
'
