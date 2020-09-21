#!/bin/bash

# This script creates a new user on local system
# you must supply usernames as args to script


if [[ "${#}" -lt 1 ]]
then
    echo "USAGE. ${0} USER_NAME [COMMENT]..." >&2
    exit 1
fi

# for USERNAME in "${@}"
# do
#     echo "${USERNAME}"
#     PASSWORD=$(date +%s${RANDOM} | md5 | head -c48)
#     echo "password: ${PASSWORD}"
# done 


USERNAME="${1}"

shift 
COMMENT="${a}"

# generate PASSWORD 
PASSWORD=$(date +%s${RANDOM} | md5 | head -c48)

# create user
useradd -c "${COMMENT}" -m ${USERNAME}

# check user created successfully
if [[ "${?}" -ne 0 ]]
then 
    echo "user creation failed" >&2
    exit 1
fi

# set password
echo "${PASSWORD}" | passwd --stdin ${USERNAME}


# check user password set successfully
if [[ "${?}" -eq 0 ]]
then
    echo "password added successfully"
else 
    echo " password add failed" &> /dev/null
    exit 1
fi

# force password change on first login
passwd -e ${USERNAME}


echo 
echo "username : ${USERNAME}"
echo 
echo "password : ${PASSWORD}"
echo 
echo "hostnamet : ${HOSTNAME}"
