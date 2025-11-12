#!/bin/bash



IMAGE_NAME="portfolio"


CONTAINER_NAME="portfolio"



PORT_MAPPING="4321:4321"


set -e

echo " Starting deployment..."


echo " git pull"
git pull origin main


echo "Building Docker image: $IMAGE_NAME..."
docker build -t $IMAGE_NAME .

echo "Stopping old container: $CONTAINER_NAME..."
docker stop $CONTAINER_NAME || true

echo "Removing old container: $CONTAINER_NAME..."
docker rm $CONTAINER_NAME || true


echo " Deploying new container: $CONTAINER_NAME..."
docker run -d -p $PORT_MAPPING --name $CONTAINER_NAME $IMAGE_NAME


echo " pruning old images..."
docker image prune -f

echo "done! $CONTAINER_NAME is live."