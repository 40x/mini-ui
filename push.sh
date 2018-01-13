#!/bin/bash

NAME="frontend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl run $NAME --image=$NAME:$IMAGE_VERSION --port=80 --image-pull-policy=IfNotPresent

# Create Service

kubectl expose deployment $NAME --type=LoadBalancer