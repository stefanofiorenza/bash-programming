#! /usr/bin/env bash

#1) Comment
 # this is a comment and will be not executed by shell interpreter


# Bash doesnt really support multiline comment.
# Those 2 are some kind of hacks around it

#2) Comment on Many lines

: this will be also ignored. To wrap comment in more lines it needs single quote char

: '
this is a comment on many lines
- starts with colon      ATTENTION: no Leading space
- then empty space       ATTENTION: very important!! 
- and then single quote  	

echo \"this will be not printed on std out\"
Careful that meaningful characters should be escaped	
' 

#3) Here doc multiline Comment (no identation allowed)
<< 'A-MULTILINE-COMMENT'
    Everything inside the
    HereDoc body is
    a multiline comment
A-MULTILINE-COMMENT

