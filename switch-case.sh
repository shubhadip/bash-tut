#!/bin/bash

# this script demonstrates switch case

# if [[ "${1}" = 'start' ]]
# then 
#     echo "starting..."
# elif [[ "${1}" = 'stop' ]]
# then 
#     echo "stopping..."
# elif [[ "${1}" = 'status' ]]
# then
#     echo "status :"
# else
#     echo " supply  a value" >&2 /dev/null
# fi


case "${1}" in
    start)
        echo 'starting '
        ;;
    stop)
        echo 'stoppping '
        ;;
    status|state|--state|--status)
        echo 'status : '
        ;;
    *)
        echo 'supply a valid option' >&2
        exit 1
        ;;
esac