#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=khalilelf441/ml-microservice-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=khalilelf441
docker tag ml-microservice-api $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath