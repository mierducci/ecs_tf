variable "aws_region" {  
  type        = string  
  description = "Region to use"  
  default     = "us-east-1"  
}  
variable "aws_access_key_id" {  
  type        = string  
}  
variable "aws_secret_access_key" {  
  type        = string  
}  
variable "aws_zones" {  
  type        = list(string)  
  description = "List of availability zones to use"  
  default     = ["us-east-1a", "us-east-1b"]  
}  
variable "aws_ecr_repo" {  
  type        = string  
}