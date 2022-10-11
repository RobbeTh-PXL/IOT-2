terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.22.0"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "hello" {
  name         = "ghcr.io/robbeth-pxl/iot-2/dockerpkg-ubuntu:latest"
  keep_locally = false
}

resource "docker_container" "helloworld" {
  image = docker_image.hello.image_id
  name  = "hello-world"
  must_run = false
}
