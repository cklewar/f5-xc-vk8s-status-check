terraform {
  required_version = ">= 1.3.0"
  cloud {
    organization = "cklewar"

    workspaces {
      name = "f5-xc-vk8s-status-check-module"
    }
  }

  required_providers {
    f5xc = {
      source  = "volterraedge/volterra"
      version = "> 0.11.16"
    }

    local = ">= 2.2.3"
    null  = ">= 3.1.1"
  }
}
