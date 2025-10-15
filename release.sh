#!/bin/bash

# Build the Docker image
docker build -t hub.docker.com/sagi/postgres17e -f Dockerfile .

# Login Docker Hub
docker login

# Tag the image for Docker Hub
docker tag hub.docker.com/sagi/postgres17e sagicuhk/postgres17e:latest

# Push the image to Docker Hub
docker push sagicuhk/postgres17e:latest