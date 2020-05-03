terraform {
  required_version = "~> 0.12.24"
  backend "s3" {
    bucket = "pptenshi-minecraft-server-on-ec2"
    region = "ap-northeast-1"
    profile = "ppt"
    key = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile = var.profile
  region  = var.region
}
