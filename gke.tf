module "gke" {
  source = "git::https://github.com/iamdejan/terraform-k8s-module?ref=e6f6a12"

  region     = local.region
  project_id = local.project_id
}
