#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="vectormyke/myke-devops-ml-ms-kubelets"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myke-devops-ml-ms-kubelets\
    --image=$dockerpath\
    --port=80 --labels app=myke-devops-ml-ms-kubelets

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward myke-devops-ml-ms-kubelets 8000:80