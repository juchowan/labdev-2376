terraform {
  required_providers {
    fmc = {
      source  = "CiscoDevNet/fmc"
      version = "~>2.0.0"
    }
  }
}

module "fmc" {
  source            = "git::https://github.com/netascode/terraform-fmc-nac-fmc?ref=dev"
  manage_deployment = var.manage_deployment
}

provider "fmc" {
}