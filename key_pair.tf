resource "aws_key_pair" "default" {  
  key_name   = "fake-video-studio"  
  public_key = "your_public_key"  # paste public key attribute
  tags = {  
    "Name" = "evgeniia@uni.minerva.edu"  
  }  
}