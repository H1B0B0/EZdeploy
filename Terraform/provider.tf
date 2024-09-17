terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.11.0"
    }
  }

  backend "s3" {
    region = "eu-west-3"
    bucket = "terraform-state-ezdeploy"
    key    = "terraform.tfstate"
  }
}
