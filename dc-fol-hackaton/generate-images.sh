#!/bin/bash

export CR_SERVER=hackaton-group1
export PATH_IMPLEMENTATION=/home/bcp/bootcamp/hackaton


function build_image {
    service_path=$1
    artifact=$2
    
    tag=$CR_SERVER/$artifact:latest

    echo -----------------------------------------------------------------------
    echo Building $tag ...
    echo

    docker build --rm --tag $tag $service_path

    docker image prune --force

    echo
}


# Construir imagenes
build_image $PATH_IMPLEMENTATION/hackaton-config-server config-server
build_image $PATH_IMPLEMENTATION/hackaton-backend-data data-virtualcard-v1
build_image $PATH_IMPLEMENTATION/hackaton-backend-business business-virtualcard-v1
build_image $PATH_IMPLEMENTATION/hackaton-backend-channel channel-virtualcard-app-v1
