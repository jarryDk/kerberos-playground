#!/bin/bash

printf "\n\033[32mBuild image\033[39m\n"

podman build . -f Dockerfile -t jarrydk/kdc-server