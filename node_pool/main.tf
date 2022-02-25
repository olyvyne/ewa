
resource "digitalocean_kubernetes_node_pool" "bar" {
  cluster_id = digitalocean_kubernetes_cluster.cluster_name.id

  name       = var.name
  size       = var.node_pool_size
  node_count = var.node_pool_count
  tags       = var.node_pool_tags

  labels = {
    service  = "backend"
    priority = "high"
  }


}