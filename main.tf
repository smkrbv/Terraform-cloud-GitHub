terraform {
    required_version = "~> 1.10.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.84.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "manojinfra" {
	ami = "ami-0ac4dfaf1c5c0cce9" 
	instance_type = "t2.nano"
}
