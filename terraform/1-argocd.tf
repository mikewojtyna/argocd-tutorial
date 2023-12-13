resource "helm_release" "argocd" {
  repository = "https://argoproj.github.io/argo-helm"
  chart = "argo-cd"
  name  = "argocd"
  namespace = "argocd"
  create_namespace = true
  version = "3.35.4"
  values = [file("values/argocd.yaml")]
}