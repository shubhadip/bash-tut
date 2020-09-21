#!/bin/bash

#positional paramters

echo "First Paramter: ${0}"

echo "second paramter: ${1}"

# display path and filename of the script
echo " you used $(dirname ${0}) as the path to the $(basename ${0})"

# Tell users how many args they passed in 
NUMBER_OF_ARGS="${#}"

echo "You used ${NUMBER_OF_ARGS} argument(s) on the command line"

# Make sure they at least supply one argument

if [[ "${#}" -lt 1 ]]
then
    echo "${0} USERNAME [USERNAME]...." 
    exit 1
fi


# For loops for arguments
for USERNAME in "${@}"
do 
echo "username: ${USERNAME} password : ${RANDOM}$(date +%s| md5 | head -c32)"
done

# not to use * as it treats everthing as 1 parameter
for USERNAME in "${*}"
do 
echo "username: ${USERNAME} password : ${RANDOM}$(date +%s| md5 | head -c32)"
done


