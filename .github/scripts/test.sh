#!/bin/bash

#// read config properties for the environment
props="./config/jenkins-dev.properties"	

#// bash variable’s name may contain only digits, letters, and underscores. Therefore we need to choose the underscore ‘_’:
#// We read key and value separately, with the equal sign as a separator. 
#// Next, tr translates dots to underscores in the property name. Finally, eval defines a bash variable with a new name.

if [ -f "$props" ]
then
  echo "$props found."
while IFS='=' read -r key value
  do
    key=$(echo $key | tr '.' '_')
    eval ${key}=\${value}
  done < "$props"
  
echo "User Id (db.test.user) =         " ${db_test_user}
echo "user password (db.test.passwd) = " ${db_test_passwd}  
echo "JAVA HOME IS = " ${java_home}
echo "SAG_HOME IS = " ${sag_ci_home}
echo "SYS_PROPS IS = " ${deployer_system_properties}

#/// setup ANT variables
env_JAVA_HOME = ${java_home}
env_SAG_HOME = ${sag_ci_home}
env_SYS_PROPS = ${deployer_system_properties} 

else
echo "$props not found."
fi

#// Testing input parameters
echo "Test Build Shell Script !!"
echo "INTERFACE TO BE BUILD=$1"
echo "PACKAGE TO BE BUILD=$2"
echo "Current time is=$3"
echo "Parameter 4 is=$4"
echo "Parameter 5 (Server Type)"=$5
echo "Parameter 5 (Server Name)"=$6

#// validating conditional statemets from input parametere
#// $1- interface, $2- package, $5- server type, $6-server name

if [ $1 == 1 ] && [ $2 == 1 ] && [ $5 == 1 ] && [ $6 == 1 ]; then
  echo "BUILD TEST_INTERFACE1"
elif [ $1 == 2 ] && [ $2 == 2 ] && [ $5 == 2 ] && [ $6 == 2 ]; then
  echo "BUILD TEST_INTERFACE2"
else
  echo "ENTER VALID INTERFACE DETAILS"
fi
