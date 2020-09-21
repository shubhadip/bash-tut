#!/bin/bash

# this script demonstrates use of function 


log() {
    local VERBOSE="${1}"
    shift
    
    local MESSAGE="${@}"
    local MESSAGE1="${1}"
    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo "${MESSAGE} you are a log function! "
    fi

    logger -t functions.sh "${MESSAGE}"
}

# readonly VERBOSE='true'
log  'Hello !'

log 'true' 'Hello1 !'
