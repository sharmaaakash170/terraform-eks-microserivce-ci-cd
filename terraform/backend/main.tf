terraform {
  backend "s3" {
    bucket = "terraform-eks-microservices-ci-cd-bucket"
    key = "eks/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt = true
  }
}