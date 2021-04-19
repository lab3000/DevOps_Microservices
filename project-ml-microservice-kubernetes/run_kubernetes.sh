#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="xkjn5vzsx9qy2r/udacity_devops_proj4_app"

# Step 2
# Run the Docker Hub container with kubernetes
  kubectl run k8udacity\
    --image=$dockerpath\
    --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward k8udacity 8000:80
