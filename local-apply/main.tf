terraform {
  backend "remote" {
    organization = "LEARNING01-ORG"

    workspaces {
      name = "dev"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "app_server1" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "web-server-0"
  }
}
