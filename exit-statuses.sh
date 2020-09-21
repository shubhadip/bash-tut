#!/bin/bash

#display UID
echo "your uid is ${UID}"

# UID to test for 1000
UID_TEST='502'

if [[ "${UID}" -ne "${UID_TEST}" ]]
then
    echo "${UID} doesnt match" >&2
    # exit 1
fi


#display username

USERNAME=$(id -un)

# recent exit status ${?}

if [[ "${?}" -ne 0 ]]
then
    echo "id command did not execute successfully"  >&2
    # exit 1
fi

echo "username is $USERNAME"  &> /dev/null


#string matches

if [[ "$USERNAME" = "shubhadip-lido" ]] #-ne,-eq,==,!= can be used 
then
    echo "username didn't match"  >&2
fi