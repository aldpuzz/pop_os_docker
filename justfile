build:
  docker build . -t pop_os:24.04

container: build
  docker run --rm -ti pop_os:24.04
