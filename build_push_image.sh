#!/bin/bash

# Membangun Docker image dari Dockerfile di direktori saat ini, dengan tag v1
docker build -t item-app:v1 .

# Login ke GitHub Container Registry menggunakan Personal Access Token (PAT)
echo $PAT_GITHUB | docker login ghcr.io -u haiqaldani--password-stdin

# Memberi tag image sesuai format GitHub Container Registry
docker tag item-app:v1 ghcr.io/haiqaldani/item-app:v1

# Push image ke GitHub Container Registry
docker push ghcr.io/haiqaldani/item-app:v1
