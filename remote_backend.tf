terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rp-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
