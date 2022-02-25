variable "name" {
  description = "Nodepool name"

}

variable "node_pool_size" {
  description = "The size of the droplets in the default node pool in the cluster"
  default     = "s-2vcpu-4gb"

}

variable "node_pool_count" {
  description = "The number of nodes in the default node pool"
}

variable "node_pool_tags" {
  description = "Specific tags for the node pool "
  default     = []
}

variable "kubeconfig_path" {
  description = "The path to save the kubeconfig to"
  default     = "~/.kube/config"
}

