terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 3.76.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.69.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.5"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
    http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      version = "~> 2.1"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

# resource "aws_instance" "app_server" {
#   ami           = "ami-052efd3df9dad4825"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web01"
#   }
# }
