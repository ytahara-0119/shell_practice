#!/bin/bash

echo -n Your age:
read AGE

#[ $AGE -lt 20 ] && (echo You are not allowed to see the secret; exit 1) || echo  Welcome
[ $AGE -lt 20 ] && { echo You are not allowed to see the secret; exit 1;} || echo  Welcome

echo Secret is that there is no secret
