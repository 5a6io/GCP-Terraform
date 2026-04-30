variable "argocd_namespace" {
  type    = string
  default = "argocd"
}

variable "monitoring_namespace" {
  type    = string
  default = "monitoring"
}

variable "argocd_chart_version" {
  type    = string
  default = "7.8.6"
}

variable "grafana_chart_version" {
  type    = string
  default = "8.9.0"
}

variable "prometheus_chart_version" {
  type    = string
  default = "27.10.0"
}
