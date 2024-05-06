#!/bin/bash

COURSE="Learning AWS DEVOPS by SIVA"

echo "Before calling other script, course is: $COURSE"

echo "Process ID of current script: $$"

#./other-script.sh

source ./other-script.sh

echo "After calling other script, course is: $COURSE"