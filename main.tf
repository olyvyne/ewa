
resource "digitalocean_kubernetes_cluster" "cluster" {
  name         = var.cluster_name
  region       = var.do_region
  version      = var.cluster_version
  auto_upgrade = true
  tags         = var.cluster_tags

  node_pool {
    name       = "${var.cluster_name}-default"
    size       = var.cluster_default_node_size
    node_count = var.cluster_default_node_count
    tags       = var.cluster_default_node_tags
  }
}

// provider "digitalocean"

// module "node_pool" {
//   source          = "./node_pool"
//   name            = "Nodepool1"
//   node_pool_size  = "s-2vcpu-4gb"
//   node_pool_count = "2"
//   node_pool_tags  = ""
// }
