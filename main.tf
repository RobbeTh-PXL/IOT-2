terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.22.0"
    }
  }

  # The configuration for the `remote` backend.
  backend "remote" {
   # The name of your Terraform Cloud organization.
   organization = "TheTestingOrg"

   # The name of the Terraform Cloud workspace to store Terraform state files in.
   workspaces {
     name = "IOT-2"
    }
  }
}

provider "docker" {
#  host    = "npipe:////.//pipe//docker_engine"
  host = "unix:///var/run/docker.sock"
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
