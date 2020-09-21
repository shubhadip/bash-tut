#!/bin/bash

#create account in local system.
# you will be prompted for account and pwd.


#ask for username
read "?Enter username: ?" USERNAME

#ask for realname
read "?Enter Real Name of User : ?" FULLNAME

#ask for password
read "?Enter Password of User : ?" PASSWORD

#create user

useradd -c "${FULLNAME}" -m "${USERNAME}"


#set password for user

echo ${PASSWORD} | passwd --stdin ${USERNAME}

#change password when user logs in first time
passwd -e ${USERNAME}