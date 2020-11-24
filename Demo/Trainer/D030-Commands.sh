#! /usr/bin/env bash

: '
WHAT ARE COMMANDS? 

   EXE BINARY
   • An executable program like all those files we saw in /usr/bin. Within this
   category, programs can be compiled binaries such as programs written in
   C and C++, or programs written in scripting languages such as the shell,
   Perl, Python, Ruby, and so on.

  SHELL  COMMAND BUILT IN
   • A command built into the shell itself. bash supports a number of commands
   internally called shell builtins. The cd command, for example, is a
   shell builtin.

   SHELL FUNCTION
   • A shell function. Shell functions are miniature shell scripts incorporated
   into the environment. 

   ALIAS
   • An alias. Aliases are commands that we can define ourselves, built from
   other commands.
'




#1) Commands can be of different type:
   # type cd;

#2) Is possible to get the path to the command for binaries:
   # which ls;
   # man ls; # manual for command
   # whatis ls; # header description from man
   # whereis ls # path to bin and to manual

#3) Commands might run with args
  #  ls -lh # file names in directory with details (l) and humand readable size (h)

#4) Script too takes optional args
   # echo $0 $1 $2 # scriptName arg1 arg2
   # echo $0 $* # scriptName allArgs 
   # echo $# #number of args

   # See https://www.javatpoint.com/shell-script-parameters

#5) Script can give an exit code (otherwise will default to zero)
: '
   echo stefano; 
   echo "this shell script worked without problems so far..";
   echo "Something bad happens here...I will return exit 1";  exit 1;
'

#6) every command returns an exit state:
   # exit 0 = true 
   # exit (any number other than zero) means command was failing returning a non-zero error code.
: '
    echo "whatever message"; # this will return exit 0
    echo "Previous command ended with $? exit code";  # is possible to retrieve last command exit code with special var $?
'

#7) using this feature is possible to concatenate commands 
: '
   echo "this will succeed" && \
   grep "a random string" this_file_doesnt_exist.txt  && \
   echo "previous failed (exit != 0) . So you will never read this"; # this will not execute because previous was exit !=0

   echo "when a command fails you will read a standard-error message, but script doesnt stop";
'


#8) using this feature is possible to concatenate commands 
# - The && token chains the commands executing what is on the right if and only if the instruction on the left had an exit status of zero.
# - The || token, chain the commands executing what is on the right if and only if the instruction on the left had an exit status different from zero.

: '
 ( echo "Here 1"; exit 1 ) \
    && ( echo "Here 2" ) \
    && ( echo "Here 3" ) \
    || ( echo "Here 4"; exit 4 ) \
    && ( echo "Here 5"; exit 5 ) \
    || ( echo "Here 6"; exit 6 ) \
    || ( echo "Here 7"; exit 0 ) \
    && ( echo "Here 8" ) 
'
 
#9) Is possible to run a (miniscript) inside brackets and assign its output to a variable
: '
    FILES_IN_THIS_DIR=$( ls )
    echo $FILES_IN_THIS_DIR;
'


