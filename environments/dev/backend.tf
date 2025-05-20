terraform {
  backend "s3" {
    bucket         = "terraform-eks-microserivce-ci-cd-s3-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table" 
  }
}
