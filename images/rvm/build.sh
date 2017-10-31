#!/bin/bash

IMAGE_VERSION=$(grep "Version" Dockerfile | cut -d '=' -f 2 | tr -d '"')
IMAGE_NAME='kkentzo/rvm'

if [[ -z "$IMAGE_VERSION" ]]; then
    echo "Cannot determine docker image version. Exiting."
    exit 1
fi

echo "Building $IMAGE_NAME (version=$IMAGE_VERSION)"
echo

docker build . \
       --tag $IMAGE_NAME:latest \
       --tag $IMAGE_NAME:$IMAGE_VERSION

docker push $IMAGE_NAME:latest
docker push $IMAGE_NAME:$IMAGE_VERSION
