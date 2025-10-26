variable "image_name" {
  description = "The name of the Docker image to pull."
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "The desired name for the running container."
  type        = string
  default     = "terraform-nginx-demo"
}