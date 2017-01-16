#!/bin/bash
xhost +local:docker
docker run  -v $HOME/Documents:/home/libreoffice/Documents:rw \
            -v $HOME/Downloads:/home/libreoffice/Downloads:rw \
	    -v /opt/workspaces/projects:/projects:rw \
	    -v /opt/tmp:/host_tmp:rw \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            -e uid=$(id -u) \
            -e gid=$(id -g) \
            -e DISPLAY=unix$DISPLAY \
            -e GDK_SCALE \
            -e GDK_DPI_SCALE \
            --name libreoffice \
            vintec/libreoffice:v5.2.4
