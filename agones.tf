module "agones" {
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/helm3/?ref=main"

  agones_version         = ""
  values_file            = ""
  feature_gates          = ""
  host                   = module.gke.outputs.kubernetes_cluster_host
  token                  = module.gke.outputs.project_access_token
  cluster_ca_certificate = module.gke.outputs.cluster_ca_certificate
  log_level              = "info"
}
