#!/bin/bash
if [[ $1 ]]
then
    echo -e "$1\c" |tr -s ' ' 1 | wc -m
elif [ $# == 1 ]
     then
	 echo "0"
else
    echo -e ''
fi


