terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.16.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "postgres" {
  name = "postgres:latest"
}

resource "docker_container" "nginx" {
  name  = "nginx_container"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = 80
  }
}

resource "docker_container" "postgres" {
  name  = "postgres_container"
  image = docker_image.postgres.name
  env = [
    "POSTGRES_USER=guacamole_user",
    "POSTGRES_PASSWORD=ChooseYourOwnPasswordHere1234",
    "POSTGRES_DB=guacamole_db"
  ]
  ports {
    internal = 5432
    external = 5432
  }
}