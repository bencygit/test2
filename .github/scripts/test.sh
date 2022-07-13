#!/bin/bash

props="./config/jenkins-dev.properties"	

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
env.JAVA_HOME = ${java_home}
env.SAG_HOME = ${sag_ci_home}
env.SYS_PROPS = ${deployer_system_properties} 

else
echo "$props not found."
fi

echo "Test Build Shell Script !!"
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
