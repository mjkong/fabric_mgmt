#!/bin/sh

set -e

docker-compose -f docker-compose.yaml down

docker-compose -f docker-compose.yaml up -d
sleep 15
echo -e "\nNetwork setup completed!!\n"
