#!/bin/bash
#stop container before

#remove image <none> and  go-back
docker images
docker rmi $(docker images go-back-sit --format "{{.ID}}") -f
docker rmi -f $(docker images --format "{{.ID}}" --filter "dangling=true")
docker images

#pull and run
docker pull charat/go-back-sit:latest
docker run -p 3000:3000 -d charat/go-back-sit:latest