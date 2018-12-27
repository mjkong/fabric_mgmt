#!/bin/sh

set -ev

docker-compose -f docker-compose.yaml kill && docker-compose -f docker-compose.yaml down
if [ "$(docker ps -aq)" ]; then
	docker rm -f $(docker ps -aq)
fi

# remove chaincode docker images
if [ "$(docker images dev-* -q)" ]; then
	docker rmi $(docker images dev-* -q)
fi
