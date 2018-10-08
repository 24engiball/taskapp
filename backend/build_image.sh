#!/bin/bash
docker rmi taskapi:0.0.3
docker container run --rm -v $(pwd):/src -w /src composer update
docker image build -t taskapi .
docker image tag taskapi:latest engiball/taskapi:0.0.2
docker push engiball/taskapi:0.0.3