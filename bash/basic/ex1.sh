#!/bin/bash

VAR=1

let VAR++
let VAR++
echo "var: $VAR"

exit 256 
let VAR++
let VAR++
echo "var: $VAR"
exit 1

let VAR++
let VAR++
echo "var: $VAR"

STATUS=$?; echo "EXIT STATUS = $STATUS"
