terraform {

  required_version = ">= 0.13"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    local = {
      source = "hashicorp/local"
    }
  }

  backend "remote" {
    organization = "datapunks"
    workspaces {
      name = "deploy-iac-do"
    }
  }
}

provider "kubernetes" {

}