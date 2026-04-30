module "observability_and_gitops" {
  source = "../modules/kubernetes/helm"

  argocd_namespace     = "argocd"
  monitoring_namespace = "monitoring"

  depends_on = [module.gke]
}

# Deployment flow based on architecture:
# GitHub Actions -> Docker Hub image push -> Argo CD sync -> GKE(app-cluster)
module "app_delivery" {
  source = "../modules/kubernetes/workloads"

  argocd_namespace        = "argocd"
  app_namespace           = "app"
  app_name                = "app-cluster-workload"
  git_repo_url            = "https://github.com/5a6io/Side-Project.git"
  git_target_revision     = "main"
  git_path                = "k8s"
  docker_image_repository = "your-dockerhub-user/your-app"
  docker_image_tag        = "latest"

  depends_on = [module.observability_and_gitops]
}
