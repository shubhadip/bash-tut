#!/bin/bash

# Display the UID and username of user executing this script
# Display if user is root or not

# Display UID 
echo "your UID id ${UID}"

# Display Username
USERNAME=$(id -un)
USER_NAME=`id -un`

echo "your username is ${USERNAME}"
echo "your username is ${USER_NAME}"
echo "my username is $(whoami)"


# Display if user is root or not

if [[ "${UID}" -eq 0 ]]
then
    echo 'I am root user'
else
    echo 'I am not root user'
fi

# Display if else user is root or not

TEMP='test'

if [[ "${UID}" -eq 0 ]]
then
    echo 'I am root user'
elif [[ "${TEMP}" -eq "test" ]]
then
    echo 'I am temp user'
else
    echo 'I am not root user'
fi

