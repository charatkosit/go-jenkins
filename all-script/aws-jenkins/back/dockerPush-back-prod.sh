#!/bin/bash
release=`docker images go-back-prod --format {{.Tag}} | head -1`

docker image tag go-back-prod:$release go-back-prod:latest
docker image tag go-back-prod:$release charat/go-back-prod:$release 
docker image tag go-back-prod:latest charat/go-back-prod:latest
docker image push --all-tags charat/go-back-prod

docker images
docker rmi $(docker images go-back-prod --format "{{.ID}}") -f
#docker rmi -f $(docker images --format "{{.ID}}" --filter "dangling=true")
docker images