output "argocd_release" {
  value = helm_release.argocd.name
}

output "prometheus_release" {
  value = helm_release.prometheus.name
}

output "grafana_release" {
  value = helm_release.grafana.name
}
