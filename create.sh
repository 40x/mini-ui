#!/bin/bash

NAME="frontend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment and Service

kubectl apply -f ./ui.k8s.yml