terraform {
  backend "gcs" {
    bucket = "k8s-rollout-demo-terraform-state"
    prefix = "/agones-tic-tac-toe-be-infra"
  }
}

provider "google" {
  project = local.project_id
  region  = local.region
}
