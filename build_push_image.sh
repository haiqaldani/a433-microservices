#!/bin/bash

# Pengaturan user dan repository untuk GitHub Container Registry
USERNAME_GITHUB="haiqaldani"
IMAGE_NAME="order-service"
IMAGE_VERSION="latest"

# Login ke GitHub Container Registry (GitHub Packages)
echo -e "Login ke GitHub Container Registry"
docker login ghcr.io -u "$USERNAME_GITHUB" -p $PAT_GITHUB

# Build image Docker backend
echo -e "Build Image"
docker build -t ghcr.io/$USERNAME_GITHUB/$IMAGE_NAME:$IMAGE_VERSION .

# Push image ke GitHub Container Registry
echo -e "Push Image ke Github"
docker push ghcr.io/$USERNAME_GITHUB/$IMAGE_NAME:$IMAGE_VERSION