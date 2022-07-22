module "gke" {
  source = "git::https://github.com/iamdejan/terraform-k8s-module?ref=0a66ec0"

  region     = local.region
  project_id = local.project_id
}
