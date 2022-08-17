#!/bin/bash

docker run -d \
           --name u20\
           --security-opt seccomp=unconfined \
           --net=host \
           -e "TERM=xterm-256color" \
           --cap-add=SYS_PTRACE \
           --volume /Users/u1f383/docker_shard_folder/f:/docker_vol\
           -it ubuntu:20.04 bash -l