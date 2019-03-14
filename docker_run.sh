#!/bin/bash
docker_sound="--device /dev/snd --group-add audio"
docker_video="-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/dri --group-add video"

docker run -it --rm --user $(id -u) ${docker_video} ${docker_sound} $@
