#!bin/bash
docker stop $(docker ps --format "{{.ID}}")
docker rmi $(docker images --format "{{.ID}}" --filter "dangling=true" | head -1)
docker stop $(docker ps --filter "ancestor=charat/go-template:latest" -q)
docker rm $(docker ps --filter "ancestor=charat/go-template:latest" -aq)
docker pull charat/go-template:latest
docker run -p 8000:80 -d charat/go-template:latest
curl -X POST -H "Authorization: Bearer ${tokenLine}" -F "message=PROD new version http://gouat.ddns.net:8000" https://notify-api.line.me/api/notify
