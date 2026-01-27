output "auto_expire_bucket_name" {
  description = "Name of the auto-expiring storage bucket"
  value       = google_storage_bucket.auto_expire.name
}

output "terraform_state_bucket_name" {
  description = "Name of the terraform state storage bucket"
  value       = google_storage_bucket.terraform_state.name
}

output "gke_cluster_endpoint" {
  description = "The endpoint for the GKE cluster"
  value       = module.gke.cluster_endpoint
}
