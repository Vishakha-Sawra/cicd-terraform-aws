terraform {
  backend "s3" {
    bucket = "my-terraform-cicd-bucket"
    key    = "state"
    region = "us-east-1"
    dynamodb_table = "my-terraform-cicd-db-table"
  }
}
