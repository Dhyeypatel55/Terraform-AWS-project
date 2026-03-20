terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXTJXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
}
