#!/bin/bash
#Description: bash tool for validating input from user (only numbers and letters)

validstr ()
{
    valid="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

    if [ "$valid" = "$1" ]; then
        return 0;
    else
        return 1;
    fi
}

read inputstr

if ! validstr "$inputstr" ; then
    echo "not only letter ans numbers!" >&2
    exit 1
else
    echo "correct!"
fi
exit 0