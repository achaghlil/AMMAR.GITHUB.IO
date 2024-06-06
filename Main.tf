terraform {
  #Terraform version 
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "cloudquickpocsbackend.tfstate"
    key = "quickloudpocsbackend.tfstate"
    region = "eu-north-1"
  }
}

provider "random" {}

## Provider
provider "aws" {
    region = "eu-north-1"
}

## Provider eu-north-1
provider "aws" {
  alias = "central"
  region = "eu-north-1"
}