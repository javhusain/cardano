terraform {
backend "remote" {
  organization = "yadayada"
  workspaces {
     name = "cardano"
  }
}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.32.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "relay_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
