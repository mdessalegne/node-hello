#!/bin/bash

# Stop the existing Docker container if it's running
docker stop my-docker-container || true

# Remove the existing Docker container if it exists
docker rm my-docker-container || true

# Pull the latest Docker image from Amazon ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 647757222309.dkr.ecr.us-east-1.amazonaws.com
docker pull 647757222309.dkr.ecr.us-east-1.amazonaws.com/nodeapp-md:latest

# Create a directory for the Docker application if it doesn't exist
mkdir -p /home/ec2-user/docker-app
