variable "project_id" {
  type        = string
  description = "The ID of the GCP project"
  
  validation {
    condition     = length(var.project_id) > 0
    error_message = "The project_id value must not be empty."
  }
}

variable "region" {
  type        = string
  description = "The GCP region to deploy resources to"
  default     = "us-central1"
}

variable "bucket_name" {
  type        = string
  description = "The name of the auto-expiring bucket to create"
}

variable "bucket_location" {
  type        = string
  description = "The location for the storage buckets"
  default     = "US"
}

variable "gke_machine_type" {
  type        = string
  description = "Machine type for GKE nodes"
  default     = "e2-medium"
}

variable "gke_node_count" {
  type        = number
  description = "Number of nodes in the GKE node pool"
  default     = 1
}