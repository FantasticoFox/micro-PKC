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
sudo groupadd docker
sudo usermod -aG docker $USER

# Install Docker Compose
# @see {https://docs.docker.com/compose/cli-command/#install-on-linux}
mkdir -p $USER/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o $USER/.docker/cli-plugins/docker-compose
