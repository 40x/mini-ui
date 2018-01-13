#!/bin/bash

NAME="frontend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl create -f ./ui.deployment.yml

# Create Service

kubectl create -f ./ui.service.yml