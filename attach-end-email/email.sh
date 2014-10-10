#!/bin/bash
# Description: Open email client with supplied file as attachment
# Author: (c) Shin Sterneck, shin at sterneck dot asia
#
if [[ $1 == "" ]]; then echo "$0 <filename>" ; exit 1 ; elif [[ $1 =~ ^/ ]]; then FN=$1 ; else FN="`pwd`/$1"; fi
CMD="/usr/bin/thunderbird -compose \"attachment='file://$FN'\""
eval $CMD > /dev/null 2>&1 &
