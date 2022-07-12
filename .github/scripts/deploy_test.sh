#!/bin/bash
echo "Test Shell Script !!"
echo "INTERFACE TO BE DEPLOYED:: $1"
echo "PACKAGE TO BE DEPLOYED:: $2"
echo "Current time is $3"

if [[ $2 == P ]]; then
  echo "DEPLOY TEST_PACKAGE P"
elif [[ $2 == Q ]]; then
  echo "DEPLOY TEST_PACKAGE Q"
else
  echo "ENTER VALID INTERFACE DETAILS"
fi
