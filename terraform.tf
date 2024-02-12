terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    archive = {
      version = "~>2.4"
      source  = "hashicorp/archive"
    }

    local = {
      version = "~>2.4"
      source  = "hashicorp/local"
    }

    tls = {
      version = "~> 4.0"
      source  = "hashicorp/tls"
    }
  }
}
