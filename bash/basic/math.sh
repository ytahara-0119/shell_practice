#!/bin/bash
NUMBER=5

# do the number + 5
# --- let --
let RESULT_1=NUMBER+5
echo Result from let : $RESULT_1

# --- (( )) ---
let RESULT_2=$(( NUMBER + 5 ))
echo "Result from (( )) : $RESULT_2"

# --- [ ] ---
let RESULT_3=$[ NUMBER + 5 ]
echo Result from [ ] : $RESULT_3

# --- expr ---
let RESULT_4=$(expr $NUMBER + 5)
echo Result from expr : $RESULT_4

# --- bc --- NUMBER * 1.9
RESULT_5=`echo "$NUMBER * 1.9" | bc`
echo Result from bc : $RESULT_5
