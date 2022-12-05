terraform {
  backend "local" {
    path = "./lab1.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.2.0"
    }
  }
}
