#!/bin/bash

# Install DNF utilities
sudo dnf install -y dnf-utils

# Add the Docker repository
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker and disable the Kubernetes repo if present
sudo dnf install -y docker-ce docker-ce-cli containerd.io --disablerepo=kubernetes

# Enable Docker to start at boot
sudo systemctl enable docker

# Start Docker service
sudo systemctl start docker

