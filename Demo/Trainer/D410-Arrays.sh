#! /usr/bin/env bash



########################################
##########  DECLARE AND INIT ARRAY ###############
########################################

	#1) Explicit declaration
	: '
	#declare -a arrayname=(element1 element2 element3) # Attention!! Lower case a for indexed arrays
		# declare -a ARRAY1=(1 2 3 "Stefano")
	'

	#2) Declare and initialize (values are always strings)
	: '
		ARRAY1[0]="1"
		ARRAY1[1]="2"
		ARRAY1[2]="3"
		ARRAY1[3]="Stefano";
	'

	#3) Associative array (keys instead of index)
	: '
		#declare -A ARRAY1 # Attention!! Capital Letter A for associative
		ARRAY1[A]="1"
		ARRAY1[B]="2"
		ARRAY1[C]="3"
		ARRAY1[D]="Stefano";

		echo ${ARRAY1[B]}
	'
	
	

########################################
##########  ACCESS ARRAY ###############
########################################

	#1) Array Length
	#echo ${#ARRAY1[@]}

	#2) access all ${arrayVar[@]}
	#echo ${ARRAY1[@]}


	#3) access by position ${arrayVar[index]}
	#echo ${ARRAY1[3]}

	#4) For.. Each   elements in ${ARRAY1[@]}
	: '
	for ELEMENT in ${ARRAY1[@]}
	do
		echo $ELEMENT
	done
	'

	#5) loop C like
	: '
	for ((i=0; i< ${#ARRAY1[@]}; i++))
	do
		echo ${ARRAY1[i]}
	done
	'
	
########################################
##########  ARRAY OPERATIONS  ##########
########################################


	#1) Length of N-th element
		# echo ${#ARRAY1[2]} 
	
	#2) Extract by offset: ${<arrayVar>[@]:<startIndex>:<offset>}
	#echo ${ARRAY1[@]:3:2} #extract 2 elements starting from 3 position
	
	#3) Search and Replace
	#echo ${ARRAY1[@]/1/30}

	#4) Add elements to existing array
	: '
		ARRAY1=("${ARRAY1[@]}" "5" "6")
		
		echo ${#ARRAY1[@]} # new length
		echo ${ARRAY1[@]} # added data
	'
		
	#5) Remove element (by position) from existing array
	: '
		#echo ${ARRAY1[@]} # before
		#unset ARRAY1[0]
		#echo ${ARRAY1[@]} # after
	'
		
	#6) Remove element by key (associative array)
	: '
		#echo ${ARRAY1[@]} # before
		#unset ARRAY1[A]
		#echo ${ARRAY1[@]} # after
	'
	
#7) Remove element by key (associative array)



: '
read  -p 'Read N variables into array  ' -a ARRAY_FROM_INPUT
echo ${ARRAY_FROM_INPUT[@]}
'
	