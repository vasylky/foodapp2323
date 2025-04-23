variable "resource_group_name" {
  default = "rg-webapp"
}

variable "location" {
  default = "East US 2"
}

variable "app_name" {
  default = "pruvit123"
}

variable "dockerhub_username" {
  default = "qqvky"
}

variable "dockerhub_password" {
  description = "DockerHub password"
  sensitive   = true
}
variable "docker_image" {
  default = "samplewebapiaspnetcore-webapi:latest"
}
