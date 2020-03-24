#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage: $0 <Template File>"
	exit $LINENO
fi

cfTemp=$1

if [ ! -f "$cfTemp" ]; then
	echo "Cannot find file $cfTemp"
	exit $LINENO
fi

aws cloudformation create-stack --stack-name JenkinsStack01 --template-body file://$cfTemp --parameters file:///Users/arthurniu/jenkins/tomcat/tomcatexample/JenkinsEC2Parameters.json
