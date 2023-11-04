# Skyblieu Lab

My personal lab, space for me to mess around and test new things.

# Setup

* Create new VM
* Install Ubuntu 22.04 LTS
* Install [Docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
* Add user to docker group: `sudo usermod -aG docker $USER`
* Install `make`: `sudo apt install make -y`
* Clone this repo: `git clone git@github.com:CorvoLieu/blieusky-lab.git``

# Usage

* Run caddy: `make`
* Stop caddy: `make stop`
* Run jellyfin: `make jellyfin`
* Stop jellyfin: `make jellyfin-stop`
* Run ddclient: `make ddc`
* Stop ddclient: `make ddc-stop`