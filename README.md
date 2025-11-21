Pop!_OS Docker Base Image (24.04)
=================================

This image extends the Ubuntu 24.04 base image in a simple way by adding the
Pop!_OS repos and upgrading the packages to Pop!_OS which are customized.

Use this image for testing scenarios where Ubuntu is not enough and you need a
Pop!_OS environment.

## Running the public image:

    docker run --rm -ti ghcr.io/aldpuzz/pop_os:24.04

## Locally building the image:

    docker build . -t pop_os:24.04

## Running the local image:

    docker run --rm -ti pop_os:24.04

