variable "do_token" {
  description = "Your digital ocean API token"
  default     = "ef5c0177afc75c5808c4817994936104d5a902416eb8eb6a3502e5fbfeb2b693"
}

variable "do_region" {
  description = "The digital ocean region you'd like to deploy the cluster in"
  default     = "nyc1"
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  default     = "koyohut-cluster"
}

variable "cluster_version" {
  description = "The version of Kubernetes to install in the cluster"
  default     = "1.21.9-do.0"
}

variable "cluster_tags" {
  description = "A list of optional tags to add to the cluster"
  default     = []
}

variable "cluster_default_node_size" {
  description = "The size of the droplets in the default node pool in the cluster"
  default     = "s-2vcpu-4gb"

}

variable "cluster_default_node_count" {
  description = "The number of nodes in the default node pool in the cluster"
  default     = 2
}

variable "cluster_default_node_tags" {
  description = "Specific tags for the node pool in the cluster - the tags from the cluster are also applied automatically"
  default     = []
}

variable "kubeconfig_path" {
  description = "The path to save the kubeconfig to"
  default     = "~/.kube/config"
}

