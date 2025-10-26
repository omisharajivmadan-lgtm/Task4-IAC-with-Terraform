output "container_id" {
  description = "The ID of the provisioned container."
  value       = docker_container.nginx_container.id
}

output "container_name" {
  description = "The name of the provisioned container."
  value       = docker_container.nginx_container.name
}

output "container_external_port" {
  description = "The external port mapping for the container."
  value       = docker_container.nginx_container.ports[0].external
}