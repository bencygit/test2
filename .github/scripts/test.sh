#!/bin/sh
echo "Test Shell Script !!"
echo "INTERFACE TO BE DEPLOYED $1"
echo "PACKAGE TO BE DEPLOYED $4"
echo "Current time is $2"

if [[ $1 == TEST_INTERFACE1 ]]; then
  echo "DEPLOY TEST_INTERFACE1"
elif [[ $1 == TEST_INTERFACE2 ]]; then
  echo "DEPLOY TEST_INTERFACE2"
else
  echo "ENTER VALID INTERFACE DETAILS"
fi
