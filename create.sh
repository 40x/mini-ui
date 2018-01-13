#!/bin/bash

NAME="frontend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl apply -f ./ui.deployment.yml

# Create Service

kubectl apply -f ./ui.service.yml