#!/bin/bash

export ACR_SERVER=reto2.azurecr.io
export ACR_USERNAME=reto2
export ACR_PASSWORD=N9UgEPq34N7tl4apM/OfO6r4OsMSrBXm

function build_image {
    artifact=$2
    service_path=$1/$artifact

    tag=$ACR_SERVER/$artifact:latest

    echo -----------------------------------------------------------------------
    echo Building $tag ...
    echo

    docker build --rm --tag $tag $service_path

    docker image prune --force

    echo
}


# Construir imagenes
build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/cloud config-server

build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/data-api data-customer-v1
build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/data-api data-product-v1
build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/data-api data-improvement-v1

build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/business-api business-customer-v1
build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/business-api business-product-v1
build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/business-api business-improvement-v1

build_image /c/home/bcp/bootcamp/repo-reto2/05.implementation/backend/channel-api channel-improvement-wizard-v1


