# Docker Installation

## Ubuntu

There are various install guides for Docker on Ubuntu 20+
See for example:

* https://linuxhint.com/install_configure_docker_ubuntu/

This comes down to:

```
sudo apt-get update
sudo apt-get update
sudo apt-get upgrade
sudo apt install docker.io
sudo systemctl enable --now docker 
# to disable: sudo systemctl disable --now docker
sudo usermod -a -G docker <your username>
# Check version
docker --version

# Also need Docker Compose
sudo apt-get install docker-compose
sudo docker run hello-world

# Restart virtual machine
# Unpack workshop .zip download (e.g. in your home) from 
# https://github.com/geopython/geopython-workshop/releases
# Unpacks in e.g. ~/geopython-workshop-master

cd ~/geopython-workshop-master/workshop
./geopython-workshop-ctl.sh start
./geopython-workshop-ctl.sh url

# Note the URL with token, copy/paste into browser

```
