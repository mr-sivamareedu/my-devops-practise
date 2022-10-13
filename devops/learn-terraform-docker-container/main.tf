terraform {
    required_providers {
    docker = {
      version = "~> 2.13.0"
      source  = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "sivamareedu/mrsp-nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx-pod" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    ip       = var.TF_VAR_ip_addr
    internal = 80
    external = 8888
  }
}

resource "docker_container" "nginx-pod2" {
  image = docker_image.nginx.latest
  name  = "tutorial2"
  ports {
    ip       = var.TF_VAR_ip_addr
    internal = 80
    external = 8998
  }
}

/*
output "resource_ip" {
  value = var.TF_VAR_ip_addr
}
*/