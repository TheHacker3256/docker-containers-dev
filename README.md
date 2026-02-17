# ROS Docker Containers

This repository contains Docker configurations and scripts for building and managing ROS (Robot Operating System) containers.

## Overview

This project simplifies the process of creating isolated ROS development environments using Docker. It provides pre-configured Dockerfiles to generate Docker containers with various ROS distributions and dependencies.

## Usage
- install binfmt for building containers for platforms that are different to the host platform
```
docker run --privileged --rm tonistiigi/binfmt --install all
```
- Building for arm (note to build for arm you have to run the binfmt container)
```
docker buildx build --platform linux/arm64 -t <ImageName>:<Tag> .
```
- building for amd64
```
docker buildx build --platform linux/amd64 -t <ImageName>:<Tag> .
```

## Contributing

Contributions are welcome. Please follow best practices for Docker and ROS development.