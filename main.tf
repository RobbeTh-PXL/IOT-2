terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.13.0"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_package" "helloworld" {
  name         = "ghcr.io/robbeth-pxl/iot-2/dockerpkg-ubuntu:sha-d502aa0"
  keep_locally = false
}

resource "docker_container" "helloworldx" {
  image = docker_package.helloworld.sha-d502aa0
  name  = "Hello World"
}
