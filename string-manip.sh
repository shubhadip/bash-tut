#!/bin/bash

# generate random numbers
PASSWORD=${RANDOM}
echo ${PASSWORD}

# long Password
LPASSWORD=${RANDOM}${RANDOM}${RANDOM}
echo "Longpassword:  ${LPASSWORD}"


# Time as Password
TPASSWORD=$(date +%s)
echo "Timepassword: ${TPASSWORD}"

# nanoseconds as password
NPASSWORD=$(date +%s%N)
echo "Nanopassword: ${NPASSWORD}"


# head -n numberoflines text
# head -c1 numberoflines text
# head -c2 numberoflines text
# tail -n numberoflines text

#chaining
# better password
echo date +%s | md5 | head -c32

echo "\n"

# more better password
BPASSSWORD=$(date +%s${RANDOM}${RANDOM} | md5 | head -c43)
echo "${BPASSSWORD}"

# more more better password
# SP_CHARACTERS="!@#$%^&*()_-+="
# fold shuffle head
# echo ${SP_CHARACTERS} | fold -w1 | shuf | head -c1

