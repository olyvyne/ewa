terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
provider "kubernetes" {
  host  = resource.digitalocean_kubernetes_cluster.k8s.endpoint
  token = resource.digitalocean_kubernetes_cluster.k8s.kube_config[0].token
  cluster_ca_certificate = base64decode(
    resource.digitalocean_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  )
}
provider "digitalocean" {
  token = var.do_token
}


