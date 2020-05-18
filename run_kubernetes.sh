#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=irtaza06/predictionapp:test1
podname=predictionapp
podpath=pods/$podname

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $podname --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

#Step 4
# Descibe pod
kubectl describe $podpath

#waiting for deployment
sleep 2m

# Step 5:
# Forward the container port to a host
kubectl port-forward $podpath 5000:80

echo "FINISHED!"
