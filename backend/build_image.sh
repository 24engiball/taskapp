#!/bin/bash
docker rmi taskapi:0.0.3
docker container run --rm -v $(pwd):/backend/src -w /src composer update
docker image build -t taskapi .
docker image tag taskapi:latest engiball/taskapi:0.0.3
docker push engiball/taskapi:0.0.3