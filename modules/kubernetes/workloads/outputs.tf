output "application_name" {
  value = kubernetes_manifest.argocd_application.manifest.metadata.name
}

output "application_namespace" {
  value = kubernetes_manifest.argocd_application.manifest.metadata.namespace
}
