#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
export dockerpath="pktiwari19/mlpredictor:v1.0"

# Run the Docker Hub container with kubernetes
kubectl create deploy microservicesapp --image=$dockerpath

# List kubernetes pods
kubectl get deployment,pods

# Step 4:
# Forward the container port to a host
