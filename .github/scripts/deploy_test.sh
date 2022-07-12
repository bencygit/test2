#!/bin/bash
echo "Test Shell Script !!"
echo "INTERFACE TO BE DEPLOYED:: $1"
echo "PACKAGE TO BE DEPLOYED:: $2"
echo "Current time is $3"

if [[ $1 == 1 ]]; then
  echo "DEPLOY TEST_INTERFACE1"
elif [[ $1 == 2 ]]; then
  echo "DEPLOY TEST_INTERFACE2"
else
  echo "ENTER VALID INTERFACE DETAILS"
fi
