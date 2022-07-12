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

props="./config/jenkins-dev.properties"	
env.JAVA_HOME = $java.home
env.SAG_HOME = $sag.ci.home
env.SYS_PROPS = $deployer.system.properties 

echo "JAVA HOME IS : "$java.home
echo "SAG_HOME IS : "$sag.ci.home
echo "SYS_PROPS IS: "$deployer.system.properties
