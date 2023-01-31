terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
    organization = "DEL-ORG"

    workspaces {
      name = "dev"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
