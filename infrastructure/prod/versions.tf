terraform {
  required_version = ">= 0.13.1"
  
  backend "s3" {
    bucket = "terraform"
    key    = "state"
    region = "eu-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 2.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.1"
    }
  }
}

