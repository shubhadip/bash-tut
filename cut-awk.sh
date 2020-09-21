#!/bin/bash

# cut single word
# echo "asdsad" | cut -c 1
cut -c 1 /etc/passwd

# cut range of words
cut -c 3-7 /etc/passwd

# cut range from 4th word
cut -c 4- /etc/passwd

# cut range upto  4th word
cut -c -4 /etc/passwd

# cut 1,3,5 th words
# echo "cut 1,3,5 th words"
cut -c 1,3,5 /etc/passwd

# delimiters

# tabs as delimiter
echo -e 'one\ttwo\tthree' | cut -f 1-3

# comma as delimiter
echo 'asasd,asdasd,asdasdasd,' | cut -d ',' -f 3
echo 'asasd,asdasd,asdasdasd,' | cut -d ',' -f 2

# 1,2,3 words delimited by :
cut -d ':' -f 1,2,3 /etc/passwd 

# 1,2,3 words delimited specified output-delimiter :
# cut -d ':' -f 1,3 --output-delimiter=';' /etc/passwd

# 
# grep '^first' people.csv
# grep 'last$' people.csv
# grep -v "^shubh,deep$" people.csv | cut -d ',' -f 1-2


# AWK
# f : fieldseparator
# awk -F ',' '{print $2}' people.csv
# awk -F ',' '{print $1 ", " $2}' people.csv
# awk -F ':' '{print $1 ", " $2}' /etc/passwd 
# awk -F ':' -v OFS=':' '{print $1,$2}' /etc/passwd
# awk -F ':' -v OFS=':' '{print $1 " , " $2}' /etc/passwd
# awk -F ':' -v OFS=':' '{print "UID: "$1 " , " "LOGIN :"$2}' /etc/passwd


# networks

# netstat -nutl | grep -v "^Active" | grep -v "^Proto" | grep -v "^Address"
# lsof -i | grep -v "^Command"
# lsof -i | grep -Ev "^Active|^Test2|^Test3
# lsof -i | grep -Ev "^Active|^Test2|^Test3"
# lsof -i TCP | grep -v "^COMMAND" | awk '{print $9}' | awk -F ':' '{print $NF}'
# netstat -nutl -p tcp | grep -Ev '^Proto|^Active' | awk '{print $5}' | cut -d '.' -f 5
# netstat -nutl -p tcp | grep -Ev '^Proto|^Active' | awk '{print $5}' | awk -F '.' '{print $5}'