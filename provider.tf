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
  access_key = "AKIAXXXXXXXXXXXXXXXX"
  secret_key = "Fy1cDQxtJ6GXXXXXXXXXXXXXXXX"
}
