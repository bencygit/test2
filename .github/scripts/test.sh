#!/bin/sh
echo "Test Shell Script !!"
echo "INTERFACE TO BE DEPLOYED $1"
echo "PACKAGE TO BE DEPLOYED $4"
echo "Current time is $2"

if [[ $3 == 1 ]]; then
  echo "Execute Function-1"
elif [[ $3 == 2 ]]; then
  echo "Execute Function-2"
else
  echo "Execute Function-3"
fi
