# 1. Configure the Terraform Docker Provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

# 2. Pull the Docker image (nginx)
resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = false # Pulls the latest image
}

# 3. Create the Docker container
resource "docker_container" "nginx_container" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = 80
    external = 8080
  }
}