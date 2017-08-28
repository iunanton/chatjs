#!/bin/bash

docker build -t nodejs .
docker run --detach \
	--name=nodejs \
	--publish-all \
	--restart=always \
	nodejs > /dev/null
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nodejs
docker port nodejs
