# Minimal docker image for running Minecraft PE server

- Built on [baseimage-docker](http://phusion.github.io/baseimage-docker/)
- Expects a [data volume container](https://docs.docker.com/userguide/dockervolumes/#creating-and-mounting-a-data-volume-container) mounted at /pocketmine

Example:

    ## Create a new data volume container for /pocketmine
    docker run --name pocketmine_data -v /pocketmine busybox /bin/sh
    
    ## Grab latest image, mount data volume, and publish minecraft pe server ports
    docker pull akursar/pocketmine
    docker run -d -p 19132:19132 -p 19132:19132/udp --volumes-from pocketmine_data akursar/pocketmine
