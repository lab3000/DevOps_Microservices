#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="xkjn5vzsx9qy2r/udacity_devops_proj4_app"

# Step 2:  
# Authenticate & tag
docker login --username "xkjn5vzsx9qy2r" 
docker image tag udacity_devops_proj4_app $dockerpath 
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath