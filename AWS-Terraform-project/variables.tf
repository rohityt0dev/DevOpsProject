# AWS Region
variable "region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

# VPC CIDR
variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

# Subnet CIDR
variable "subnet_cidr" {
  description = "CIDR block for public subnet"
  default     = "10.0.1.0/24"
}

# Availability Zone
variable "availability_zone" {
  description = "Availability zone"
  default     = "ap-south-1a"
}

# EC2 Instance Type
variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

# AMI ID (Amazon Linux - Mumbai)
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0f5ee92e2d63afc18"
}

# Key Pair Name (IMPORTANT for SSH)
variable "key_name" {
  description = "EC2 Key Pair name"
  default     = "key"
}

