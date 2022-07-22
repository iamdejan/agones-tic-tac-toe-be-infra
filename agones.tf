module "agones" {
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/helm3/?ref=v1.24.0"

  agones_version         = ""
  values_file            = ""
  feature_gates          = ""
  host                   = module.gke.kubernetes_cluster_host
  token                  = module.gke.project_access_token
  cluster_ca_certificate = module.gke.cluster_ca_certificate
  log_level              = "info"
}
