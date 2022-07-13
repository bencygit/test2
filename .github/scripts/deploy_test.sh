#!/bin/bash
echo "Test Shell Script !!"
echo "INTERFACE TO BE DEPLOYED :: $1"
echo "PACKAGE TO BE DEPLOYED :: $2"
echo "Current time is :: $3"
echo "Cueent Build Number is :: $4"

if [[ $2 == 1 ]]; then
  echo "DEPLOY TEST_PACKAGE 1"
elif [[ $2 == 1 ]]; then
  echo "DEPLOY TEST_PACKAGE 1"
else
  echo "ENTER VALID INTERFACE DETAILS"
fi
