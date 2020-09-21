#!/bin/bash

# use of shift and while loop


# Display first 3 parameters 

echo "Paramter 1 : ${1}"
echo "Paramter 2 : ${2}"
echo "Paramter 3 : ${3}"



# loop through poistional paramters 
# ${@}: args in array from 1st characters
# ${#}: number of args 
# ${*}: all args in a single text

while [[ "${@}" -gt 0 ]]
do 
    echo "Number of parmas : ${#}"
    echo "param 1 : ${1}"
    echo "param 2 : ${2}"
    echo "param 3 : ${3}"
    echo 
    shift
done

