#!/bin/bash
USERNAME_GITHUB="haiqaldani"
IMAGE_NAME="item-app"
IMAGE_VERSION="v1"


# Membangun Docker image dari Dockerfile di direktori saat ini, dengan tag v1
echo -e "Build a new Docker image:"
docker build -t $IMAGE_NAME:$IMAGE_VERSION .

#List Docker Images
echo -e "List of Docker images:"
docker images

# Memberi tag image sesuai format GitHub Container Registry

echo -e "Giving a tag"
docker tag $IMAGE_NAME:$IMAGE_VERSION ghcr.io/$USERNAME_GITHUB/$IMAGE_NAME:$IMAGE_VERSION
docker images

# Login ke GitHub Container Registry menggunakan Personal Access Token (PAT)
echo -e "Login into Github"
echo $PAT_GITHUB | docker login ghcr.io -u $USERNAME_GITHUB --password-stdin

# Push image ke GitHub Container Registry
echo -e "Publishing Image to Github"
docker push ghcr.io/$USERNAME_GITHUB/$IMAGE_NAME:$IMAGE_VERSION
