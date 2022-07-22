module "gke" {
  source = "git::https://github.com/iamdejan/terraform-k8s-module?ref=v0.1.2"

  region     = local.region
  project_id = local.project_id
}
