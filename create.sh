#!/bin/bash

NAME="frontend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl apply -f ./ui.deployment.yml -e COMMIT_SHA=IMAGE_VERSION

# Create Service

kubectl apply -f ./ui.service.yml