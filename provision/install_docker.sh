#!/usr/bin/env bash
#
# Script based on {@link https://dutta-arup22.medium.com/install-docker-on-aws-ubuntu-in-5-minutes-ee100e71bf}
# with modifications for installation of Docker Compose V2.

set -euo pipefail

# Install Docker
# @see {https://docs.docker.com/engine/install/}
sudo apt-get update
sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"

sudo apt-get update
sudo apt-get install -y docker-ce
getent group docker || sudo groupadd docker
sudo usermod -aG docker "$USER"

# Explicitly start the Docker daemon
# TODO this is probably not necessary on Ubuntu, but necessary on WSL; and so
# should be tested, just for curiosity's sake.
sudo service docker start

# Install Docker Compose
sudo apt-get install -y docker-compose-plugin
