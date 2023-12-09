terraform {  
  backend "s3" {  
    bucket         = "fake-video-studio777"  
    key            = "shared/terraform.tfstate"  
    region         = "us-east-1"  
    encrypt        = false  
    dynamodb_table = "fake-video-studio-db"  
  }  
}   