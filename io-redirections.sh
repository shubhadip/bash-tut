#!/bin/bash

# Scripts demonstrates I/O Redirections

# standardInput
# standardOutput
# standardError


# Redirects standardOutput to a File

FILE="/tmp/data"

head -n1 /etc/passwd > ${FILE}

# adds username to data file
id -un > ${FILE}

# adds UID i.e 500 to data file
echo ${UID} > ${FILE}


# Redirects STDIN to a program

read LINE < ${FILE}

echo "${LINE} : printed from /tmp/data"

# sudo passwd --stdin username < passwordFile


# Redirect stdout to a file, overwriting a file

head -n10 /etc/passwd > ${FILE}
echo 
echo "contentd of ${FILE}"
cat $FILE


# Appending instead of overwriting
# add another line to a file 

BPASSSWORD=$(date +%s${RANDOM}${RANDOM} | md5 | head -c43)

echo ${BPASSSWORD} >> ${FILE}
echo ${BPASSSWORD} >> ${FILE}
echo ${BPASSSWORD} >> ${FILE}
echo ${BPASSSWORD} >> ${FILE}

cat $FILE

# file Descriptors
# FD0 - STDIN
# FD1 - STDOUT
# FD2 - STDERR


# multiple input files

head -n3 /etc/passwd /etc/hosts

# head -n1 /etc/passwd /etc/hosts > head.out 2> head.err

# Redirect STDIN using File Descriptor(FD 0)

read LINE 0< ${FILE}

echo 
echo " LINE contains ${LINE}"


# Redirect STDOUT using File Descriptor(FD 1)
head -n3 /etc/passwd >1 ${FILE}

echo 
echo " Contents of ${FILE}"


# Redirect STDERR using File Descriptor(FD 2)

ERR_FILE="/tmp/data_err"

head -n3 /etc/passwd /fakefile 2> ${ERR_FILE}

cat ${ERR_FILE}

# Redirect STDOUT && STDERR using File 

head -n3 /etc/passwd /fakefile &> ${FILE}
echo "Contents of ${FILE}"
cat ${FILE}


# Redirect STDOUT && STDERR using Pipe
# echo ""
# head -n3 /etc/passwd /fakefile |& cat -n


#send output to standard error

echo " THIS is STDERR" >&2

# discarding: error NULL device 
head -n3 /etc/passwd /fakefile  2> /dev/null

# discarding:  for all standard output to null 
head -n3 /etc/passwd /fakefile  &2> /dev/null