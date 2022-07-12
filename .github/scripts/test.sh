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

#	env.SAG_HOME = props['sag.home']
#	env.SAG_CI_HOME = "\"" + props['sag.ci.home'] + "\""
#	env.SYS_PROPS = props['deployer.system.properties']

echo "JAVA HOME IS : "props['sag.home']
echo "SAG_HOME IS : "\"" + props['sag.ci.home'] + "\""
echo "SYS_PROPS IS: "props['deployer.system.properties']
