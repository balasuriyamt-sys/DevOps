terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }
}

provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "demo-terraform-state-eks"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
