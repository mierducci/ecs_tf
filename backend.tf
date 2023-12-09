terraform {  
  backend "s3" {  
    bucket         = "mytfbackend1234567jhgfd"  
    key            = "backend.tfstate"  
    region         = "us-east-1"  
    encrypt        = false  
    dynamodb_table = "revdynamodb"  
  }  
}