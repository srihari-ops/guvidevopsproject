#!/bin/bash

# Stop and remove old container if exists
docker stop guvi-prod-container || true
docker rm guvi-prod-container || true

# Pull the latest image from Docker Hub
docker pull srihariops/guvidevopsproject-prod:latest

# Run the container with port mapping
docker run -d \
  --name guvi-prod-container \
  -p 80:80 \
  srihariops/guvidevopsproject-prod:latest

