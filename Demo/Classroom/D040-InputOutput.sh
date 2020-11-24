#! /usr/bin/env bash


####################################
#########BASIC INPUT/OUTPUT ##############

    
   

#1) write on terminal 
: '
    echo "this will be printed on std out"
'
#2) read from terminal 
: '
     echo -n "Enter a name:"
     read NAME
     echo "Your name is:" $NAME
'



#########################################
#########STANDARD IN, OUT, ERR ###################
: '
    # Every command on terminal has 3 files connected (standard input, standard output, standard error)
    # those files are not stored on disk but:
    #   standard input - by default connected to keyboard
    #   standard output - by default connected to display (terminal)
    #   standard error - by default connected to display (terminal)

    #1) this is connected to standard output (terminal)
    echo "this will be printed on std out"

    #2) redirect standard output to a file symbol >
    echo "this will be saved on a file " > fileEchoTest.txt

    #3) redirect standard output to a file (append) symbol >>
    echo "this will be a new added line on a file " >> fileEchoTest.txt

    #4) redirect standard output to a file symbol (before redirect symbol you can use 0=input, 1=output, 2=error)

    echo "this will be a new added line on a file " 1> fileEchoTest2.txt
    ls -l /bin/usr > fileError.txt  # this will show error on stdout
    ls -l /bin/usr 2> fileError.txt # Now is not seen anymore on stdout, but is written only in file
'
    
    


#########################################
#########STANDARD IN ###################
: '
    #1) read from  standard input (keyboard)
    read NAME
    echo $NAME

    #2) read from standard input (keyboard) and redirect to file
    cat > inputSavedOnFile.txt # All lines will be saved in file until CTRL+D is pressed

    #3) read file into command 
    # Syntax:    command < fileName
    # Some examples to try one by one:


        # grep "some" < example.txt
        # echo $(<example.txt)   

     #4) read file into var
     FILE_CONTENT=$(<example.txt)
     echo $FILE_CONTENT

    #5) read one line from file into var
    read -r rowVarName < example.txt
    echo $rowVarName
'

    #1) read from  standard input (keyboard)
: '
    read NAME
    echo $NAME
'

    #2) read from standard input (keyboard) and redirect to file
     # cat > inputSavedOnFile.txt # All lines will be saved in file until CTRL+D is pressed

    #3) read file into command 
: '
    # Syntax:    command < fileName
    # Some examples to try one by one:

        # grep "some" < example.txt
'    
 

     #4) read file into var
: '
    FILE_CONTENT=$(<example.txt)
    echo $FILE_CONTENT
'

    #5) read one line from file into var
: '   
    read -r rowVarName < example.txt
    echo $rowVarName
'

#6 read -p (prompt) $"<string with escape interpreted> "
:'
read -p $'Insert data on new line \n' DATA 
echo $DATA
'



# Read more here:
# https://www.gnu.org/software/bash/manual/html_node/ANSI_002dC-Quoting.html#ANSI_002dC-Quoting




