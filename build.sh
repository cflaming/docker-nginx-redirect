#!/bin/bash
set -fueo pipefail

IMAGE=registry.prod.factual.com/neutronic-oozie-redirect:latest
docker build -f Dockerfile -t $IMAGE .

docker push $IMAGE
#docker run -it --rm -e SERVER_REDIRECT=neutronic-oozie.k8s.factual.com -p 8888:80 $IMAGE

