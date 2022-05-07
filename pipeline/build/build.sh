#!/bin/bash

#Copy the new jar to the location

cp -f java-app/target/*.jar jenkins/build/

echo "*************************"
echo "**Building Docker Image**"
echo "*************************"

WORKSPACE=/home/arkady/jenkins/jenkins_home/workspace/pipe-project

cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
