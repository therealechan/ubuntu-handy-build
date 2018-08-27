#!/usr/bin/env bash

apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get -y -qq --no-install-recommends install docker-ce=18.06.1~ce~3-0~ubuntu


# If you have nvidia-docker 1.0 installed: we need to remove it and all existing GPU containers
# docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
# apt-get purge -y nvidia-docker

# # Add the package repositories
# curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
#   apt-key add -
# distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
# curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
#   tee /etc/apt/sources.list.d/nvidia-docker.list
# apt-get update

# # Install nvidia-docker2 and reload the Docker daemon configuration
# apt-get install -y nvidia-docker2
# pkill -SIGHUP dockerd

# Test nvidia-smi with the latest official CUDA image
# docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi


