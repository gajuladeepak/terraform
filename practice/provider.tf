terraform {
    required_providers {
        aws = {
            source = "hasicorp/aws"
            version = "5.66.0"

        }
    }
}


provider "aws" {
   region = "us-east-1" 
}