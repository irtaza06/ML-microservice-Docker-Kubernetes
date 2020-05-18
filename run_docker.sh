#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag='predictionapp:test1'
# Step 2: 
# List docker images
docker images --all
# Step 3: 
# Run flask app
#Expose port 80 from the Docker container on port 5000 of my laptop
docker run -p 5000:80 predictionapp:test1
