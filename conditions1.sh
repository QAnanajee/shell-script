#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greaterthan 10"
else
    echo "Giiven number $NUMBER is lessthan 10"
fi
