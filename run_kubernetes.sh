#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=motdde/cloud-devops-capstone

# Run the Docker Hub container with kubernetes
kubectl run capstone-devops --image=$dockerpath

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward capstone-devops 8000:80
