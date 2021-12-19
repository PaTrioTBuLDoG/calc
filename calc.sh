#!/bin/bash
#calc.sh

if [ -n "$1" ] && [ -f "$1" ] && [ ! -n "$2" ]; then
  let RES_1=`cat $1`
  echo $RES_1
elif [ -n "$2" ] && [ -f "$2" ]; then
  let RES_1=`cat $1`
  let RES_2=`cat $2`
    if [ $RES_1 -gt $RES_2 ]; then
        echo $RES_1
    else
        echo $RES_2
    fi
else
    echo "No parameters!"
fi
