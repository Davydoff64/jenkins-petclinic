#!/bin/bash

echo "****************"
echo "**Building jar**"
echo "****************"

WORKSPACE=/home/arkady/jenkins/jenkins_home/workspace/pipe-project

docker run --rm -v ~/jenkins/pipeline/Test-mysql-petclinic:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.5.4-alpine "$@"

