variable "argocd_namespace" {
  type    = string
  default = "argocd"
}

variable "app_namespace" {
  type    = string
  default = "app"
}

variable "app_name" {
  type    = string
  default = "app"
}

variable "git_repo_url" {
  type        = string
  description = "Git repository URL that stores Kubernetes manifests/Helm chart"
}

variable "git_target_revision" {
  type    = string
  default = "main"
}

variable "git_path" {
  type        = string
  description = "Path in Git repository used by Argo CD"
}

variable "docker_image_repository" {
  type        = string
  description = "Docker Hub image repository (e.g., username/app)"
}

variable "docker_image_tag" {
  type        = string
  description = "Docker image tag"
  default     = "latest"
}
