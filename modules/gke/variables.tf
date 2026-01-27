variable "project_id" {
  type        = string
  description = "The ID of the GCP project"
}

variable "region" {
  type        = string
  description = "The GCP region to deploy resources to"
}

variable "cluster_name" {
  type        = string
  description = "The name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "node_pool_name" {
  type        = string
  description = "The name of the node pool"
  default     = "my-node-pool"
}

variable "machine_type" {
  type        = string
  description = "Machine type for GKE nodes"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the GKE node pool"
}
