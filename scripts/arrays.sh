#!/bin/bash

#define an array
declare -a colors

# get value from keyboard input.
read -a colors

array_size=${#colors[@]}

#dump array elements
index=0

while [ "$index" -lt "$array_size" ]
do
	echo ${colors[$index]}
	let "index = $index + 1"
	# or ((index++))

	#if want to output in same line, use
	# echo -n "${colors[$index]} "
done

# a for loop version
for i in "${colors[@]}"
do
	echo "$i"
done

# length of colors[0]
${#colors}

# the simplest way
echo ${colors[@]}

#remove 2nd element of array
unset colors[1]

echo ${colors[@]}

#Delete entire array
unset colors

# An empty array vs an array with empty elements
array1=( '' '' ) # array with empty element
array2=(  ) # empty array
array3=(   ) # array with spaces? No! empty array

echo "length of array1:${#array1[@]}"
echo "length of array2:${#array2[@]}"
echo "length of array3:${#array3[@]}"

# Adding an element to an array from back
array1=( "${array1[@]}" "new1" )
# or 
array1[${#array1[*]}]="new2"


# copy an array. Note the quotings
# But !!!!!
# If array1[0]=1 array1[1]=null array2[2]=2
# array2[0]=1 array[1]=2
# So you can remove arrays' holes with this method.
array_with_holes=( [0]=0 [2]=2 )
array2=( ${array_with_holes[@]} )
echo array2_0 ${array2[0]}
echo array2_1 ${array2[1]}
echo array2_2 ${array2[2]}
# If you want to copy array with holes? No way.
# So, if you want to do some operation on array elements by loop
# Safe way is first copy it to another array
# get it length, than do operations with for loop

# read array element from a to b
array3=( ${array1[@]:1:3} )
echo "element from 1 to 3 of array 1 ${array3[@]}"
echo "array size of array 1 ${#array1[@]}"
echo "array 1 dump ${array1[@]}"

# remove empty array element without for loop
array2=( ${array1[@]/''/ } )
echo "array_size of array 1 after remove empty elment ${#array2[@]}"

# replace all matching wildcarded string
# like reg_* to register_*
array3=( ${array1[@]//new/new_} )
echo "array 1 dump after replace ${array3[@]}"

# new1 new2 -> 1 2
array3=( ${array1[@]#*new} )
echo "array 1 dump after replace ${array3[@]}"

# another way delete empty
array3=( ${array1[@]#''} )
echo "array 1 dump after replace ${array3[@]}"




