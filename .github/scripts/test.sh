#!/bin/bash
echo "Test Shell Script !!"
echo "INTERFACE TO BE BUILD:: $1"
echo "PACKAGE TO BE BUILD:: $2"
echo "Current time is $3"

if [[ $1 == 1 ]]; then
  echo "BUILD TEST_INTERFACE1"
elif [[ $1 == 2 ]]; then
  echo "BUILD TEST_INTERFACE2"
else
  echo "ENTER VALID INTERFACE DETAILS"
fi
