module "gke" {
  source = "./modules/gke"

  project_id   = var.project_id
  region       = var.region
  machine_type = var.gke_machine_type
  node_count   = var.gke_node_count
}