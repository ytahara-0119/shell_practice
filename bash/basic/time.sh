#!/bin/bash

# start time measurement from here
START=$(date +%s)
echo START: $START
CURRENT_DIRECTORY=$(pwd)
sleep 2 #sleep 2 seconds
END=$(date +%s)
echo END: $END

# end time measurement
DIFFERENCE=$(( END - START ))
echo DIFFERENCE: $DIFFERENCE
