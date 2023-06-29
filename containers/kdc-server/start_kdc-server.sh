#!/bin/bash

source ./config.conf

printf "\033[32m----------------------------------------------------\033[39m\n"
printf "\033[32mKerborus server starting                            \033[39m\n"
printf "\033[32m    container name is $KDC_SERVER_HOST              \033[39m\n"
printf "\033[32m    internal network $PODMAN_NETWORK                \033[39m\n"
printf "\033[32m----------------------------------------------------\033[39m\n"

podman run \
    -d \
    --name $KDC_SERVER_HOST \
    --network=$PODMAN_NETWORK \
    -e REALM=JARRY:DK \
    -e KADMIN_PASSWORD=playground \
    -p 10749:749 \
    -p 1088:88/udp \
    jarrydk/kdc-server
